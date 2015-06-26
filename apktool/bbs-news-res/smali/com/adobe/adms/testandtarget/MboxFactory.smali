.class public Lcom/adobe/adms/testandtarget/MboxFactory;
.super Ljava/lang/Object;
.source "MboxFactory.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final COOKIE_EXPIRES_KEY_SUFFIX:Ljava/lang/String; = "_Expires"

.field private static final COOKIE_VALUE_KEY_SUFFIX:Ljava/lang/String; = "_Value"

.field private static final DEFAULT_DISABLE_DURATION:J = 0xdbba0L

.field private static final LOG_TAG:Ljava/lang/String; = "MboxFactory"

.field private static final MBOX_DEFAULT:Ljava/lang/String; = "/images/log.gif"

.field private static final MBOX_DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "image/gif"

.field private static final MBOX_SERVER_PROTOCOL:Ljava/lang/String; = "http://"

.field private static final MBOX_SERVER_SUFFIX:Ljava/lang/String; = ".tt.omtrdc.net"

.field private static final OFFER_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final PREFERENCES_DISABLE_KEY:Ljava/lang/String; = "DisableTime"

.field private static final PREFERENCES_PREFIX:Ljava/lang/String; = "TestAndTarget"

.field protected static final USER_AGENT:Ljava/lang/String; = "Apache-HttpClient (Test&Target Android SDK)"


# instance fields
.field private clientCode:Ljava/lang/String;

.field private cookies:Ljava/lang/String;

.field private disableDuration:J

.field private factoryEnabled:Z

.field private mboxList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/adms/testandtarget/Mbox;",
            ">;"
        }
    .end annotation
.end field

.field private mboxServerURL:Ljava/lang/String;

.field private parentContext:Landroid/content/Context;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "parentContext"
    .parameter "clientCode"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->mboxList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 128
    iput-object p1, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->parentContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->clientCode:Ljava/lang/String;

    .line 130
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->disableDuration:J

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->factoryEnabled:Z

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tt.omtrdc.net"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->mboxServerURL:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TestAndTarget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->preferences:Landroid/content/SharedPreferences;

    .line 135
    const-string v0, "mboxPC"

    invoke-direct {p0, v0}, Lcom/adobe/adms/testandtarget/MboxFactory;->loadCookie(Ljava/lang/String;)V

    .line 136
    const-string v0, "mboxSession"

    invoke-direct {p0, v0}, Lcom/adobe/adms/testandtarget/MboxFactory;->loadCookie(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method private deleteCookie(Ljava/lang/String;)V
    .locals 3
    .parameter "cookieName"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 355
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Expires"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    return-void
.end method

.method private loadCookie(Ljava/lang/String;)V
    .locals 10
    .parameter "cookieName"

    .prologue
    const-wide/16 v8, 0x0

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 365
    .local v4, now:J
    iget-object v3, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->preferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_Expires"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 367
    .local v0, cookieExpires:J
    cmp-long v3, v0, v8

    if-lez v3, :cond_0

    .line 368
    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 369
    iget-object v3, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->preferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_Value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, cookieValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->cookies:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->cookies:Ljava/lang/String;

    .line 380
    .end local v2           #cookieValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 374
    .restart local v2       #cookieValue:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->cookies:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "; "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->cookies:Ljava/lang/String;

    goto :goto_0

    .line 377
    .end local v2           #cookieValue:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/adobe/adms/testandtarget/MboxFactory;->deleteCookie(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveCookies(Lorg/apache/http/client/CookieStore;)V
    .locals 5
    .parameter "cookieStore"

    .prologue
    .line 386
    invoke-interface {p1}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 387
    .local v2, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    .line 388
    .local v0, c:Lorg/apache/http/cookie/Cookie;
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, cookieName:Ljava/lang/String;
    const-string v4, "mboxSession"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mboxPC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/adobe/adms/testandtarget/MboxFactory;->storeCookie(Ljava/lang/String;Lorg/apache/http/cookie/Cookie;)V

    goto :goto_0

    .line 393
    .end local v0           #c:Lorg/apache/http/cookie/Cookie;
    .end local v1           #cookieName:Ljava/lang/String;
    :cond_2
    const-string v4, "mboxPC"

    invoke-direct {p0, v4}, Lcom/adobe/adms/testandtarget/MboxFactory;->loadCookie(Ljava/lang/String;)V

    .line 394
    const-string v4, "mboxSession"

    invoke-direct {p0, v4}, Lcom/adobe/adms/testandtarget/MboxFactory;->loadCookie(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private storeCookie(Ljava/lang/String;Lorg/apache/http/cookie/Cookie;)V
    .locals 4
    .parameter "cookieName"
    .parameter "cookie"

    .prologue
    .line 402
    iget-object v1, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 403
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Expires"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 406
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    return-void
.end method


# virtual methods
.method public clearCookies()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->cookies:Ljava/lang/String;

    .line 146
    const-string v0, "mboxPC"

    invoke-direct {p0, v0}, Lcom/adobe/adms/testandtarget/MboxFactory;->deleteCookie(Ljava/lang/String;)V

    .line 147
    const-string v0, "mboxSession"

    invoke-direct {p0, v0}, Lcom/adobe/adms/testandtarget/MboxFactory;->deleteCookie(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public create(Ljava/lang/String;)Lcom/adobe/adms/testandtarget/Mbox;
    .locals 2
    .parameter "mboxName"

    .prologue
    .line 164
    new-instance v0, Lcom/adobe/adms/testandtarget/Mbox;

    invoke-direct {v0, p0, p1}, Lcom/adobe/adms/testandtarget/Mbox;-><init>(Lcom/adobe/adms/testandtarget/MboxFactory;Ljava/lang/String;)V

    .line 165
    .local v0, newMbox:Lcom/adobe/adms/testandtarget/Mbox;
    iget-object v1, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->mboxList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-object v0
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 174
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->factoryEnabled:Z

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 176
    .local v2, now:J
    iget-object v1, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "DisableTime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method

.method protected encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "content"

    .prologue
    .line 249
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 252
    .end local p1
    :goto_0
    return-object p1

    .line 250
    .restart local p1
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "MboxFactory"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getBaseRequestURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->mboxServerURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->clientCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ubox/raw?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCookies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->cookies:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized getMboxResponse(Lcom/adobe/adms/testandtarget/Mbox;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "mbox"
    .parameter "url"

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 287
    .local v6, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 288
    .local v5, getRequest:Lorg/apache/http/client/methods/HttpGet;
    const-string v12, "User-Agent"

    const-string v13, "Apache-HttpClient (Test&Target Android SDK)"

    invoke-virtual {v5, v12, v13}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v12, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->cookies:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 290
    const-string v12, "Cookie"

    iget-object v13, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->cookies:Ljava/lang/String;

    invoke-virtual {v5, v12, v13}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    :try_start_1
    invoke-virtual {v6, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 294
    .local v9, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 295
    .local v10, statusCode:I
    const-string v12, "Content-Type"

    invoke-interface {v9, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, contentType:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/adobe/adms/testandtarget/MboxFactory;->saveCookies(Lorg/apache/http/client/CookieStore;)V

    .line 298
    const/16 v12, 0xc8

    if-ne v10, v12, :cond_1

    const-string v12, "image/gif"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    if-eqz v12, :cond_2

    .line 300
    :cond_1
    const/4 v12, 0x0

    .line 314
    .end local v2           #contentType:Ljava/lang/String;
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #statusCode:I
    :goto_0
    monitor-exit p0

    return-object v12

    .line 302
    .restart local v2       #contentType:Ljava/lang/String;
    .restart local v9       #response:Lorg/apache/http/HttpResponse;
    .restart local v10       #statusCode:I
    :cond_2
    :try_start_2
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 303
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 304
    .local v7, inputStream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 305
    .local v1, content:Ljava/io/ByteArrayOutputStream;
    const/16 v12, 0x200

    new-array v11, v12, [B

    .line 306
    .local v11, streamBuffer:[B
    const/4 v8, 0x0

    .line 307
    .local v8, readBytes:I
    :goto_1
    invoke-virtual {v7, v11}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_3

    .line 308
    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 312
    .end local v1           #content:Ljava/io/ByteArrayOutputStream;
    .end local v2           #contentType:Ljava/lang/String;
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v8           #readBytes:I
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #statusCode:I
    .end local v11           #streamBuffer:[B
    :catch_0
    move-exception v3

    .line 313
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    const-string v12, "MboxFactory"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ERROR: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    const/4 v12, 0x0

    goto :goto_0

    .line 310
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #content:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #contentType:Ljava/lang/String;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v7       #inputStream:Ljava/io/InputStream;
    .restart local v8       #readBytes:I
    .restart local v9       #response:Lorg/apache/http/HttpResponse;
    .restart local v10       #statusCode:I
    .restart local v11       #streamBuffer:[B
    :cond_3
    :try_start_4
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 286
    .end local v1           #content:Ljava/io/ByteArrayOutputStream;
    .end local v2           #contentType:Ljava/lang/String;
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v8           #readBytes:I
    .end local v9           #response:Lorg/apache/http/HttpResponse;
    .end local v10           #statusCode:I
    .end local v11           #streamBuffer:[B
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12
.end method

.method protected declared-synchronized isEnabled()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 330
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->preferences:Landroid/content/SharedPreferences;

    if-nez v6, :cond_0

    .line 331
    iget-object v6, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->parentContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TestAndTarget"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->clientCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->preferences:Landroid/content/SharedPreferences;

    .line 334
    :cond_0
    iget-object v6, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "DisableTime"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 335
    .local v0, disableTimestamp:J
    cmp-long v6, v0, v10

    if-lez v6, :cond_1

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 337
    .local v4, now:J
    sub-long v2, v4, v0

    .line 338
    .local v2, elapsed:J
    iget-wide v6, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->disableDuration:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 339
    const-string v6, "MboxFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->disableDuration:J

    sub-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms until MboxFactory is re-enabled."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->factoryEnabled:Z

    .line 346
    .end local v2           #elapsed:J
    .end local v4           #now:J
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->factoryEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v6

    .line 343
    .restart local v2       #elapsed:J
    .restart local v4       #now:J
    :cond_2
    const/4 v6, 0x1

    :try_start_1
    iput-boolean v6, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->factoryEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    .end local v0           #disableTimestamp:J
    .end local v2           #elapsed:J
    .end local v4           #now:J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized recordEvent(Ljava/lang/String;)V
    .locals 8
    .parameter "mboxName"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, timeStamp:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/adms/testandtarget/MboxFactory;->getBaseRequestURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mbox="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/adobe/adms/testandtarget/MboxFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&mboxDefault="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/images/log.gif"

    invoke-virtual {p0, v6}, Lcom/adobe/adms/testandtarget/MboxFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&mboxTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, requestURL:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 192
    .local v2, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 193
    .local v1, getRequest:Lorg/apache/http/client/methods/HttpGet;
    const-string v5, "User-Agent"

    const-string v6, "Apache-HttpClient (Test&Target Android SDK)"

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v5, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->cookies:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 195
    const-string v5, "Cookie"

    iget-object v6, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->cookies:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 199
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/adobe/adms/testandtarget/MboxFactory;->saveCookies(Lorg/apache/http/client/CookieStore;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    const-string v5, "MboxFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 188
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v1           #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #requestURL:Ljava/lang/String;
    .end local v4           #timeStamp:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 202
    .restart local v1       #getRequest:Lorg/apache/http/client/methods/HttpGet;
    .restart local v2       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #requestURL:Ljava/lang/String;
    .restart local v4       #timeStamp:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 203
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "MboxFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EXCEPTION: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public setDisableDuration(J)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 217
    iput-wide p1, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->disableDuration:J

    .line 218
    return-void
.end method

.method public setMboxServer(Ljava/lang/String;)V
    .locals 2
    .parameter "mboxServerURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 232
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    iput-object p1, p0, Lcom/adobe/adms/testandtarget/MboxFactory;->mboxServerURL:Ljava/lang/String;

    .line 239
    return-void

    .line 236
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ERROR: mbox server URL must begin with \"http://\" or \"https://\"."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

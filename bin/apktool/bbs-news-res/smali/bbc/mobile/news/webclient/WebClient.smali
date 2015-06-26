.class public Lbbc/mobile/news/webclient/WebClient;
.super Ljava/lang/Object;
.source "WebClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/webclient/WebClient$OnProgressListener;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_BLOCKSIZE:I = 0x1000

.field public static final NO_CACHE:I = 0x0

.field public static final PERMANENT_CACHE:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field public static final TEMPORARY_CACHE:I = 0x2


# instance fields
.field private final mCacheType:I

.field private mData:[B

.field private final mFile:Ljava/io/File;

.field private final mUid:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lbbc/mobile/news/webclient/WebClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "url"
    .parameter "cacheType"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/webclient/WebClient;->mData:[B

    .line 93
    iput-object p1, p0, Lbbc/mobile/news/webclient/WebClient;->mUrl:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lbbc/mobile/news/webclient/WebClient;->urlToUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/webclient/WebClient;->mUid:Ljava/lang/String;

    .line 95
    iput p2, p0, Lbbc/mobile/news/webclient/WebClient;->mCacheType:I

    .line 96
    new-instance v0, Ljava/io/File;

    iget v1, p0, Lbbc/mobile/news/webclient/WebClient;->mCacheType:I

    invoke-static {v1}, Lbbc/mobile/news/webclient/WebClient;->getCacheDir(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/webclient/WebClient;->mUid:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lbbc/mobile/news/webclient/WebClient;->mFile:Ljava/io/File;

    .line 97
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final existsInCache(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    const/4 v0, 0x0

    .line 470
    if-eqz p0, :cond_0

    .line 471
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 474
    :cond_0
    return v0
.end method

.method public static final getCacheDir(I)Ljava/lang/String;
    .locals 1
    .parameter "cacheType"

    .prologue
    .line 444
    packed-switch p0, :pswitch_data_0

    .line 451
    sget-object v0, Lbbc/mobile/news/helper/NewsServiceConstants;->IMAGE_CACHE_DIR:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v0}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    .line 446
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 448
    :pswitch_1
    sget-object v0, Lbbc/mobile/news/helper/NewsServiceConstants;->DATA_CACHE_DIR:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v0}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getHTTPClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 11

    .prologue
    const/16 v7, 0x1388

    .line 322
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 324
    .local v3, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 325
    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 326
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 327
    .local v4, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 328
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x1bb

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 329
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 330
    .local v0, cm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 332
    .local v2, httpAnyClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    sget-object v7, Lbbc/mobile/news/helper/NewsServiceConstants;->USER_AGENT:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v7}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbbc/mobile/news/helper/UserAgent;

    .line 334
    .local v5, ua:Lbbc/mobile/news/helper/UserAgent;
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lbbc/mobile/news/helper/UserAgent;->readAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, user_agent:Ljava/lang/String;
    sget-object v7, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    const-string v8, "initDefaultHttpClient(): user-agent: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v7, v8, v9}, Lbbc/mobile/news/helper/BBCLog;->ii(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    new-instance v1, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v1}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 337
    .local v1, cookieStore:Lorg/apache/http/client/CookieStore;
    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 338
    new-instance v7, Lbbc/mobile/news/webclient/WebClient$2;

    invoke-direct {v7, v6}, Lbbc/mobile/news/webclient/WebClient$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 347
    return-object v2
.end method

.method public static final getInputStreamFromFile(Ljava/io/File;)Ljava/io/InputStream;
    .locals 3
    .parameter "file"

    .prologue
    .line 632
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    return-object v1

    .line 639
    :catch_0
    move-exception v0

    .line 641
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 649
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getInputStreamFromNetwork(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 16
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    const-string v11, "NETWORKREQUEST"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "url: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 244
    .local v1, c:Landroid/content/Context;
    const-string v11, "connectivity"

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 245
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 247
    .local v7, ni:Landroid/net/NetworkInfo;
    if-nez v7, :cond_0

    .line 249
    const/4 v10, 0x0

    .line 315
    :goto_0
    return-object v10

    .line 252
    :cond_0
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v11

    if-nez v11, :cond_1

    .line 254
    const/4 v10, 0x0

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {}, Lbbc/mobile/news/webclient/WebClient;->getHTTPClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v5

    .line 262
    .local v5, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 263
    .local v6, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const/4 v10, 0x0

    .line 264
    .local v10, stream:Ljava/io/InputStream;
    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 266
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 267
    .local v9, responseCode:I
    const/16 v11, 0xc8

    if-lt v9, v11, :cond_2

    const/16 v11, 0x12c

    if-lt v9, v11, :cond_3

    .line 269
    :cond_2
    sget-object v11, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    const-string v12, "read(): could not retrieve content with error %d for url: %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-static {v11, v12, v13}, Lbbc/mobile/news/helper/BBCLog;->ww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    const/4 v10, 0x0

    goto :goto_0

    .line 273
    :cond_3
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 274
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-nez v4, :cond_4

    .line 275
    const/4 v10, 0x0

    goto :goto_0

    .line 277
    :cond_4
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 278
    if-nez v10, :cond_5

    .line 279
    const/4 v10, 0x0

    goto :goto_0

    .line 283
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lbbc/mobile/news/webclient/WebClient;->getStream(Ljava/io/InputStream;)[B

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lbbc/mobile/news/webclient/WebClient;->mData:[B

    .line 285
    move-object/from16 v0, p0

    iget-object v11, v0, Lbbc/mobile/news/webclient/WebClient;->mData:[B

    array-length v11, v11

    if-nez v11, :cond_6

    .line 286
    const/4 v10, 0x0

    goto :goto_0

    .line 288
    :cond_6
    new-instance v10, Ljava/io/ByteArrayInputStream;

    .end local v10           #stream:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v11, v0, Lbbc/mobile/news/webclient/WebClient;->mData:[B

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 290
    .restart local v10       #stream:Ljava/io/InputStream;
    goto :goto_0

    .line 292
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v6           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #responseCode:I
    .end local v10           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 293
    .local v3, e:Ljava/net/SocketTimeoutException;
    sget-object v11, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    const-string v12, "read():  SocketTimeoutException error while retreiving url: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v11, v12, v13}, Lbbc/mobile/news/helper/BBCLog;->ww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    const/4 v10, 0x0

    goto :goto_0

    .line 296
    .end local v3           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v3

    .line 297
    .local v3, e:Ljava/io/InterruptedIOException;
    sget-object v11, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    const-string v12, "read():  timeout while retreiving url: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v11, v12, v13}, Lbbc/mobile/news/helper/BBCLog;->ww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 300
    .end local v3           #e:Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v3

    .line 301
    .local v3, e:Ljava/net/SocketException;
    sget-object v11, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    const-string v12, "read():  SocketException error while retreiving url: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v11, v12, v13}, Lbbc/mobile/news/helper/BBCLog;->ww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 304
    .end local v3           #e:Ljava/net/SocketException;
    :catch_3
    move-exception v3

    .line 305
    .local v3, e:Ljava/io/IOException;
    sget-object v11, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    const-string v12, "read(): failed fetching url: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v11, v12, v13}, Lbbc/mobile/news/helper/BBCLog;->ww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 307
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 308
    .local v3, e:Ljava/lang/AssertionError;
    sget-object v11, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    const-string v12, "read(): assertion error: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v11, v12, v13}, Lbbc/mobile/news/helper/BBCLog;->ww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 310
    .end local v3           #e:Ljava/lang/AssertionError;
    :catch_5
    move-exception v3

    .line 311
    .local v3, e:Ljava/lang/IllegalArgumentException;
    sget-object v11, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    const-string v12, "read(): IllegalArgumentException: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v11, v12, v13}, Lbbc/mobile/news/helper/BBCLog;->ww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 313
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v3

    .line 314
    .local v3, e:Ljava/lang/Exception;
    sget-object v11, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    const-string v12, "read(): Unexpected exception: %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    invoke-static {v11, v12, v13}, Lbbc/mobile/news/helper/BBCLog;->ww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private getStream(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "ist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    if-nez p1, :cond_0

    .line 355
    const/4 v3, 0x0

    .line 373
    :goto_0
    return-object v3

    .line 357
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 358
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x2000

    new-array v1, v3, [B

    .line 363
    .local v1, buffer:[B
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 364
    .local v2, bytes:I
    if-lez v2, :cond_2

    .line 365
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 362
    :cond_2
    if-gez v2, :cond_1

    .line 368
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 369
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 373
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0
.end method

.method public static syncStream(Ljava/io/FileOutputStream;)Z
    .locals 3
    .parameter "stream"

    .prologue
    .line 225
    if-eqz p0, :cond_0

    .line 226
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    const/4 v1, 0x1

    .line 233
    :goto_0
    return v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final urlToUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 625
    if-eqz p0, :cond_0

    .line 626
    invoke-static {p0}, Lbbc/mobile/news/helper/StringUtils;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public age()J
    .locals 6

    .prologue
    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lbbc/mobile/news/webclient/WebClient;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 516
    .local v0, time:J
    return-wide v0
.end method

.method public downloadFileToDisk(Landroid/content/Context;Ljava/io/File;Lbbc/mobile/news/webclient/WebClient$OnProgressListener;Ljava/lang/String;)J
    .locals 9
    .parameter "context"
    .parameter "fileOutput"
    .parameter "progressListener"
    .parameter "fileURL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const-wide/16 v4, 0x0

    .line 137
    .local v4, result:J
    invoke-static {}, Lbbc/mobile/news/webclient/WebClient;->getHTTPClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 140
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 142
    .local v2, httpGet:Lorg/apache/http/client/methods/HttpGet;
    new-instance v3, Lbbc/mobile/news/webclient/WebClient$1;

    invoke-direct {v3, p0, p2, p3, p4}, Lbbc/mobile/news/webclient/WebClient$1;-><init>(Lbbc/mobile/news/webclient/WebClient;Ljava/io/File;Lbbc/mobile/news/webclient/WebClient$OnProgressListener;Ljava/lang/String;)V

    .line 205
    .local v3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/Long;>;"
    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 216
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 219
    .end local v2           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<Ljava/lang/Long;>;"
    :goto_0
    return-wide v4

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/SecurityException;
    :try_start_1
    sget-object v6, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "downloadFile: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    const-wide/16 v4, 0x0

    .line 216
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 211
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_2
    sget-object v6, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "downloadFile: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    const-wide/16 v4, 0x0

    .line 216
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 215
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v6

    .line 216
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 217
    throw v6
.end method

.method public existsInCache()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 457
    iget v3, p0, Lbbc/mobile/news/webclient/WebClient;->mCacheType:I

    invoke-static {v3}, Lbbc/mobile/news/webclient/WebClient;->getCacheDir(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, cacheDir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 460
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lbbc/mobile/news/webclient/WebClient;->mUid:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 465
    .end local v1           #file:Ljava/io/File;
    :cond_0
    return v2
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lbbc/mobile/news/webclient/WebClient;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 3
    .parameter "strategy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, inputStream:Ljava/io/InputStream;
    if-eq p1, v2, :cond_0

    .line 657
    invoke-virtual {p0}, Lbbc/mobile/news/webclient/WebClient;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/webclient/WebClient;->getInputStreamFromFile(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object v0

    .line 660
    :cond_0
    if-eq p1, v2, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    if-nez v0, :cond_2

    .line 661
    :cond_1
    invoke-virtual {p0}, Lbbc/mobile/news/webclient/WebClient;->getInputStreamFromNetwork()Ljava/io/InputStream;

    move-result-object v0

    .line 665
    :cond_2
    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 2
    .parameter "path"
    .parameter "strategy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    packed-switch p2, :pswitch_data_0

    .line 118
    :pswitch_0
    invoke-direct {p0, p1}, Lbbc/mobile/news/webclient/WebClient;->getInputStreamFromNetwork(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 131
    .local v0, is:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 113
    .end local v0           #is:Ljava/io/InputStream;
    :pswitch_1
    invoke-virtual {p0}, Lbbc/mobile/news/webclient/WebClient;->readFromCache()Ljava/io/InputStream;

    move-result-object v0

    .line 114
    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 122
    .end local v0           #is:Ljava/io/InputStream;
    :pswitch_2
    invoke-virtual {p0}, Lbbc/mobile/news/webclient/WebClient;->existsInCache()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lbbc/mobile/news/webclient/WebClient;->readFromCache()Ljava/io/InputStream;

    move-result-object v0

    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 125
    .end local v0           #is:Ljava/io/InputStream;
    :cond_0
    invoke-direct {p0, p1}, Lbbc/mobile/news/webclient/WebClient;->getInputStreamFromNetwork(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getInputStreamFromNetwork()Ljava/io/InputStream;
    .locals 15

    .prologue
    const/4 v9, 0x0

    .line 670
    const-string v10, "NETWORKREQUEST"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "url: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lbbc/mobile/news/webclient/WebClient;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 673
    .local v0, c:Landroid/content/Context;
    const-string v10, "connectivity"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 674
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    .line 676
    .local v6, ni:Landroid/net/NetworkInfo;
    if-nez v6, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-object v9

    .line 681
    :cond_1
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 686
    invoke-static {}, Lbbc/mobile/news/webclient/WebClient;->getHTTPClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    .line 690
    .local v4, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v10, p0, Lbbc/mobile/news/webclient/WebClient;->mUrl:Ljava/lang/String;

    invoke-direct {v5, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 691
    .local v5, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 693
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 694
    .local v8, responseCode:I
    const/16 v10, 0xc8

    if-lt v8, v10, :cond_2

    const/16 v10, 0x12c

    if-lt v8, v10, :cond_3

    .line 695
    :cond_2
    sget-object v10, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    const-string v11, "read(): could not retrieve inputstream for url: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lbbc/mobile/news/webclient/WebClient;->mUrl:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lbbc/mobile/news/helper/BBCLog;->ww(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 703
    .end local v5           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #responseCode:I
    :catch_0
    move-exception v3

    .line 704
    .local v3, exception:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 705
    sget-object v10, Lbbc/mobile/news/webclient/WebClient;->TAG:Ljava/lang/String;

    const-string v11, "Exception getInputStreamFromNetwork"

    invoke-static {v10, v11, v3}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 699
    .end local v3           #exception:Ljava/lang/Exception;
    .restart local v5       #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    .restart local v8       #responseCode:I
    :cond_3
    :try_start_1
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 700
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    .line 701
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lbbc/mobile/news/webclient/WebClient;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lbbc/mobile/news/webclient/WebClient;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public lastModified()J
    .locals 5

    .prologue
    .line 522
    iget v4, p0, Lbbc/mobile/news/webclient/WebClient;->mCacheType:I

    invoke-static {v4}, Lbbc/mobile/news/webclient/WebClient;->getCacheDir(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, cacheDir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 526
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lbbc/mobile/news/webclient/WebClient;->mUid:Ljava/lang/String;

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 534
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public parseAsBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "source"

    .prologue
    .line 433
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 436
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lbbc/mobile/news/webclient/WebClient;->writeToCache()V

    .line 439
    :cond_0
    return-object v0
.end method

.method public parseAsJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 391
    :try_start_0
    invoke-virtual {p0, p1}, Lbbc/mobile/news/webclient/WebClient;->parseAsText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 393
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v1, v3

    .line 405
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 397
    .restart local v2       #value:Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .local v1, j:Lorg/json/JSONObject;
    goto :goto_0

    .line 400
    .end local v1           #j:Lorg/json/JSONObject;
    .end local v2           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 402
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v3

    .line 405
    goto :goto_0
.end method

.method public parseAsText(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v2, 0x0

    .line 413
    :try_start_0
    invoke-direct {p0, p1}, Lbbc/mobile/news/webclient/WebClient;->getStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 414
    .local v0, data:[B
    if-nez v0, :cond_0

    .line 426
    .end local v0           #data:[B
    :goto_0
    return-object v2

    .line 420
    .restart local v0       #data:[B
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 422
    .end local v0           #data:[B
    :catch_0
    move-exception v1

    .line 423
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public parseAsXML(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 4
    .parameter "stream"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 380
    .local v0, source:Lorg/xml/sax/InputSource;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 381
    .local v2, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 382
    .local v1, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 383
    .local v3, xr:Lorg/xml/sax/XMLReader;
    invoke-interface {v3, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 384
    invoke-interface {v3, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 385
    return-void
.end method

.method public readFromCache()Ljava/io/InputStream;
    .locals 5

    .prologue
    .line 480
    iget v4, p0, Lbbc/mobile/news/webclient/WebClient;->mCacheType:I

    invoke-static {v4}, Lbbc/mobile/news/webclient/WebClient;->getCacheDir(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, cacheDir:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 484
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lbbc/mobile/news/webclient/WebClient;->mUid:Ljava/lang/String;

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v2           #file:Ljava/io/File;
    :goto_0
    return-object v3

    .line 494
    .restart local v2       #file:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 497
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 508
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #file:Ljava/io/File;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public writeToCache()V
    .locals 6

    .prologue
    .line 573
    iget-object v4, p0, Lbbc/mobile/news/webclient/WebClient;->mData:[B

    if-nez v4, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v4, p0, Lbbc/mobile/news/webclient/WebClient;->mData:[B

    array-length v4, v4

    if-lez v4, :cond_0

    .line 585
    iget v4, p0, Lbbc/mobile/news/webclient/WebClient;->mCacheType:I

    invoke-static {v4}, Lbbc/mobile/news/webclient/WebClient;->getCacheDir(I)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, cacheDir:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 589
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lbbc/mobile/news/webclient/WebClient;->mUid:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 594
    .local v0, buf:Ljava/io/BufferedOutputStream;
    iget-object v4, p0, Lbbc/mobile/news/webclient/WebClient;->mData:[B

    invoke-virtual {v0, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 595
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 596
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 599
    .end local v0           #buf:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v2

    .line 601
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 602
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 604
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToCache(Ljava/io/Serializable;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 540
    if-nez p1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget v4, p0, Lbbc/mobile/news/webclient/WebClient;->mCacheType:I

    invoke-static {v4}, Lbbc/mobile/news/webclient/WebClient;->getCacheDir(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, cacheDir:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 546
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lbbc/mobile/news/webclient/WebClient;->mUid:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 551
    .local v0, buf:Ljava/io/BufferedOutputStream;
    iget-object v4, p0, Lbbc/mobile/news/webclient/WebClient;->mData:[B

    invoke-virtual {v0, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 552
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 553
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 556
    .end local v0           #buf:Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v2

    .line 558
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 559
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 561
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

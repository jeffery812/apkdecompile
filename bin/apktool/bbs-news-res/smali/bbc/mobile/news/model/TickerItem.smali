.class public Lbbc/mobile/news/model/TickerItem;
.super Ljava/lang/Object;
.source "TickerItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String; = "TickerItem"

.field private static final serialVersionUID:J = 0x677977a9c49728e8L


# instance fields
.field private mHeadline:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mIsBreaking:Z

.field private mIsLive:Z

.field private mPrompt:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/model/TickerItem;->mUrl:Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lbbc/mobile/news/model/TickerItem;->parseJson(Lorg/json/JSONObject;)V

    .line 30
    return-void
.end method

.method private parseJson(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "json"

    .prologue
    .line 36
    :try_start_0
    const-string v1, "headline"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/model/TickerItem;->mHeadline:Ljava/lang/String;

    .line 37
    const-string v1, "prompt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/model/TickerItem;->mPrompt:Ljava/lang/String;

    .line 38
    const-string v1, "isLive"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lbbc/mobile/news/model/TickerItem;->mIsLive:Z

    .line 39
    const-string v1, "isBreaking"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lbbc/mobile/news/model/TickerItem;->mIsBreaking:Z

    .line 41
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/model/TickerItem;->mUrl:Ljava/lang/String;

    .line 45
    :cond_0
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lbbc/mobile/news/model/TickerItem;->mUrl:Ljava/lang/String;

    iput-object v1, p0, Lbbc/mobile/news/model/TickerItem;->mId:Ljava/lang/String;

    .line 50
    :goto_0
    iget-object v1, p0, Lbbc/mobile/news/model/TickerItem;->mId:Ljava/lang/String;

    invoke-static {v1}, Lbbc/mobile/news/helper/LinkGenerator;->fixArticleIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/model/TickerItem;->mId:Ljava/lang/String;

    .line 55
    :goto_1
    return-void

    .line 48
    :cond_1
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/model/TickerItem;->mId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getHeadline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbbc/mobile/news/model/TickerItem;->mHeadline:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lbbc/mobile/news/model/TickerItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lbbc/mobile/news/model/TickerItem;->mPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lbbc/mobile/news/model/TickerItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isBreaking()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lbbc/mobile/news/model/TickerItem;->mIsBreaking:Z

    return v0
.end method

.method public isLive()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lbbc/mobile/news/model/TickerItem;->mIsLive:Z

    return v0
.end method

.method public isLive(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 76
    invoke-static {}, Lbbc/mobile/news/cache/ArticleCache;->getInstance()Lbbc/mobile/news/cache/ArticleCache;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/model/TickerItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/cache/ArticleCache;->hasArticle(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setIsLive(Z)V
    .locals 0
    .parameter "mIsLive"

    .prologue
    .line 84
    iput-boolean p1, p0, Lbbc/mobile/news/model/TickerItem;->mIsLive:Z

    .line 85
    return-void
.end method

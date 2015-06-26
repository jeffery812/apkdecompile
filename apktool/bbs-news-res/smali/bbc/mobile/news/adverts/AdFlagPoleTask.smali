.class public Lbbc/mobile/news/adverts/AdFlagPoleTask;
.super Landroid/os/AsyncTask;
.source "AdFlagPoleTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;,
        Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADS_ENABLED_KEY:Ljava/lang/String; = "homepageIntAds"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdFlagPoleReturnedListener:Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;

.field private mFlagPoleUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lbbc/mobile/news/adverts/AdFlagPoleTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/adverts/AdFlagPoleTask;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    sget v0, Lbbc/mobile/news/R$string;->add_flagpole_url:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask;->mFlagPoleUrl:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 40
    new-instance v6, Lbbc/mobile/news/webclient/WebClient;

    iget-object v7, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask;->mFlagPoleUrl:Ljava/lang/String;

    invoke-direct {v6, v7, v9}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 41
    .local v6, webClient:Lbbc/mobile/news/webclient/WebClient;
    new-instance v4, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;

    invoke-direct {v4, p0}, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;-><init>(Lbbc/mobile/news/adverts/AdFlagPoleTask;)V

    .line 42
    .local v4, result:Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;
    #setter for: Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->adsEnabled:Z
    invoke-static {v4, v9}, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->access$0(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;Z)V

    .line 43
    #setter for: Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->requestSucessful:Z
    invoke-static {v4, v9}, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->access$1(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;Z)V

    .line 45
    const/4 v2, 0x0

    .line 48
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask;->mFlagPoleUrl:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lbbc/mobile/news/webclient/WebClient;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 58
    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {v6, v2}, Lbbc/mobile/news/webclient/WebClient;->parseAsText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, text:Ljava/lang/String;
    :try_start_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 65
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, json:Lorg/json/JSONObject;
    const-string v7, "homepageIntAds"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 68
    .local v0, adsEnabled:Z
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v7

    invoke-virtual {v7, v0}, Lbbc/mobile/news/util/GlobalSettings;->setAdsEnabled(Z)V

    .line 69
    const-string v7, "Ads_"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onTextSuccess homepageIntAds = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    #setter for: Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->adsEnabled:Z
    invoke-static {v4, v0}, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->access$0(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;Z)V

    .line 72
    const/4 v7, 0x1

    #setter for: Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->requestSucessful:Z
    invoke-static {v4, v7}, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->access$1(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .end local v0           #adsEnabled:Z
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v5           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    #setter for: Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->adsEnabled:Z
    invoke-static {v4, v9}, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->access$0(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;Z)V

    .line 53
    #setter for: Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->requestSucessful:Z
    invoke-static {v4, v9}, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->access$1(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;Z)V

    goto :goto_0

    .line 77
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #text:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 78
    .local v1, e:Lorg/json/JSONException;
    sget-object v7, Lbbc/mobile/news/adverts/AdFlagPoleTask;->TAG:Ljava/lang/String;

    const-string v8, "JSONException when parseing ad flagpole"

    invoke-static {v7, v8, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lbbc/mobile/news/adverts/AdFlagPoleTask;->doInBackground([Ljava/lang/Void;)Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 89
    iget-object v0, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask;->mAdFlagPoleReturnedListener:Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask;->mAdFlagPoleReturnedListener:Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;

    #getter for: Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->adsEnabled:Z
    invoke-static {p1}, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->access$2(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;)Z

    move-result v1

    #getter for: Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->requestSucessful:Z
    invoke-static {p1}, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;->access$3(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;->onFlagPoleReturned(ZZ)V

    .line 91
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;

    invoke-virtual {p0, p1}, Lbbc/mobile/news/adverts/AdFlagPoleTask;->onPostExecute(Lbbc/mobile/news/adverts/AdFlagPoleTask$FlagPoleResult;)V

    return-void
.end method

.method public setOnAdFlagPoleReturnedListener(Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 34
    iput-object p1, p0, Lbbc/mobile/news/adverts/AdFlagPoleTask;->mAdFlagPoleReturnedListener:Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;

    .line 35
    return-void
.end method

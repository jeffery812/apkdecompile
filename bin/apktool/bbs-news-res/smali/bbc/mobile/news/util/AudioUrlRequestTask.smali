.class public Lbbc/mobile/news/util/AudioUrlRequestTask;
.super Landroid/os/AsyncTask;
.source "AudioUrlRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lbbc/mobile/news/model/Article;",
        "Ljava/lang/Void;",
        "Lbbc/mobile/news/model/Article;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lbbc/mobile/news/util/AudioUrlRequestTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/util/AudioUrlRequestTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    iput-object p1, p0, Lbbc/mobile/news/util/AudioUrlRequestTask;->mCallback:Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;

    .line 21
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/model/Article;
    .locals 9
    .parameter "articles"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 32
    if-eqz p1, :cond_0

    array-length v6, p1

    if-lt v6, v7, :cond_0

    .line 34
    aget-object v6, p1, v8

    if-nez v6, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-object v5

    .line 38
    :cond_1
    aget-object v5, p1, v8

    invoke-virtual {v5}, Lbbc/mobile/news/model/Article;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, url:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lbbc/mobile/news/util/AudioUrlRequestTask;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "AudioService"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Attempting to donwload real audio url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lbbc/mobile/news/cache/AudioUrlCache;->getInstance()Lbbc/mobile/news/cache/AudioUrlCache;

    move-result-object v5

    invoke-virtual {v5, v2}, Lbbc/mobile/news/cache/AudioUrlCache;->hasFeed(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 43
    aget-object v5, p1, v8

    goto :goto_0

    .line 45
    :cond_2
    iget-object v5, p0, Lbbc/mobile/news/util/AudioUrlRequestTask;->mCallback:Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;

    if-nez v5, :cond_3

    aget-object v5, p1, v8

    goto :goto_0

    .line 47
    :cond_3
    iget-object v5, p0, Lbbc/mobile/news/util/AudioUrlRequestTask;->mCallback:Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;

    invoke-interface {v5}, Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 51
    if-nez v2, :cond_4

    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p1, v5

    goto :goto_0

    .line 53
    :cond_4
    invoke-virtual {p0}, Lbbc/mobile/news/util/AudioUrlRequestTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    aget-object v5, p1, v5

    goto :goto_0

    .line 55
    :cond_5
    new-instance v3, Lbbc/mobile/news/webclient/WebClient;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 56
    .local v3, webClient:Lbbc/mobile/news/webclient/WebClient;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lbbc/mobile/news/webclient/WebClient;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v3, v5}, Lbbc/mobile/news/webclient/WebClient;->parseAsText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, audioUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lbbc/mobile/news/util/AudioUrlRequestTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    aget-object v5, p1, v5

    goto :goto_0

    .line 60
    :cond_6
    if-eqz v0, :cond_7

    const-string v5, "eieuk_mp3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 62
    new-instance v4, Lbbc/mobile/news/webclient/WebClient;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 63
    .local v4, webClient2:Lbbc/mobile/news/webclient/WebClient;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lbbc/mobile/news/webclient/WebClient;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbbc/mobile/news/webclient/WebClient;->parseAsText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .end local v4           #webClient2:Lbbc/mobile/news/webclient/WebClient;
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 70
    invoke-static {}, Lbbc/mobile/news/cache/AudioUrlCache;->getInstance()Lbbc/mobile/news/cache/AudioUrlCache;

    move-result-object v5

    invoke-virtual {v5, v2, v0}, Lbbc/mobile/news/cache/AudioUrlCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v5, 0x0

    aget-object v5, p1, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 74
    .end local v0           #audioUrl:Ljava/lang/String;
    .end local v3           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    aget-object v5, p1, v8

    goto/16 :goto_0

    .line 81
    .end local v1           #e:Ljava/lang/Exception;
    :cond_8
    aget-object v5, p1, v8

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lbbc/mobile/news/model/Article;

    invoke-virtual {p0, p1}, Lbbc/mobile/news/util/AudioUrlRequestTask;->doInBackground([Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/model/Article;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lbbc/mobile/news/model/Article;)V
    .locals 1
    .parameter "article"

    .prologue
    .line 92
    invoke-virtual {p0}, Lbbc/mobile/news/util/AudioUrlRequestTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lbbc/mobile/news/util/AudioUrlRequestTask;->mCallback:Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->hasRealAudioUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lbbc/mobile/news/util/AudioUrlRequestTask;->mCallback:Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;

    invoke-interface {v0, p1}, Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;->onAudioUrlSuccess(Lbbc/mobile/news/model/Article;)V

    .line 100
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/util/AudioUrlRequestTask;->mCallback:Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;

    .line 101
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/util/AudioUrlRequestTask;->mCallback:Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lbbc/mobile/news/util/AudioUrlRequestTask;->mCallback:Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;

    invoke-interface {v0, p1}, Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;->onAudioUrlFail(Lbbc/mobile/news/model/Article;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lbbc/mobile/news/model/Article;

    invoke-virtual {p0, p1}, Lbbc/mobile/news/util/AudioUrlRequestTask;->onPostExecute(Lbbc/mobile/news/model/Article;)V

    return-void
.end method

.method public setCallback(Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 24
    iput-object p1, p0, Lbbc/mobile/news/util/AudioUrlRequestTask;->mCallback:Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;

    .line 25
    return-void
.end method

.class public Lbbc/mobile/news/service/AudioCallback;
.super Ljava/lang/Object;
.source "AudioCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/service/AudioCallback$AudioListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/service/AudioCallback$AudioListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lbbc/mobile/news/service/AudioCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/service/AudioCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/service/AudioCallback;->mListeners:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lbbc/mobile/news/service/AudioCallback;->TAG:Ljava/lang/String;

    const-string v1, "finalize() called... audio callback garbage collected"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public onBufferingUpdate(Lbbc/mobile/news/model/Article;I)V
    .locals 5
    .parameter "playingArticle"
    .parameter "percent"

    .prologue
    .line 118
    if-nez p1, :cond_1

    .line 137
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v2, 0x0

    .line 122
    .local v2, noOfOnBufferingCalls:I
    iget-object v3, p0, Lbbc/mobile/news/service/AudioCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/service/AudioCallback$AudioListener;

    .line 124
    .local v1, audioListener:Lbbc/mobile/news/service/AudioCallback$AudioListener;
    invoke-interface {v1}, Lbbc/mobile/news/service/AudioCallback$AudioListener;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 126
    .local v0, article:Lbbc/mobile/news/model/Article;
    invoke-virtual {p1, v0}, Lbbc/mobile/news/model/Article;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    invoke-interface {v1, v0, p2}, Lbbc/mobile/news/service/AudioCallback$AudioListener;->onBufferingUpdate(Lbbc/mobile/news/model/Article;I)V

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onPause(Lbbc/mobile/news/model/Article;)V
    .locals 5
    .parameter "playingArticle"

    .prologue
    .line 94
    const/4 v2, 0x0

    .line 96
    .local v2, noOfOnPauseCalls:I
    iget-object v3, p0, Lbbc/mobile/news/service/AudioCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 114
    return-void

    .line 96
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/service/AudioCallback$AudioListener;

    .line 98
    .local v1, audioListener:Lbbc/mobile/news/service/AudioCallback$AudioListener;
    invoke-interface {v1}, Lbbc/mobile/news/service/AudioCallback$AudioListener;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 100
    .local v0, article:Lbbc/mobile/news/model/Article;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lbbc/mobile/news/model/Article;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    invoke-interface {v1, v0}, Lbbc/mobile/news/service/AudioCallback$AudioListener;->onPause(Lbbc/mobile/news/model/Article;)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onPlay(Lbbc/mobile/news/model/Article;)V
    .locals 5
    .parameter "playingArticle"

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, noOfOnPlayCalls:I
    iget-object v3, p0, Lbbc/mobile/news/service/AudioCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    return-void

    .line 71
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/service/AudioCallback$AudioListener;

    .line 73
    .local v1, audioListener:Lbbc/mobile/news/service/AudioCallback$AudioListener;
    invoke-interface {v1}, Lbbc/mobile/news/service/AudioCallback$AudioListener;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 75
    .local v0, article:Lbbc/mobile/news/model/Article;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lbbc/mobile/news/model/Article;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    invoke-interface {v1, v0}, Lbbc/mobile/news/service/AudioCallback$AudioListener;->onPlay(Lbbc/mobile/news/model/Article;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onStop(Lbbc/mobile/news/model/Article;Z)V
    .locals 5
    .parameter "playingArticle"
    .parameter "error"

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 45
    .local v2, noOfOnStopCalls:I
    iget-object v3, p0, Lbbc/mobile/news/service/AudioCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    return-void

    .line 45
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/service/AudioCallback$AudioListener;

    .line 47
    .local v1, audioListener:Lbbc/mobile/news/service/AudioCallback$AudioListener;
    invoke-interface {v1}, Lbbc/mobile/news/service/AudioCallback$AudioListener;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 49
    .local v0, article:Lbbc/mobile/news/model/Article;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lbbc/mobile/news/model/Article;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-interface {v1, v0, p2}, Lbbc/mobile/news/service/AudioCallback$AudioListener;->onStop(Lbbc/mobile/news/model/Article;Z)V

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public registerCallback(Lbbc/mobile/news/service/AudioCallback$AudioListener;)V
    .locals 2
    .parameter "audioListener"

    .prologue
    .line 21
    sget-object v0, Lbbc/mobile/news/service/AudioCallback;->TAG:Ljava/lang/String;

    const-string v1, "registered callback..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lbbc/mobile/news/service/AudioCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public unregisterAllCallbacks()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lbbc/mobile/news/service/AudioCallback;->TAG:Ljava/lang/String;

    const-string v1, "all allback unregistered..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lbbc/mobile/news/service/AudioCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    return-void
.end method

.method public unregisterCallback(Lbbc/mobile/news/service/AudioCallback$AudioListener;)V
    .locals 2
    .parameter "audioListener"

    .prologue
    .line 29
    sget-object v0, Lbbc/mobile/news/service/AudioCallback;->TAG:Ljava/lang/String;

    const-string v1, "un-registered callback..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lbbc/mobile/news/service/AudioCallback;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

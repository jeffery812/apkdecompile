.class public final Lbbc/mobile/news/service/AudioService$AudioStateProvider;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/service/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioStateProvider"
.end annotation


# static fields
.field public static final INSTANCE:Lbbc/mobile/news/service/AudioService$AudioStateProvider; = null

.field public static final STATE_BUFFERRING:I = 0x3

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x1

.field public static final STATE_REQUESTING:I = 0x4

.field public static final STATE_STOPPED:I = 0x0

.field public static final STRING_STATE_BUFFERRING:Ljava/lang/String; = "BUFFERING"

.field public static final STRING_STATE_PAUSED:Ljava/lang/String; = "PAUSED"

.field public static final STRING_STATE_PLAYING:Ljava/lang/String; = "PLAYING"

.field public static final STRING_STATE_REQUESTING:Ljava/lang/String; = "REQUESTING"

.field public static final STRING_STATE_STOPPED:Ljava/lang/String; = "STOPPED"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mArticle:Lbbc/mobile/news/model/Article;

.field private mIsPlaying:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-direct {v0}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;-><init>()V

    sput-object v0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->INSTANCE:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const-class v0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->TAG:Ljava/lang/String;

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mArticle:Lbbc/mobile/news/model/Article;

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mIsPlaying:Z

    .line 307
    return-void
.end method

.method public static final declared-synchronized getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;
    .locals 2

    .prologue
    .line 334
    const-class v0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->INSTANCE:Lbbc/mobile/news/service/AudioService$AudioStateProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final stateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 401
    packed-switch p0, :pswitch_data_0

    .line 414
    const-string v0, "UNKNOWN-STATE"

    :goto_0
    return-object v0

    .line 403
    :pswitch_0
    const-string v0, "BUFFERING"

    goto :goto_0

    .line 405
    :pswitch_1
    const-string v0, "PLAYING"

    goto :goto_0

    .line 407
    :pswitch_2
    const-string v0, "PAUSED"

    goto :goto_0

    .line 409
    :pswitch_3
    const-string v0, "STOPPED"

    goto :goto_0

    .line 411
    :pswitch_4
    const-string v0, "REQUESTING"

    goto :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getPlayingArticle()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mArticle:Lbbc/mobile/news/model/Article;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mState:I

    return v0
.end method

.method public declared-synchronized isPlaying()Z
    .locals 1

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlayingArticle(Lbbc/mobile/news/model/Article;)Z
    .locals 1
    .parameter "article"

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mIsPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mArticle:Lbbc/mobile/news/model/Article;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Article;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 380
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRequestingArticle(Lbbc/mobile/news/model/Article;)Z
    .locals 2
    .parameter "article"

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mArticle:Lbbc/mobile/news/model/Article;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Article;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPlaying(Lbbc/mobile/news/model/Article;)V
    .locals 1
    .parameter "article"

    .prologue
    .line 362
    monitor-enter p0

    if-nez p1, :cond_0

    .line 363
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mIsPlaying:Z

    .line 364
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mState:I

    .line 370
    :goto_0
    iput-object p1, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mArticle:Lbbc/mobile/news/model/Article;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-void

    .line 367
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mIsPlaying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRequestingArticle(Lbbc/mobile/news/model/Article;)V
    .locals 1
    .parameter "article"

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mArticle:Lbbc/mobile/news/model/Article;

    .line 345
    const/4 v0, 0x4

    iput v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 385
    iput p1, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mState:I

    .line 386
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->mState:I

    invoke-static {v0}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lbbc/mobile/news/service/AudioService;
.super Landroid/app/Service;
.source "AudioService.java"

# interfaces
.implements Lbbc/mobile/news/service/AudioControl;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/service/AudioService$AudioBinder;,
        Lbbc/mobile/news/service/AudioService$AudioStateProvider;
    }
.end annotation


# static fields
.field private static final HANDLE_ERROR_INTERNALLY:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mBinder:Lbbc/mobile/news/service/AudioService$AudioBinder;

.field private final mCallback:Lbbc/mobile/news/service/AudioCallback;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

.field private mUrlRequestTask:Lbbc/mobile/news/util/AudioUrlRequestTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lbbc/mobile/news/service/AudioService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    .line 39
    new-instance v0, Lbbc/mobile/news/service/AudioService$AudioBinder;

    invoke-direct {v0, p0}, Lbbc/mobile/news/service/AudioService$AudioBinder;-><init>(Lbbc/mobile/news/service/AudioService;)V

    iput-object v0, p0, Lbbc/mobile/news/service/AudioService;->mBinder:Lbbc/mobile/news/service/AudioService$AudioBinder;

    .line 40
    new-instance v0, Lbbc/mobile/news/service/AudioCallback;

    invoke-direct {v0}, Lbbc/mobile/news/service/AudioCallback;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/service/AudioService;->mCallback:Lbbc/mobile/news/service/AudioCallback;

    .line 418
    new-instance v0, Lbbc/mobile/news/service/AudioService$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/service/AudioService$1;-><init>(Lbbc/mobile/news/service/AudioService;)V

    iput-object v0, p0, Lbbc/mobile/news/service/AudioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 30
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2(Lbbc/mobile/news/service/AudioService;)Lbbc/mobile/news/service/AudioService$AudioStateProvider;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    return-object v0
.end method

.method static synthetic access$3(Lbbc/mobile/news/service/AudioService;Lbbc/mobile/news/model/Article;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/service/AudioService;->onStop(Lbbc/mobile/news/model/Article;Z)V

    return-void
.end method

.method private initMediaPlayer()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 174
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 175
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 176
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 177
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 178
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 179
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 181
    :cond_0
    return-void
.end method

.method private onStop(Lbbc/mobile/news/model/Article;Z)V
    .locals 3
    .parameter "article"
    .parameter "error"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->setPlaying(Lbbc/mobile/news/model/Article;)V

    .line 187
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mCallback:Lbbc/mobile/news/service/AudioCallback;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mCallback:Lbbc/mobile/news/service/AudioCallback;

    invoke-virtual {v1, p1, p2}, Lbbc/mobile/news/service/AudioCallback;->onStop(Lbbc/mobile/news/model/Article;Z)V

    .line 190
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lbbc/mobile/news/service/AudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 191
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 192
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 194
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbbc/mobile/news/service/AudioService;->stopForeground(Z)V

    .line 195
    return-void
.end method

.method private playAudio(Lbbc/mobile/news/model/Article;)V
    .locals 6
    .parameter "article"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 125
    invoke-direct {p0}, Lbbc/mobile/news/service/AudioService;->initMediaPlayer()V

    .line 128
    :try_start_0
    iget-object v2, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 129
    iget-object v2, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getRealAudioUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 131
    iget-object v2, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v2, p1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->setPlaying(Lbbc/mobile/news/model/Article;)V

    .line 132
    iget-object v2, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->setState(I)V

    .line 133
    iget-object v2, p0, Lbbc/mobile/news/service/AudioService;->mCallback:Lbbc/mobile/news/service/AudioCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lbbc/mobile/news/service/AudioCallback;->onBufferingUpdate(Lbbc/mobile/news/model/Article;I)V

    .line 135
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lbbc/mobile/news/service/AudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 136
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 137
    iget-object v2, p0, Lbbc/mobile/news/service/AudioService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 138
    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 137
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 141
    :cond_0
    const/4 v2, 0x4

    .line 142
    invoke-static {p0, p1}, Lbbc/mobile/news/service/NotificationFactory;->getAudioNotification(Landroid/content/Context;Lbbc/mobile/news/model/Article;)Landroid/app/Notification;

    move-result-object v3

    .line 141
    invoke-virtual {p0, v2, v3}, Lbbc/mobile/news/service/AudioService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v2, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR: playAudio() - IllegalArgumentException url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getRealAudioUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 150
    invoke-direct {p0, p1, v5}, Lbbc/mobile/news/service/AudioService;->onStop(Lbbc/mobile/news/model/Article;Z)V

    goto :goto_0

    .line 152
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/IllegalStateException;
    sget-object v2, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR: playAudio() - IllegalStateException url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getRealAudioUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 158
    invoke-direct {p0, p1, v5}, Lbbc/mobile/news/service/AudioService;->onStop(Lbbc/mobile/news/model/Article;Z)V

    goto :goto_0

    .line 160
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 161
    .local v1, e:Ljava/io/IOException;
    sget-object v2, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR: playAudio() - IOException url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getRealAudioUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 166
    invoke-direct {p0, p1, v5}, Lbbc/mobile/news/service/AudioService;->onStop(Lbbc/mobile/news/model/Article;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCallback()Lbbc/mobile/news/service/AudioCallback;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mCallback:Lbbc/mobile/news/service/AudioCallback;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 281
    return-object p0
.end method

.method public declared-synchronized onAudioUrlFail(Lbbc/mobile/news/model/Article;)V
    .locals 3
    .parameter "article"

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "AudioService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioUrlFail() ERROR url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getRealAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->isRequestingArticle(Lbbc/mobile/news/model/Article;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lbbc/mobile/news/service/AudioService;->onStop(Lbbc/mobile/news/model/Article;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_0
    monitor-exit p0

    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAudioUrlSuccess(Lbbc/mobile/news/model/Article;)V
    .locals 3
    .parameter "article"

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "AudioService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioUrlSuccess() url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getRealAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->isRequestingArticle(Lbbc/mobile/news/model/Article;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Lbbc/mobile/news/service/AudioService;->play(Lbbc/mobile/news/model/Article;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :cond_0
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 200
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mBinder:Lbbc/mobile/news/service/AudioService$AudioBinder;

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 253
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mCallback:Lbbc/mobile/news/service/AudioCallback;

    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getPlayingArticle()Lbbc/mobile/news/model/Article;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lbbc/mobile/news/service/AudioCallback;->onBufferingUpdate(Lbbc/mobile/news/model/Article;I)V

    .line 254
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 241
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v0}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getPlayingArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/service/AudioService;->onStop(Lbbc/mobile/news/model/Article;Z)V

    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 245
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 297
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v0}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getPlayingArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/service/AudioService;->onStop(Lbbc/mobile/news/model/Article;Z)V

    .line 299
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mCallback:Lbbc/mobile/news/service/AudioCallback;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mCallback:Lbbc/mobile/news/service/AudioCallback;

    invoke-virtual {v0}, Lbbc/mobile/news/service/AudioCallback;->unregisterAllCallbacks()V

    .line 303
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 304
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 223
    const-string v0, "Unknown Error occured while playing audio"

    .line 225
    .local v0, error:Ljava/lang/String;
    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    .line 226
    const-string v0, "Media server died while playing audio"

    .line 229
    :cond_0
    sget-object v1, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onError() "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 233
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getPlayingArticle()Lbbc/mobile/news/model/Article;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/service/AudioService;->onStop(Lbbc/mobile/news/model/Article;Z)V

    .line 235
    const/4 v1, 0x0

    return v1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mediaPlayer"

    .prologue
    const/high16 v2, 0x3f80

    .line 212
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 213
    sget-object v0, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    const-string v1, "init: setting volume to 1.0"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 215
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->setState(I)V

    .line 216
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mCallback:Lbbc/mobile/news/service/AudioCallback;

    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getPlayingArticle()Lbbc/mobile/news/model/Article;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/service/AudioCallback;->onPlay(Lbbc/mobile/news/model/Article;)V

    .line 217
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "mp"

    .prologue
    .line 207
    return-void
.end method

.method public play(Lbbc/mobile/news/model/Article;)V
    .locals 4
    .parameter "article"

    .prologue
    const/4 v3, 0x1

    .line 60
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 64
    :cond_0
    sget-object v0, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "play(article: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->isPlayingArticle(Lbbc/mobile/news/model/Article;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 68
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v0}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lbbc/mobile/news/service/AudioService;->stop()V

    .line 71
    :cond_1
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->hasRealAudioUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Success: playing article url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getRealAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p1}, Lbbc/mobile/news/service/AudioService;->playAudio(Lbbc/mobile/news/model/Article;)V

    goto :goto_0

    .line 77
    :cond_2
    sget-object v0, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URL needed - fetching url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mUrlRequestTask:Lbbc/mobile/news/util/AudioUrlRequestTask;

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mUrlRequestTask:Lbbc/mobile/news/util/AudioUrlRequestTask;

    invoke-virtual {v0, v3}, Lbbc/mobile/news/util/AudioUrlRequestTask;->cancel(Z)Z

    .line 80
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mUrlRequestTask:Lbbc/mobile/news/util/AudioUrlRequestTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbc/mobile/news/util/AudioUrlRequestTask;->setCallback(Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;)V

    .line 83
    :cond_3
    new-instance v0, Lbbc/mobile/news/util/AudioUrlRequestTask;

    invoke-direct {v0, p0}, Lbbc/mobile/news/util/AudioUrlRequestTask;-><init>(Lbbc/mobile/news/util/AudioUrlRequestTask$AudioRequestCallback;)V

    iput-object v0, p0, Lbbc/mobile/news/service/AudioService;->mUrlRequestTask:Lbbc/mobile/news/util/AudioUrlRequestTask;

    .line 84
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->setRequestingArticle(Lbbc/mobile/news/model/Article;)V

    .line 85
    iget-object v0, p0, Lbbc/mobile/news/service/AudioService;->mUrlRequestTask:Lbbc/mobile/news/util/AudioUrlRequestTask;

    new-array v1, v3, [Lbbc/mobile/news/model/Article;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lbbc/mobile/news/util/AudioUrlRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 91
    :cond_4
    sget-object v0, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "already playing article "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 98
    sget-object v1, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    const-string v2, "stop()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    invoke-virtual {v1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getPlayingArticle()Lbbc/mobile/news/model/Article;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/service/AudioService;->onStop(Lbbc/mobile/news/model/Article;Z)V

    .line 120
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, exception:Ljava/lang/IllegalStateException;
    sget-object v1, Lbbc/mobile/news/service/AudioService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR: IllegalStateException when attempting to stop audio...  Attempting to reset media player... "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.class public Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;
.super Ljava/lang/Object;
.source "StreamingMediaPlayer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INTIAL_KB_BUFFER:I = 0x78

.field public static final NO_PLAYER_ERROR:I = -0x2c51

.field public static final NO_PLAYER_ON_START_ERROR:I = -0x3421

.field public static final SPACE_LOW_ERROR:I = -0x3039

.field private static final TAG:Ljava/lang/String;

.field public static USE_EXTERNAL_CACHE_IF_AVAILABLE:Z


# instance fields
.field private completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private context:Landroid/content/Context;

.field private counter:I

.field private downloadingMediaFile:Ljava/io/File;

.field private errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private failureCounter:I

.field private final handler:Landroid/os/Handler;

.field private isInterrupted:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private totalKbRead:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->USE_EXTERNAL_CACHE_IF_AVAILABLE:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->totalKbRead:I

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->handler:Landroid/os/Handler;

    .line 66
    iput v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->counter:I

    .line 68
    iput v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->failureCounter:I

    .line 85
    iput-object p1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->context:Landroid/content/Context;

    .line 86
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-boolean p1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->isInterrupted:Z

    return-void
.end method

.method static synthetic access$1(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->failureCounter:I

    return-void
.end method

.method static synthetic access$10(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$4(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$5(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->failureCounter:I

    return v0
.end method

.method static synthetic access$6(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)I
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->totalKbRead:I

    return v0
.end method

.method static synthetic access$7(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->startMediaPlayer()V

    return-void
.end method

.method static synthetic access$8(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->isInterrupted:Z

    return v0
.end method

.method static synthetic access$9(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->transferBufferToMediaPlayer()V

    return-void
.end method

.method private createMediaPlayer(Ljava/io/File;)Landroid/media/MediaPlayer;
    .locals 5
    .parameter "mediaFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 329
    .local v2, player:Landroid/media/MediaPlayer;
    new-instance v3, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$3;

    invoke-direct {v3, p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$3;-><init>(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)V

    .line 328
    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 338
    iget-object v3, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v3, :cond_0

    .line 339
    iget-object v3, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 341
    :cond_0
    iget-object v3, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v3, :cond_1

    .line 342
    iget-object v3, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 347
    :cond_1
    const/4 v0, 0x0

    .line 349
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .end local v0           #fis:Ljava/io/FileInputStream;
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 351
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 355
    if-eqz v1, :cond_2

    .line 356
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 362
    :cond_2
    :goto_0
    return-object v2

    .line 353
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    .line 355
    :goto_1
    if-eqz v0, :cond_3

    .line 356
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 361
    :cond_3
    :goto_2
    throw v3

    .line 358
    :catch_0
    move-exception v4

    goto :goto_2

    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 353
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private fireDataFullyLoaded()V
    .locals 2

    .prologue
    .line 437
    new-instance v0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$5;

    invoke-direct {v0, p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$5;-><init>(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)V

    .line 447
    .local v0, updater:Ljava/lang/Runnable;
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    return-void
.end method

.method private fireDataLoadUpdate()V
    .locals 2

    .prologue
    .line 425
    new-instance v0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$4;

    invoke-direct {v0, p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$4;-><init>(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)V

    .line 433
    .local v0, updater:Ljava/lang/Runnable;
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method

.method private getExistingCacheDir()Ljava/io/File;
    .locals 7

    .prologue
    .line 300
    iget-object v4, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 301
    .local v1, cacheDir:Ljava/io/File;
    sget-boolean v4, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->USE_EXTERNAL_CACHE_IF_AVAILABLE:Z

    if-eqz v4, :cond_0

    .line 303
    :try_start_0
    iget-object v4, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->context:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getExternalCacheDir"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 304
    .local v2, extCacheMethod:Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 305
    iget-object v4, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 306
    .local v3, retVal:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Ljava/io/File;

    if-eqz v4, :cond_0

    .line 307
    move-object v0, v3

    check-cast v0, Ljava/io/File;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v2           #extCacheMethod:Ljava/lang/reflect/Method;
    .end local v3           #retVal:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 318
    :catch_0
    move-exception v4

    goto :goto_0

    .line 316
    :catch_1
    move-exception v4

    goto :goto_0

    .line 314
    :catch_2
    move-exception v4

    goto :goto_0

    .line 312
    :catch_3
    move-exception v4

    goto :goto_0

    .line 310
    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method private resetMediaPlayer()V
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 216
    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 217
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    sget-object v1, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[resetMediaPlayer] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SME"

    invoke-static {v3}, Lbbc/mobile/news/util/StackExaminer;->getStackTraceInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 223
    const/4 v1, 0x0

    iput v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->failureCounter:I

    .line 225
    :cond_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, ex:Ljava/lang/IllegalStateException;
    sget-object v1, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mediaPlayer in wrong state in resetMediaPlayer : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startMediaPlayer()V
    .locals 6

    .prologue
    .line 271
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->isInterrupted:Z

    .line 273
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->getExistingCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "playingMedia"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->counter:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->counter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 281
    .local v0, bufferedFile:Ljava/io/File;
    iget-object v2, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    invoke-virtual {p0, v2, v0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 283
    sget-object v2, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Buffered File path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget-object v2, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Buffered File length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0, v0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->createMediaPlayer(Ljava/io/File;)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 289
    iget-object v2, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 290
    invoke-virtual {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->startPlayProgressUpdater()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v0           #bufferedFile:Ljava/io/File;
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, e:Ljava/io/IOException;
    sget-object v2, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    const-string v3, "Error initializing the MediaPlayer."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private testMediaBuffer()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;

    invoke-direct {v0, p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;-><init>(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)V

    .line 266
    .local v0, updater:Ljava/lang/Runnable;
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method private transferBufferToMediaPlayer()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 376
    :try_start_0
    iget-object v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v6, :cond_0

    .line 377
    sget-object v6, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    const-string v7, "Strange, media player null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    const/4 v5, 0x0

    .line 380
    .local v5, wasPlaying:Z
    const/4 v2, 0x0

    .line 382
    .local v2, curPosition:I
    iget-object v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_1

    .line 383
    iget-object v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    .line 384
    iget-object v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    .line 388
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->getExistingCacheDir()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "playingMedia"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->counter:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 389
    .local v4, oldBufferedFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->getExistingCacheDir()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "playingMedia"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->counter:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->counter:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    .local v1, bufferedFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 394
    iget-object v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    invoke-virtual {p0, v6, v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 395
    const/4 v6, 0x0

    iput v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->failureCounter:I

    .line 396
    iget-object v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_4

    .line 399
    iget-object v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->pause()V

    .line 402
    invoke-direct {p0, v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->createMediaPlayer(Ljava/io/File;)Landroid/media/MediaPlayer;

    move-result-object v6

    iput-object v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 403
    iget-object v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 408
    iget-object v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v6

    iget-object v7, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v7

    sub-int/2addr v6, v7

    const/16 v7, 0x3e8

    if-gt v6, v7, :cond_2

    const/4 v0, 0x1

    .line 409
    .local v0, atEndOfFile:Z
    :cond_2
    if-nez v5, :cond_3

    if-eqz v0, :cond_4

    .line 410
    :cond_3
    iget-object v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->start()V

    .line 417
    .end local v0           #atEndOfFile:Z
    :cond_4
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 422
    .end local v1           #bufferedFile:Ljava/io/File;
    .end local v2           #curPosition:I
    .end local v4           #oldBufferedFile:Ljava/io/File;
    .end local v5           #wasPlaying:Z
    :goto_1
    return-void

    .line 414
    .restart local v1       #bufferedFile:Ljava/io/File;
    .restart local v2       #curPosition:I
    .restart local v4       #oldBufferedFile:Ljava/io/File;
    .restart local v5       #wasPlaying:Z
    :cond_5
    iget v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->failureCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->failureCounter:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 418
    .end local v1           #bufferedFile:Ljava/io/File;
    .end local v2           #curPosition:I
    .end local v4           #oldBufferedFile:Ljava/io/File;
    .end local v5           #wasPlaying:Z
    :catch_0
    move-exception v3

    .line 419
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error updating to newly loaded content."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private validateNotInterrupted()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->isInterrupted:Z

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public downloadAudioIncrement(Ljava/lang/String;)V
    .locals 11
    .parameter "mediaUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 125
    .local v1, cn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 126
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 127
    .local v5, stream:Ljava/io/InputStream;
    if-nez v5, :cond_1

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unable to create InputStream for mediaUrl:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->getExistingCacheDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "downloadingMedia.dat"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    .line 138
    iget-object v7, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 139
    iget-object v7, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 142
    :cond_2
    const/4 v3, 0x0

    .line 144
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    const/16 v7, 0x4000

    :try_start_1
    new-array v0, v7, [B

    .line 146
    .local v0, buf:[B
    const/4 v6, 0x0

    .line 149
    .local v6, totalBytesRead:I
    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->resetMediaPlayer()V

    .line 152
    :cond_3
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 153
    .local v2, numread:I
    if-gtz v2, :cond_6

    .line 154
    sget-object v7, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[downloadAudioIncrement] Breaking of the loop as numread : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v7, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Media player : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v7, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v7, :cond_4

    iget-object v7, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v7, :cond_4

    .line 158
    sget-object v7, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Report error on no media player : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 182
    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->validateNotInterrupted()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 183
    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->testMediaBuffer()V

    .line 184
    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->fireDataFullyLoaded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :cond_5
    if-eqz v4, :cond_0

    .line 190
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v7

    goto/16 :goto_0

    .line 163
    :cond_6
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 164
    add-int/2addr v6, v2

    .line 166
    div-int/lit16 v7, v6, 0x3e8

    iput v7, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->totalKbRead:I

    .line 168
    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->testMediaBuffer()V

    .line 169
    iget v7, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->failureCounter:I

    const/16 v8, 0x14

    if-le v7, v8, :cond_9

    .line 170
    sget-object v7, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    const-string v8, "Low on space, terminate the downloads"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v7, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v7, :cond_7

    .line 173
    iget-object v7, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 v8, 0x0

    const/16 v9, -0x3039

    iget v10, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->failureCounter:I

    invoke-interface {v7, v8, v9, v10}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 175
    :cond_7
    invoke-virtual {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 187
    .end local v0           #buf:[B
    .end local v2           #numread:I
    .end local v6           #totalBytesRead:I
    :catchall_0
    move-exception v7

    move-object v3, v4

    .line 189
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v3, :cond_8

    .line 190
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 195
    :cond_8
    :goto_3
    throw v7

    .line 178
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v2       #numread:I
    .restart local v4       #out:Ljava/io/FileOutputStream;
    .restart local v6       #totalBytesRead:I
    :cond_9
    :try_start_5
    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->fireDataLoadUpdate()V

    .line 180
    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->validateNotInterrupted()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 192
    .end local v0           #buf:[B
    .end local v2           #numread:I
    .end local v4           #out:Ljava/io/FileOutputStream;
    .end local v6           #totalBytesRead:I
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    goto :goto_3

    .line 187
    :catchall_1
    move-exception v7

    goto :goto_2
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->isInterrupted:Z

    .line 471
    invoke-direct {p0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->validateNotInterrupted()Z

    .line 472
    return-void
.end method

.method public moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .parameter "oldLocation"
    .parameter "newLocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 480
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 481
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 482
    .local v3, reader:Ljava/io/BufferedInputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 484
    .local v4, writer:Ljava/io/BufferedOutputStream;
    const/16 v5, 0x2000

    :try_start_0
    new-array v0, v5, [B

    .line 486
    .local v0, buff:[B
    :goto_0
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, numChars:I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 493
    if-eqz v3, :cond_0

    .line 494
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 495
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 501
    :cond_0
    :goto_1
    const/4 v5, 0x1

    .line 505
    .end local v0           #buff:[B
    .end local v2           #numChars:I
    .end local v3           #reader:Ljava/io/BufferedInputStream;
    .end local v4           #writer:Ljava/io/BufferedOutputStream;
    :goto_2
    return v5

    .line 487
    .restart local v0       #buff:[B
    .restart local v2       #numChars:I
    .restart local v3       #reader:Ljava/io/BufferedInputStream;
    .restart local v4       #writer:Ljava/io/BufferedOutputStream;
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v4, v0, v5, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 489
    .end local v0           #buff:[B
    .end local v2           #numChars:I
    :catch_0
    move-exception v1

    .line 490
    .local v1, ex:Ljava/io/IOException;
    :try_start_3
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOException when transferring "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 491
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 493
    if-eqz v3, :cond_2

    .line 494
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    .line 495
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 500
    :cond_2
    :goto_3
    throw v5

    .line 497
    :catch_1
    move-exception v1

    .line 498
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error closing files when transferring "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 497
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #buff:[B
    .restart local v2       #numChars:I
    :catch_2
    move-exception v1

    .line 498
    .restart local v1       #ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error closing files when transferring "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 503
    .end local v0           #buff:[B
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #numChars:I
    .end local v3           #reader:Ljava/io/BufferedInputStream;
    .end local v4           #writer:Ljava/io/BufferedOutputStream;
    :cond_3
    sget-object v6, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Old location does not exist when transferring "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public startPlayProgressUpdater()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public startStreaming(Ljava/lang/String;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 2
    .parameter "mediaUrl"
    .parameter "preparedListener"
    .parameter "completionListener"
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iput-object p2, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 94
    iput-object p3, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 95
    iput-object p4, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 96
    new-instance v0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;

    invoke-direct {v0, p0, p1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;-><init>(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;Ljava/lang/String;)V

    .line 115
    .local v0, r:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method

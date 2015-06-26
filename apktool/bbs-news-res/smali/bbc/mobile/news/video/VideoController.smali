.class public Lbbc/mobile/news/video/VideoController;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;


# static fields
.field private static final PROGRESS_DRIFT:I = 0x20d

.field private static final PROGRESS_MILLI:I = 0x1f4

.field private static final STATE_POSITION:Ljava/lang/String; = "statePosition"

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_PROGRESS:I = 0x1


# instance fields
.field private final mAdCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPlayer:Landroid/media/MediaPlayer;

.field private mDisplay:Lbbc/mobile/news/video/VideoDisplayView;

.field private mDragging:Z

.field private mElapsed:Landroid/widget/TextView;

.field private mFirstPlay:Z

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mLastPos:I

.field private mLive:Landroid/view/View;

.field private mLoading:Landroid/widget/ProgressBar;

.field private mNotSeekable:Z

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mPlayPause:Landroid/widget/ImageButton;

.field private mPlayingAdvert:Z

.field private mRemaining:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mUpdatesAfterSeek:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lbbc/mobile/news/video/VideoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v3, p0, Lbbc/mobile/news/video/VideoController;->mNotSeekable:Z

    .line 66
    iput-boolean v1, p0, Lbbc/mobile/news/video/VideoController;->mFirstPlay:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbbc/mobile/news/video/VideoController;->mAdCallbacks:Ljava/util/ArrayList;

    .line 70
    iput v3, p0, Lbbc/mobile/news/video/VideoController;->mLastPos:I

    .line 71
    iput v3, p0, Lbbc/mobile/news/video/VideoController;->mUpdatesAfterSeek:I

    .line 135
    new-instance v0, Lbbc/mobile/news/video/VideoController$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/video/VideoController$1;-><init>(Lbbc/mobile/news/video/VideoController;)V

    iput-object v0, p0, Lbbc/mobile/news/video/VideoController;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/video/VideoController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 77
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lbbc/mobile/news/video/VideoController;->mFormatter:Ljava/util/Formatter;

    .line 79
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lbbc/mobile/news/video/VideoController;->mHandler:Landroid/os/Handler;

    .line 81
    sget v0, Lbbc/mobile/news/R$id;->video_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lbbc/mobile/news/video/VideoController;->mLoading:Landroid/widget/ProgressBar;

    .line 84
    sget v0, Lbbc/mobile/news/R$id;->video_play_pause:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lbbc/mobile/news/video/VideoController;->mPlayPause:Landroid/widget/ImageButton;

    .line 85
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 86
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v0, Lbbc/mobile/news/R$id;->video_elapsed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/video/VideoController;->mElapsed:Landroid/widget/TextView;

    .line 90
    sget v0, Lbbc/mobile/news/R$id;->video_seek:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    .line 91
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 93
    sget v0, Lbbc/mobile/news/R$id;->video_remaining:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/video/VideoController;->mRemaining:Landroid/widget/TextView;

    .line 95
    sget v0, Lbbc/mobile/news/R$id;->video_live:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/video/VideoController;->mLive:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 99
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/video/VideoController;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/video/VideoController;Landroid/media/MediaPlayer;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lbbc/mobile/news/video/VideoController;->updateElapsed(Landroid/media/MediaPlayer;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lbbc/mobile/news/video/VideoController;)Z
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lbbc/mobile/news/video/VideoController;->mDragging:Z

    return v0
.end method

.method static synthetic access$3(Lbbc/mobile/news/video/VideoController;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mLoading:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lbbc/mobile/news/video/VideoController;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lbbc/mobile/news/video/VideoController;->mUpdatesAfterSeek:I

    return v0
.end method

.method static synthetic access$5(Lbbc/mobile/news/video/VideoController;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lbbc/mobile/news/video/VideoController;->mLastPos:I

    return v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lbbc/mobile/news/video/VideoController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lbbc/mobile/news/video/VideoController;->mUpdatesAfterSeek:I

    return-void
.end method

.method static synthetic access$8(Lbbc/mobile/news/video/VideoController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput p1, p0, Lbbc/mobile/news/video/VideoController;->mLastPos:I

    return-void
.end method

.method static synthetic access$9(Lbbc/mobile/news/video/VideoController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .parameter "timeMs"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 412
    div-int/lit16 v3, p1, 0x3e8

    .line 413
    .local v3, totalSeconds:I
    rem-int/lit8 v2, v3, 0x3c

    .line 414
    .local v2, seconds:I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 415
    .local v1, minutes:I
    div-int/lit16 v0, v3, 0xe10

    .line 417
    .local v0, hours:I
    iget-object v4, p0, Lbbc/mobile/news/video/VideoController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 418
    if-lez v0, :cond_0

    .line 419
    iget-object v4, p0, Lbbc/mobile/news/video/VideoController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d.%02d.%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lbbc/mobile/news/video/VideoController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d.%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateElapsed(Landroid/media/MediaPlayer;)I
    .locals 7
    .parameter "mp"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 378
    const/4 v2, 0x0

    .local v2, pos:I
    const/4 v0, 0x0

    .line 380
    .local v0, duration:I
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    .line 381
    iget-boolean v3, p0, Lbbc/mobile/news/video/VideoController;->mNotSeekable:Z

    if-nez v3, :cond_4

    .line 382
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 391
    :goto_0
    if-gtz v0, :cond_0

    .line 392
    const/4 v3, 0x1

    iput-boolean v3, p0, Lbbc/mobile/news/video/VideoController;->mNotSeekable:Z

    .line 394
    :cond_0
    iget-object v3, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 395
    iget-object v6, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lbbc/mobile/news/video/VideoController;->mNotSeekable:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 396
    iget-object v6, p0, Lbbc/mobile/news/video/VideoController;->mRemaining:Landroid/widget/TextView;

    iget-boolean v3, p0, Lbbc/mobile/news/video/VideoController;->mNotSeekable:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lbbc/mobile/news/video/VideoController;->mPlayingAdvert:Z

    if-eqz v3, :cond_6

    :cond_1
    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v3, p0, Lbbc/mobile/news/video/VideoController;->mLive:Landroid/view/View;

    iget-boolean v6, p0, Lbbc/mobile/news/video/VideoController;->mNotSeekable:Z

    if-eqz v6, :cond_7

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-boolean v3, p0, Lbbc/mobile/news/video/VideoController;->mDragging:Z

    if-nez v3, :cond_2

    .line 399
    iget-object v3, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 401
    :cond_2
    iget-boolean v3, p0, Lbbc/mobile/news/video/VideoController;->mPlayingAdvert:Z

    if-nez v3, :cond_3

    .line 402
    iget-object v3, p0, Lbbc/mobile/news/video/VideoController;->mElapsed:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lbbc/mobile/news/video/VideoController;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-boolean v3, p0, Lbbc/mobile/news/video/VideoController;->mNotSeekable:Z

    if-nez v3, :cond_3

    .line 404
    iget-object v3, p0, Lbbc/mobile/news/video/VideoController;->mRemaining:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lbbc/mobile/news/video/VideoController;->stringForTime(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    move v3, v2

    .line 407
    :goto_4
    return v3

    .line 384
    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoController;->removeUpdates()V

    .line 389
    const/4 v3, -0x1

    goto :goto_4

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_5
    move v3, v5

    .line 395
    goto :goto_1

    :cond_6
    move v3, v5

    .line 396
    goto :goto_2

    :cond_7
    move v5, v4

    .line 397
    goto :goto_3
.end method


# virtual methods
.method public addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 552
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mAdCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    return-void
.end method

.method public getProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 8

    .prologue
    .line 562
    sget-object v2, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v3, "getProgress()"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :try_start_0
    iget-object v2, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .local v0, duration:I
    if-gtz v0, :cond_1

    .line 566
    .end local v0           #duration:I
    :cond_0
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    return-object v2

    .line 569
    :catch_0
    move-exception v1

    .line 570
    .local v1, e:Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    goto :goto_0

    .line 572
    .end local v1           #e:Ljava/lang/IllegalStateException;
    .restart local v0       #duration:I
    :cond_1
    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iget-object v3, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-long v4, v3

    int-to-long v6, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    goto :goto_0
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 4
    .parameter "advertUrl"

    .prologue
    .line 481
    sget-object v1, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadAd("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 483
    sget-object v1, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Playing advert: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lbbc/mobile/news/video/VideoController;->setPlayingAdvert(Z)V

    .line 486
    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lbbc/mobile/news/video/VideoController;->mDisplay:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-virtual {v2}, Lbbc/mobile/news/video/VideoDisplayView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 487
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 486
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 488
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 489
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v2, "loadAd()"

    invoke-static {v1, v2, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 494
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v1, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v2, "loadAd()"

    invoke-static {v1, v2, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 497
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v1, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v2, "loadAd()"

    invoke-static {v1, v2, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 500
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 501
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v2, "loadAd()"

    invoke-static {v1, v2, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 6
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 431
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    int-to-double v4, p2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 432
    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 433
    sget-object v0, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaPlayer.onBufferingUpdate("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lbbc/mobile/news/R$id;->video_play_pause:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 188
    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 190
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mPlayPause:Landroid/widget/ImageButton;

    sget v2, Lbbc/mobile/news/R$drawable;->ic_playback_play:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 191
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoController;->removeUpdates()V

    .line 192
    iget-boolean v1, p0, Lbbc/mobile/news/video/VideoController;->mPlayingAdvert:Z

    if-eqz v1, :cond_0

    .line 193
    sget-object v1, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v2, "Dispatching VideoAdPlayerCallback#onPause()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mAdCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 222
    :cond_0
    :goto_1
    return-void

    .line 194
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 195
    .local v0, callback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPause()V

    goto :goto_0

    .line 218
    .end local v0           #callback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 200
    :cond_2
    iget-boolean v1, p0, Lbbc/mobile/news/video/VideoController;->mPlayingAdvert:Z

    if-eqz v1, :cond_3

    .line 201
    sget-object v2, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Dispatching VideoAdPlayerCallback#"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    iget-boolean v1, p0, Lbbc/mobile/news/video/VideoController;->mFirstPlay:Z

    if-eqz v1, :cond_4

    const-string v1, "onPlay()"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v2, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mAdCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 212
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbbc/mobile/news/video/VideoController;->mFirstPlay:Z

    .line 213
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 214
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mPlayPause:Landroid/widget/ImageButton;

    sget v2, Lbbc/mobile/news/R$drawable;->ic_playback_pause:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 215
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoController;->startUpdates()V

    goto :goto_1

    .line 202
    :cond_4
    const-string v1, "onResume()"

    goto :goto_2

    .line 203
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 204
    .restart local v0       #callback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    iget-boolean v2, p0, Lbbc/mobile/news/video/VideoController;->mFirstPlay:Z

    if-eqz v2, :cond_6

    .line 205
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay()V

    goto :goto_3

    .line 208
    :cond_6
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 355
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoController;->removeUpdates()V

    .line 356
    iget-boolean v1, p0, Lbbc/mobile/news/video/VideoController;->mPlayingAdvert:Z

    if-eqz v1, :cond_0

    .line 357
    sget-object v1, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v2, "Dispatching VideoAdPlayerCallback#onCompletion()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mAdCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 362
    :cond_0
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-interface {v1, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 365
    :cond_1
    return-void

    .line 358
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 359
    .local v0, callback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onEnded()V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 467
    sget-object v1, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaPlayer.onError("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-boolean v1, p0, Lbbc/mobile/news/video/VideoController;->mPlayingAdvert:Z

    if-eqz v1, :cond_0

    .line 469
    sget-object v1, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v2, "Dispatching VideoAdPlayerCallback#onError()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mAdCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 474
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 470
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 471
    .local v0, callback:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError()V

    goto :goto_0
.end method

.method public onFragmentPause()V
    .locals 1

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/video/VideoController;->onClick(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onFragmentSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 240
    sget-object v1, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v2, "onFragmentSaveInstanceState()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 244
    .local v0, currentPosition:I
    if-ltz v0, :cond_0

    .line 245
    const-string v1, "statePosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0           #currentPosition:I
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onFragmentViewStateRestored(Landroid/os/Bundle;)Z
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, restored:Z
    sget-object v2, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v3, "onFragmentViewStateRestored()"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lbbc/mobile/news/video/VideoController;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 261
    iget-boolean v2, p0, Lbbc/mobile/news/video/VideoController;->mPlayingAdvert:Z

    if-nez v2, :cond_0

    .line 262
    iget-object v2, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 266
    :cond_0
    :try_start_0
    const-string v2, "statePosition"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 267
    .local v1, savedPosition:I
    iget-object v2, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    if-ltz v1, :cond_1

    .line 268
    iget-object v2, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1           #savedPosition:I
    :cond_1
    :goto_0
    return v0

    .line 271
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 442
    sget-object v2, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MediaPlayer.onInfo("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lbbc/mobile/news/video/VideoController;->mLoading:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_3

    .line 444
    const/16 v2, 0x321

    if-ne p2, v2, :cond_0

    .line 445
    iput-boolean v0, p0, Lbbc/mobile/news/video/VideoController;->mNotSeekable:Z

    .line 459
    :goto_0
    return v0

    .line 448
    :cond_0
    const/16 v2, 0x2bd

    if-ne p2, v2, :cond_1

    .line 449
    iget-object v2, p0, Lbbc/mobile/news/video/VideoController;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 452
    :cond_1
    const/16 v2, 0x2be

    if-eq p2, v2, :cond_2

    .line 453
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 455
    :cond_2
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mLoading:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 459
    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    const/4 v2, 0x1

    .line 325
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mDisplay:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView;->setVideoWidth(I)V

    .line 326
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mDisplay:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView;->setVideoHeight(I)V

    .line 328
    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 334
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 336
    iget-boolean v0, p0, Lbbc/mobile/news/video/VideoController;->mPlayingAdvert:Z

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 339
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/video/VideoController;->onClick(Landroid/view/View;)V

    .line 340
    return-void

    .line 330
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 291
    if-eqz p3, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 294
    .local v0, playing:Z
    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 300
    :goto_0
    if-eqz v0, :cond_1

    .line 301
    :try_start_1
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 310
    .end local v0           #playing:Z
    :cond_0
    :goto_1
    return-void

    .line 303
    .restart local v0       #playing:Z
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 306
    :catch_0
    move-exception v1

    goto :goto_1

    .line 296
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 372
    sget-object v0, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaPlayer.onSeekComplete() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, p1}, Lbbc/mobile/news/video/VideoController;->updateElapsed(Landroid/media/MediaPlayer;)I

    .line 374
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/video/VideoController;->mDragging:Z

    .line 284
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoController;->removeUpdates()V

    .line 285
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 286
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/video/VideoController;->mDragging:Z

    .line 316
    const/4 v0, 0x2

    iput v0, p0, Lbbc/mobile/news/video/VideoController;->mUpdatesAfterSeek:I

    .line 317
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoController;->startUpdates()V

    .line 318
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 346
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mDisplay:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-virtual {v0, p2}, Lbbc/mobile/news/video/VideoDisplayView;->setVideoWidth(I)V

    .line 347
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mDisplay:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-virtual {v0, p3}, Lbbc/mobile/news/video/VideoDisplayView;->setVideoHeight(I)V

    .line 348
    return-void
.end method

.method public pauseAd()V
    .locals 2

    .prologue
    .line 526
    sget-object v0, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v1, "pauseAd()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 529
    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playAd()V
    .locals 2

    .prologue
    .line 508
    sget-object v0, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v1, "playAd()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 557
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mAdCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 558
    return-void
.end method

.method public removeUpdates()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    return-void
.end method

.method public resumeAd()V
    .locals 2

    .prologue
    .line 539
    sget-object v0, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v1, "resumeAd()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 542
    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentPlayer(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "currentPlayer"

    .prologue
    .line 108
    iput-object p1, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    .line 109
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 110
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 111
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 112
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 113
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 114
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 115
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 116
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "onCompletionListener"

    .prologue
    .line 120
    iput-object p1, p0, Lbbc/mobile/news/video/VideoController;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 121
    return-void
.end method

.method public setPlayingAdvert(Z)V
    .locals 3
    .parameter "playingAdvert"

    .prologue
    const/4 v1, 0x0

    .line 125
    iput-boolean p1, p0, Lbbc/mobile/news/video/VideoController;->mPlayingAdvert:Z

    .line 126
    iput-boolean p1, p0, Lbbc/mobile/news/video/VideoController;->mFirstPlay:Z

    .line 127
    iget-object v2, p0, Lbbc/mobile/news/video/VideoController;->mElapsed:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 130
    return-void

    :cond_0
    move v0, v1

    .line 127
    goto :goto_0

    .line 129
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setVideoDisplay(Lbbc/mobile/news/video/VideoDisplayView;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 103
    iput-object p1, p0, Lbbc/mobile/news/video/VideoController;->mDisplay:Lbbc/mobile/news/video/VideoDisplayView;

    .line 104
    return-void
.end method

.method public startUpdates()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 171
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 174
    :cond_0
    return-void
.end method

.method public stopAd()V
    .locals 2

    .prologue
    .line 513
    sget-object v0, Lbbc/mobile/news/video/VideoController;->TAG:Ljava/lang/String;

    const-string v1, "stopAd()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 516
    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    goto :goto_0
.end method

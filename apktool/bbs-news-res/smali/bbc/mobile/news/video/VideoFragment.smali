.class public Lbbc/mobile/news/video/VideoFragment;
.super Landroid/support/v4/app/Fragment;
.source "VideoFragment.java"

# interfaces
.implements Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I = null

.field private static final ADVERT_LOAD_TIMEOUT:I = 0x1388

.field private static final ARG_REQUEST:Ljava/lang/String; = "argRequest"

.field public static final TAG:Ljava/lang/String;

.field private static sThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field protected mAdsContainer:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field protected mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

.field protected mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field protected mAdvertContainer:Landroid/view/ViewGroup;

.field private mAdvertHandler:Landroid/os/Handler;

.field private mAdvertLoadFailure:Ljava/lang/Runnable;

.field private mControlsUiHider:Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;

.field private mPlayingContent:Z

.field protected mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

.field protected mSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

.field private mSystemUiHider:Lbbc/mobile/news/video/SystemUiHider;

.field private mVideoCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mVideoController:Lbbc/mobile/news/video/VideoController;

.field private mVideoDisplay:Lbbc/mobile/news/video/VideoDisplayView;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field private mVideoRequest:Lbbc/mobile/news/video/VideoRequest;


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType()[I
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lbbc/mobile/news/video/VideoFragment;->$SWITCH_TABLE$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->values()[Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_4
    :try_start_4
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_5
    :try_start_5
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_6
    :try_start_6
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_7
    :try_start_7
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_8
    :try_start_8
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_9
    :try_start_9
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_a
    :try_start_a
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_b
    :try_start_b
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_c
    :try_start_c
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_d
    sput-object v0, Lbbc/mobile/news/video/VideoFragment;->$SWITCH_TABLE$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 44
    const-class v0, Lbbc/mobile/news/video/VideoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 48
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lbbc/mobile/news/video/VideoFragment;->sThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdvertHandler:Landroid/os/Handler;

    .line 278
    new-instance v0, Lbbc/mobile/news/video/VideoFragment$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/video/VideoFragment$1;-><init>(Lbbc/mobile/news/video/VideoFragment;)V

    iput-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdvertLoadFailure:Ljava/lang/Runnable;

    .line 379
    new-instance v0, Lbbc/mobile/news/video/VideoFragment$2;

    invoke-direct {v0, p0}, Lbbc/mobile/news/video/VideoFragment$2;-><init>(Lbbc/mobile/news/video/VideoFragment;)V

    iput-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 86
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/video/VideoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    invoke-direct {p0}, Lbbc/mobile/news/video/VideoFragment;->playContent()V

    return-void
.end method

.method static synthetic access$1(Lbbc/mobile/news/video/VideoFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lbbc/mobile/news/video/VideoFragment;->mPlayingContent:Z

    return v0
.end method

.method static synthetic access$2(Lbbc/mobile/news/video/VideoFragment;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3(Lbbc/mobile/news/video/VideoFragment;)Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mControlsUiHider:Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;

    return-object v0
.end method

.method static synthetic access$4(Lbbc/mobile/news/video/VideoFragment;)Lbbc/mobile/news/video/SystemUiHider;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mSystemUiHider:Lbbc/mobile/news/video/SystemUiHider;

    return-object v0
.end method

.method private static hasSoftNavigation(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 310
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 311
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static newInstance(Lbbc/mobile/news/video/VideoRequest;)Lbbc/mobile/news/video/VideoFragment;
    .locals 3
    .parameter "videoRequest"

    .prologue
    .line 76
    new-instance v1, Lbbc/mobile/news/video/VideoFragment;

    invoke-direct {v1}, Lbbc/mobile/news/video/VideoFragment;-><init>()V

    .line 77
    .local v1, frag:Lbbc/mobile/news/video/VideoFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "argRequest"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    invoke-virtual {v1, v0}, Lbbc/mobile/news/video/VideoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v1
.end method

.method private playContent()V
    .locals 2

    .prologue
    .line 397
    sget-object v0, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string v1, "playContent()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/video/VideoFragment;->mPlayingContent:Z

    .line 399
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbc/mobile/news/video/VideoController;->setPlayingAdvert(Z)V

    .line 401
    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 406
    :goto_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoDisplay:Lbbc/mobile/news/video/VideoDisplayView;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView;->attachDisplay(Landroid/media/MediaPlayer;)V

    .line 407
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/video/VideoController;->setCurrentPlayer(Landroid/media/MediaPlayer;)V

    .line 409
    :try_start_1
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoRequest:Lbbc/mobile/news/video/VideoRequest;

    invoke-virtual {v1}, Lbbc/mobile/news/video/VideoRequest;->getContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 411
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 425
    :goto_1
    return-void

    .line 422
    :catch_0
    move-exception v0

    goto :goto_1

    .line 419
    :catch_1
    move-exception v0

    goto :goto_1

    .line 416
    :catch_2
    move-exception v0

    goto :goto_1

    .line 413
    :catch_3
    move-exception v0

    goto :goto_1

    .line 403
    :catch_4
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected getImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 151
    :cond_0
    sget-object v0, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getImaSdkSettings: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/video/VideoFragment;->mSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mSdkSettings:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object v0
.end method

.method public onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 338
    sget-object v0, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;->getError()Lcom/google/ads/interactivemedia/v3/api/AdError;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lbbc/mobile/news/video/VideoFragment;->playContent()V

    .line 341
    return-void
.end method

.method public onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 356
    invoke-static {}, Lbbc/mobile/news/video/VideoFragment;->$SWITCH_TABLE$com$google$ads$interactivemedia$v3$api$AdEvent$AdEventType()[I

    move-result-object v0

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent;->getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 368
    :goto_0
    :pswitch_0
    return-void

    .line 358
    :pswitch_1
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdvertHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mAdvertLoadFailure:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 359
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->start()V

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 346
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdvertHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mAdvertLoadFailure:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;->getAdsManager()Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 348
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 349
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V

    .line 350
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdsManager:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsManager;->init()V

    .line 351
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 302
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget-object v0, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argRequest"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/video/VideoRequest;

    iput-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoRequest:Lbbc/mobile/news/video/VideoRequest;

    .line 96
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 97
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->getInstance()Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    .line 98
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoFragment;->getImaSdkSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsLoader(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    .line 99
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 100
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v0, p0}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V

    .line 101
    sget-object v0, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSdkFactory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/video/VideoFragment;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAdsLoader: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/video/VideoFragment;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 158
    sget v0, Lbbc/mobile/news/R$layout;->video_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 110
    sget-object v1, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    sget-object v1, Lbbc/mobile/news/video/VideoFragment;->sThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lbbc/mobile/news/video/VideoFragment$3;

    invoke-direct {v2, p0}, Lbbc/mobile/news/video/VideoFragment$3;-><init>(Lbbc/mobile/news/video/VideoFragment;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 126
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    sget-object v1, Lbbc/mobile/news/video/VideoFragment;->sThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lbbc/mobile/news/video/VideoFragment$4;

    invoke-direct {v2, p0, v0}, Lbbc/mobile/news/video/VideoFragment$4;-><init>(Lbbc/mobile/news/video/VideoFragment;Ljava/util/concurrent/Future;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onDisplayChanged(Lbbc/mobile/news/video/VideoDisplayView;II)V
    .locals 0
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 327
    return-void
.end method

.method public onDisplayCreated(Lbbc/mobile/news/video/VideoDisplayView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 319
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Lbbc/mobile/news/video/VideoDisplayView;->attachDisplay(Landroid/media/MediaPlayer;)V

    .line 320
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/video/VideoController;->setCurrentPlayer(Landroid/media/MediaPlayer;)V

    .line 321
    return-void
.end method

.method public onDisplayDestroyed(Lbbc/mobile/news/video/VideoDisplayView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 333
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 373
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 374
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    invoke-virtual {v0}, Lbbc/mobile/news/video/VideoController;->onFragmentPause()V

    .line 377
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 292
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/video/VideoController;->onFragmentSaveInstanceState(Landroid/os/Bundle;)V

    .line 295
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x1388

    .line 164
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 166
    sget-object v1, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string v2, "onViewCreated"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget v1, Lbbc/mobile/news/R$id;->video_display:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/video/VideoDisplayView;

    iput-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoDisplay:Lbbc/mobile/news/video/VideoDisplayView;

    .line 169
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoDisplay:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-virtual {v1, p0}, Lbbc/mobile/news/video/VideoDisplayView;->setOnVideoDisplayListener(Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;)V

    .line 171
    new-instance v1, Lbbc/mobile/news/video/VideoController;

    invoke-direct {v1, p1}, Lbbc/mobile/news/video/VideoController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    .line 172
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    iget-object v2, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoCompleted:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Lbbc/mobile/news/video/VideoController;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 173
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    iget-object v2, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoDisplay:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-virtual {v1, v2}, Lbbc/mobile/news/video/VideoController;->setVideoDisplay(Lbbc/mobile/news/video/VideoDisplayView;)V

    .line 175
    sget v1, Lbbc/mobile/news/R$id;->video_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mAdvertContainer:Landroid/view/ViewGroup;

    .line 177
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoDisplay:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/video/VideoFragment;->hasSoftNavigation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v3, v1}, Lbbc/mobile/news/video/SystemUiHider;->getInstance(Landroid/app/Activity;Landroid/view/View;I)Lbbc/mobile/news/video/SystemUiHider;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mSystemUiHider:Lbbc/mobile/news/video/SystemUiHider;

    .line 181
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mSystemUiHider:Lbbc/mobile/news/video/SystemUiHider;

    invoke-virtual {v1}, Lbbc/mobile/news/video/SystemUiHider;->setup()V

    .line 183
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mSystemUiHider:Lbbc/mobile/news/video/SystemUiHider;

    invoke-virtual {v1, v4}, Lbbc/mobile/news/video/SystemUiHider;->createControlsUiHider(I)Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mControlsUiHider:Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;

    .line 185
    sget v1, Lbbc/mobile/news/R$id;->video_controls:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, controlsView:Landroid/view/View;
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mSystemUiHider:Lbbc/mobile/news/video/SystemUiHider;

    new-instance v2, Lbbc/mobile/news/video/VideoFragment$5;

    invoke-direct {v2, p0, v0}, Lbbc/mobile/news/video/VideoFragment$5;-><init>(Lbbc/mobile/news/video/VideoFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lbbc/mobile/news/video/SystemUiHider;->setOnVisibilityChangeListener(Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;)V

    .line 226
    new-instance v1, Lbbc/mobile/news/video/VideoFragment$6;

    invoke-direct {v1, p0}, Lbbc/mobile/news/video/VideoFragment$6;-><init>(Lbbc/mobile/news/video/VideoFragment;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    sget v1, Lbbc/mobile/news/R$id;->video_play_pause:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/video/VideoFragment;->mControlsUiHider:Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    sget v1, Lbbc/mobile/news/R$id;->video_seek:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/video/VideoFragment;->mControlsUiHider:Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment;->mControlsUiHider:Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;

    invoke-virtual {v1, v4}, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;->delayed(I)V

    .line 244
    return-void

    .line 178
    .end local v0           #controlsView:Landroid/view/View;
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, stateRestored:Z
    if-eqz p1, :cond_0

    iget-object v3, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    invoke-virtual {v3, p1}, Lbbc/mobile/news/video/VideoController;->onFragmentViewStateRestored(Landroid/os/Bundle;)Z

    move-result v2

    .line 256
    :cond_0
    if-nez v2, :cond_1

    .line 257
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 258
    iget-object v3, p0, Lbbc/mobile/news/video/VideoFragment;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v0

    .line 259
    .local v0, container:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    iget-object v3, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoController:Lbbc/mobile/news/video/VideoController;

    invoke-interface {v0, v3}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setPlayer(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V

    .line 260
    iget-object v3, p0, Lbbc/mobile/news/video/VideoFragment;->mAdvertContainer:Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->setAdContainer(Landroid/view/ViewGroup;)V

    .line 261
    iget-object v3, p0, Lbbc/mobile/news/video/VideoFragment;->mSdkFactory:Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkFactory;->createAdsRequest()Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    move-result-object v1

    .line 262
    .local v1, request:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    iget-object v3, p0, Lbbc/mobile/news/video/VideoFragment;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->contentComplete()V

    .line 263
    sget-object v3, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    const-string v4, "Called AdsLoader.contentComplete()"

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v3, p0, Lbbc/mobile/news/video/VideoFragment;->mVideoRequest:Lbbc/mobile/news/video/VideoRequest;

    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lbbc/mobile/news/video/VideoRequest;->applyToAdRequest(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)Z

    .line 265
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdDisplayContainer(Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)V

    .line 266
    sget-object v3, Lbbc/mobile/news/video/VideoFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Making ad-request: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lbbc/mobile/news/video/VideoFragment;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/api/AdsLoader;

    invoke-interface {v3, v1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader;->requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V

    .line 268
    iget-object v3, p0, Lbbc/mobile/news/video/VideoFragment;->mAdvertHandler:Landroid/os/Handler;

    iget-object v4, p0, Lbbc/mobile/news/video/VideoFragment;->mAdvertLoadFailure:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    .end local v0           #container:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .end local v1           #request:Lcom/google/ads/interactivemedia/v3/api/AdsRequest;
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    invoke-direct {p0}, Lbbc/mobile/news/video/VideoFragment;->playContent()V

    goto :goto_0
.end method

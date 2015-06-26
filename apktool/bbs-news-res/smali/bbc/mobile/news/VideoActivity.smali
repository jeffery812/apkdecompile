.class public Lbbc/mobile/news/VideoActivity;
.super Lbbc/mobile/news/BaseActivity;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;
    }
.end annotation


# static fields
.field private static final HTML_FILE_PATH:Ljava/lang/String; = "http://www.bbc.co.uk/player/emp/android/405194/index.html"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field handler:Landroid/os/Handler;

.field isPlaylistUrl:Z

.field mIsLive:Z

.field mIsRadio:Z

.field mNetwork:I

.field masterbrand:Ljava/lang/String;

.field playerInitialised:Z

.field playlistUrl:Ljava/lang/String;

.field webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lbbc/mobile/news/VideoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/VideoActivity;->TAG:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lbbc/mobile/news/BaseActivity;-><init>()V

    .line 87
    iput-boolean v1, p0, Lbbc/mobile/news/VideoActivity;->playerInitialised:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lbbc/mobile/news/VideoActivity;->mNetwork:I

    .line 92
    iput-boolean v1, p0, Lbbc/mobile/news/VideoActivity;->mIsRadio:Z

    .line 93
    iput-boolean v1, p0, Lbbc/mobile/news/VideoActivity;->mIsLive:Z

    .line 96
    iput-boolean v1, p0, Lbbc/mobile/news/VideoActivity;->isPlaylistUrl:Z

    .line 50
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/VideoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lbbc/mobile/news/VideoActivity;->createCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/VideoActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lbbc/mobile/news/VideoActivity;->startFlashPlayback(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lbbc/mobile/news/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Lbbc/mobile/news/VideoActivity;->loadPlaylist()V

    return-void
.end method

.method private callHiddenWebViewMethod(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    .line 256
    iget-object v2, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 258
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 259
    .local v1, method:Ljava/lang/reflect/Method;
    iget-object v2, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 268
    .end local v1           #method:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/NoSuchMethodException;
    const-string v2, "flash_pb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No such method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 262
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v2, "flash_pb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Illegal Access: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 264
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "flash_pb"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invocation Target Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private clickWebView()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/high16 v5, 0x4248

    .line 572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, start:J
    move-wide v2, v0

    move v6, v5

    move v7, v4

    .line 573
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 575
    .local v14, ev:Landroid/view/MotionEvent;
    iget-object v2, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v14}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 576
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 577
    const-wide/16 v2, 0xfa

    add-long v8, v0, v2

    const/4 v10, 0x1

    move-wide v6, v0

    move v11, v5

    move v12, v5

    move v13, v4

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .line 579
    iget-object v2, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v14}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 580
    invoke-virtual {v14}, Landroid/view/MotionEvent;->recycle()V

    .line 581
    return-void
.end method

.method private createCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "playlist"

    .prologue
    .line 480
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 481
    .local v3, size:Landroid/graphics/Point;
    invoke-direct {p0, v3}, Lbbc/mobile/news/VideoActivity;->getWebViewSize(Landroid/graphics/Point;)V

    .line 483
    const/16 v2, 0x190

    .line 485
    .local v2, rate:I
    iget v5, p0, Lbbc/mobile/news/VideoActivity;->mNetwork:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 486
    const/16 v2, 0xc8

    .line 488
    :cond_0
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 489
    .local v4, width:I
    iget v1, v3, Landroid/graphics/Point;->y:I

    .line 492
    .local v1, height:I
    invoke-static {p1}, Lbbc/mobile/news/helper/LinkGenerator;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 495
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:playlist(\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 496
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 495
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, command:Ljava/lang/String;
    return-object v0
.end method

.method private doStats()V
    .locals 9

    .prologue
    .line 377
    invoke-virtual {p0}, Lbbc/mobile/news/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 379
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "counterName"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, counterName:Ljava/lang/String;
    const-string v1, "category"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, categoryName:Ljava/lang/String;
    const-string v1, "headline"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, headline:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const-string v4, "unknown-video-countername"

    .line 386
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    const-string v2, "unknown-category"

    .line 389
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 390
    const-string v3, "unknown-headline"

    .line 392
    :cond_2
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v8

    .line 393
    .local v8, stats:Lbbc/mobile/news/stats/Stats;
    if-eqz v8, :cond_3

    .line 394
    invoke-static {p0}, Lbbc/mobile/news/helper/ConnectivityStatus;->getConnectionTypeAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, connectivity:Ljava/lang/String;
    iget-boolean v1, p0, Lbbc/mobile/news/VideoActivity;->mIsLive:Z

    if-eqz v1, :cond_4

    .line 396
    invoke-virtual {v8, v4, v6}, Lbbc/mobile/news/stats/Stats;->logPlayLiveVideoACTION(Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;

    .line 406
    .end local v6           #connectivity:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 399
    .restart local v6       #connectivity:Ljava/lang/String;
    :cond_4
    invoke-virtual {v8, v4, v6}, Lbbc/mobile/news/stats/Stats;->logPlayInStoryVideoACTION(Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;

    .line 400
    invoke-virtual {v8}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    .line 401
    .local v0, omniture:Lbbc/mobile/news/stats/Omniture3;
    if-eqz v0, :cond_3

    move-object v1, p0

    move-object v5, v4

    .line 402
    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/stats/Omniture3;->logVideoStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    goto :goto_0
.end method

.method private fixFlashNetworkTypeIdentifiers(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 664
    const-string v0, "wifi"

    .line 666
    .local v0, networkType:Ljava/lang/String;
    iget v1, p0, Lbbc/mobile/news/VideoActivity;->mNetwork:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 667
    const-string v0, "3g"

    .line 669
    :cond_0
    const-string v1, "%7Bbandwidth%7D"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    const-string v2, "%7bbandwidth%7d"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 671
    const-string v2, "\\{bandwidth\\}"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 669
    return-object v1
.end method

.method private getWebViewSize(Landroid/graphics/Point;)V
    .locals 4
    .parameter "size"

    .prologue
    .line 273
    invoke-virtual {p0}, Lbbc/mobile/news/VideoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 274
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 275
    .local v2, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 276
    .local v1, height:I
    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 277
    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 278
    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 226
    .line 227
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lbbc/mobile/news/VideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 229
    .local v0, mng:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 231
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 234
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private loadPlaylist()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-boolean v0, p0, Lbbc/mobile/news/VideoActivity;->isPlaylistUrl:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lbbc/mobile/news/VideoActivity;->playlistUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/VideoActivity;->loadPlaylistUrl(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/VideoActivity;->playlistUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v1}, Lbbc/mobile/news/VideoActivity;->onTextSuccess(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private setWebView()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 283
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 285
    .local v4, size:Landroid/graphics/Point;
    invoke-direct {p0, v4}, Lbbc/mobile/news/VideoActivity;->getWebViewSize(Landroid/graphics/Point;)V

    .line 287
    iget v2, v4, Landroid/graphics/Point;->x:I

    .line 288
    .local v2, playerWidth:I
    iget v1, v4, Landroid/graphics/Point;->y:I

    .line 292
    .local v1, playerHeight:I
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    .line 293
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 297
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 300
    iget-boolean v6, p0, Lbbc/mobile/news/VideoActivity;->mIsRadio:Z

    if-nez v6, :cond_0

    .line 301
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6, v10}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    .line 303
    :cond_0
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    const/high16 v7, -0x100

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 306
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    new-instance v7, Lbbc/mobile/news/VideoActivity$3;

    invoke-direct {v7, p0}, Lbbc/mobile/news/VideoActivity$3;-><init>(Lbbc/mobile/news/VideoActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    new-instance v7, Lbbc/mobile/news/VideoActivity$4;

    invoke-direct {v7, p0}, Lbbc/mobile/news/VideoActivity$4;-><init>(Lbbc/mobile/news/VideoActivity;)V

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 332
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 333
    .local v5, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v5, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 337
    :try_start_0
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setPluginsEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 338
    .local v3, setPluginsEnabled:Ljava/lang/reflect/Method;
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v3           #setPluginsEnabled:Ljava/lang/reflect/Method;
    :goto_0
    sget-object v6, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v5, v6}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 361
    sget v6, Lbbc/mobile/news/R$id;->video_view:I

    invoke-virtual {p0, v6}, Lbbc/mobile/news/VideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 362
    .local v0, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 363
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    new-instance v7, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;

    invoke-direct {v7, p0}, Lbbc/mobile/news/VideoActivity$FlashJavaScriptInterface;-><init>(Lbbc/mobile/news/VideoActivity;)V

    const-string v8, "flash"

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    iget-object v6, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    const-string v7, "http://www.bbc.co.uk/player/emp/android/405194/index.html"

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0}, Lbbc/mobile/news/VideoActivity;->doStats()V

    .line 373
    return-void

    .line 349
    .end local v0           #ll:Landroid/widget/LinearLayout;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 346
    :catch_1
    move-exception v6

    goto :goto_0

    .line 343
    :catch_2
    move-exception v6

    goto :goto_0

    .line 340
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method private startFlashPlayback(Ljava/lang/String;)Z
    .locals 2
    .parameter "command"

    .prologue
    const/4 v0, 0x1

    .line 504
    if-eqz p1, :cond_0

    .line 505
    iget-object v1, p0, Lbbc/mobile/news/VideoActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Lbbc/mobile/news/VideoActivity;->clickWebView()V

    .line 507
    iput-boolean v0, p0, Lbbc/mobile/news/VideoActivity;->playerInitialised:Z

    .line 511
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startNativePlayback(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 516
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    .local v1, i:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 520
    .local v2, uri:Landroid/net/Uri;
    iget-boolean v3, p0, Lbbc/mobile/news/VideoActivity;->mIsRadio:Z

    if-eqz v3, :cond_0

    .line 521
    const-string v3, "audio/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    :goto_0
    const/high16 v3, 0x800

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0, v1}, Lbbc/mobile/news/VideoActivity;->startActivity(Landroid/content/Intent;)V

    .line 529
    invoke-direct {p0}, Lbbc/mobile/news/VideoActivity;->doStats()V

    .line 531
    invoke-virtual {p0}, Lbbc/mobile/news/VideoActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_1
    return-void

    .line 523
    :cond_0
    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 535
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lbbc/mobile/news/VideoActivity;->onTextFailed()V

    goto :goto_1
.end method


# virtual methods
.method protected genericRequest(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 651
    if-eqz p1, :cond_1

    .line 653
    invoke-static {}, Lbbc/mobile/news/helper/FlashUtilsNew;->isNativeCapable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lbbc/mobile/news/VideoActivity;->mIsLive:Z

    if-eqz v1, :cond_0

    .line 654
    invoke-direct {p0, p1}, Lbbc/mobile/news/VideoActivity;->fixFlashNetworkTypeIdentifiers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 656
    :cond_0
    new-instance v0, Lbbc/mobile/news/feed/FeedManager;

    const-string v1, "VideoGenericRequestFeedManager"

    invoke-direct {v0, v1}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    .line 657
    .local v0, fm:Lbbc/mobile/news/feed/FeedManager;
    new-instance v2, Lbbc/mobile/news/model/Feed;

    const-string v1, "text"

    const/4 v3, -0x7

    invoke-direct {v2, v1, v3, p1}, Lbbc/mobile/news/model/Feed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lbbc/mobile/news/VideoActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/FeedManager;->addTextFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 658
    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 660
    .end local v0           #fm:Lbbc/mobile/news/feed/FeedManager;
    :cond_1
    return-void
.end method

.method public getActivityScreenOrientation()I
    .locals 1

    .prologue
    .line 727
    invoke-static {}, Lbbc/mobile/news/helper/FlashUtilsNew;->isNativeCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->getActivityScreenOrientation()I

    move-result v0

    .line 730
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected killAudioIfPlaying()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method protected loadPlaylistUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 540
    if-eqz p1, :cond_1

    .line 542
    iget-boolean v0, p0, Lbbc/mobile/news/VideoActivity;->mIsLive:Z

    if-nez v0, :cond_0

    .line 548
    const-string v0, "%7Bbandwidth%7D"

    const-string v1, "wifi"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 549
    const-string v0, "%7bbandwidth%7d"

    const-string v1, "wifi"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 550
    const-string v0, "\\{bandwidth\\}"

    const-string v1, "wifi"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 553
    iget v0, p0, Lbbc/mobile/news/VideoActivity;->mNetwork:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 558
    const-string v0, ".*?newschannel/wifi$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    const-string v0, "wifi$"

    const-string v1, "3g"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 564
    :cond_0
    invoke-virtual {p0, p1}, Lbbc/mobile/news/VideoActivity;->genericRequest(Ljava/lang/String;)V

    .line 568
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x400

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0, v1}, Lbbc/mobile/news/VideoActivity;->requestWindowFeature(I)Z

    .line 107
    invoke-virtual {p0}, Lbbc/mobile/news/VideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 110
    sget v3, Lbbc/mobile/news/R$layout;->video:I

    invoke-virtual {p0, v3}, Lbbc/mobile/news/VideoActivity;->setContentView(I)V

    .line 120
    invoke-virtual {p0}, Lbbc/mobile/news/VideoActivity;->killAudioIfPlaying()V

    .line 138
    invoke-direct {p0}, Lbbc/mobile/news/VideoActivity;->isNetworkAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    const-string v2, "No network"

    .line 140
    const-string v3, "This content cannot be played. Please try again later."

    .line 139
    invoke-static {p0, v2, v3, v1}, Lbbc/mobile/news/dialog/SystemDialog;->showStatic(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p0}, Lbbc/mobile/news/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "mediaType"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, mediaType:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 146
    const-string v3, "audio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lbbc/mobile/news/VideoActivity;->mIsRadio:Z

    .line 148
    :cond_2
    invoke-virtual {p0}, Lbbc/mobile/news/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "isLive"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lbbc/mobile/news/VideoActivity;->mIsLive:Z

    .line 151
    invoke-static {}, Lbbc/mobile/news/helper/FlashUtilsNew;->networkType()I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/VideoActivity;->mNetwork:I

    .line 162
    invoke-virtual {p0}, Lbbc/mobile/news/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "bbc.avplayer.url"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/VideoActivity;->playlistUrl:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lbbc/mobile/news/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "bbc.avplayer.isplaylist"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lbbc/mobile/news/VideoActivity;->isPlaylistUrl:Z

    .line 169
    iget-object v1, p0, Lbbc/mobile/news/VideoActivity;->playlistUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 171
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->hasDataWarningBeenShown(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 173
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    sget v2, Lbbc/mobile/news/R$string;->video_warning_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 175
    sget v2, Lbbc/mobile/news/R$string;->video_warning_message:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 176
    sget v2, Lbbc/mobile/news/R$string;->play:I

    new-instance v3, Lbbc/mobile/news/VideoActivity$1;

    invoke-direct {v3, p0}, Lbbc/mobile/news/VideoActivity$1;-><init>(Lbbc/mobile/news/VideoActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 186
    sget v2, Lbbc/mobile/news/R$string;->cancel:I

    new-instance v3, Lbbc/mobile/news/VideoActivity$2;

    invoke-direct {v3, p0}, Lbbc/mobile/news/VideoActivity$2;-><init>(Lbbc/mobile/news/VideoActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 146
    goto :goto_1

    .line 199
    :cond_4
    invoke-direct {p0}, Lbbc/mobile/news/VideoActivity;->loadPlaylist()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 251
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lbbc/mobile/news/VideoActivity;->callHiddenWebViewMethod(Ljava/lang/String;)V

    .line 252
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->onPause()V

    .line 253
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 245
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lbbc/mobile/news/VideoActivity;->callHiddenWebViewMethod(Ljava/lang/String;)V

    .line 246
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->onResume()V

    .line 247
    return-void
.end method

.method public onTextFailed()V
    .locals 3

    .prologue
    .line 645
    sget v0, Lbbc/mobile/news/R$string;->video_error_title:I

    .line 646
    sget v1, Lbbc/mobile/news/R$string;->video_error_message:I

    const/4 v2, 0x1

    .line 645
    invoke-static {p0, v0, v1, v2}, Lbbc/mobile/news/dialog/SystemDialog;->showStatic(Landroid/app/Activity;IIZ)V

    .line 647
    return-void
.end method

.method public onTextSuccess(Ljava/lang/String;II)V
    .locals 8
    .parameter "text"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 587
    iget-boolean v5, p0, Lbbc/mobile/news/VideoActivity;->mIsLive:Z

    if-eqz v5, :cond_2

    .line 589
    :try_start_0
    invoke-static {}, Lbbc/mobile/news/helper/FlashUtilsNew;->isNativeCapable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 594
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 595
    .local v3, json:Lorg/json/JSONObject;
    const-string v5, "media"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 596
    .local v0, array:Lorg/json/JSONObject;
    const-string v5, "connection"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 597
    .local v1, connection:Lorg/json/JSONObject;
    const-string v5, "href"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, url:Ljava/lang/String;
    sget-object v5, Lbbc/mobile/news/VideoActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got live News Channel url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-direct {p0, v4}, Lbbc/mobile/news/VideoActivity;->startNativePlayback(Ljava/lang/String;)V

    .line 640
    .end local v0           #array:Lorg/json/JSONObject;
    .end local v1           #connection:Lorg/json/JSONObject;
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-static {p0}, Lbbc/mobile/news/helper/FlashUtilsNew;->isFlashCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 605
    iput-object p1, p0, Lbbc/mobile/news/VideoActivity;->playlistUrl:Ljava/lang/String;

    .line 606
    const/4 v5, 0x1

    iput-boolean v5, p0, Lbbc/mobile/news/VideoActivity;->isPlaylistUrl:Z

    .line 609
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lbbc/mobile/news/VideoActivity;->handler:Landroid/os/Handler;

    .line 610
    invoke-direct {p0}, Lbbc/mobile/news/VideoActivity;->setWebView()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v2

    .line 618
    .local v2, e:Lorg/json/JSONException;
    sget-object v5, Lbbc/mobile/news/VideoActivity;->TAG:Ljava/lang/String;

    const-string v6, "JSONException when parsing Mediaselector reponse"

    invoke-static {v5, v6, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 619
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 613
    .end local v2           #e:Lorg/json/JSONException;
    :cond_1
    :try_start_1
    sget v5, Lbbc/mobile/news/R$string;->video_error_title:I

    .line 614
    sget v6, Lbbc/mobile/news/R$string;->video_error_message:I

    const/4 v7, 0x1

    .line 613
    invoke-static {p0, v5, v6, v7}, Lbbc/mobile/news/dialog/SystemDialog;->showStatic(Landroid/app/Activity;IIZ)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 625
    :cond_2
    const-string v5, "\\s+$"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 628
    const-string v5, "^[a-zA-Z0-9]+://.*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 629
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 632
    :cond_3
    const-string v5, "www.bbc.co.uk/worldservice"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 634
    invoke-virtual {p0, p1}, Lbbc/mobile/news/VideoActivity;->genericRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 638
    :cond_4
    invoke-direct {p0, p1}, Lbbc/mobile/news/VideoActivity;->startNativePlayback(Ljava/lang/String;)V

    goto :goto_0
.end method

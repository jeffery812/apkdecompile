.class public Lbbc/mobile/news/HomeScreenActivity;
.super Lbbc/mobile/news/BaseActivity;
.source "HomeScreenActivity.java"

# interfaces
.implements Lbbc/mobile/news/OnArticleSelectedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field public static final ARTICLE_FRAGMENT:Ljava/lang/String; = "articleFragment"

.field private static final BOOTSTRAP_FEED_MANAGER:Ljava/lang/String; = "HS-mBoosrapFeedManager"

.field private static final FEED_MANAGER:Ljava/lang/String; = "HS-FeedManager"

.field public static final NEWS_FRAGMENT:Ljava/lang/String; = "newsFragment"

.field private static final PERSONALISATION_REQUEST:I = 0x1

.field private static final REFRESH_FEED_MANAGER:Ljava/lang/String; = "HS-RefreshFeedManager"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TICKER_FEED_MANAGER:Ljava/lang/String; = "HS-TickerManager"


# instance fields
.field private mAVCategory:Lbbc/mobile/news/model/AVCategory;

.field private mAVDialog:Lbbc/mobile/news/dialog/AVDialogNew;

.field private mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

.field private mConfig:Lbbc/mobile/news/model/Config;

.field private mConfigRequested:Z

.field private mFeedManager:Lbbc/mobile/news/feed/FeedManager;

.field private mFirstTimeLoad:Z

.field private mForceRequestLatestData:Z

.field private mOrientation:I

.field private mPushNotification:Lbbc/mobile/news/push/PushNotification;

.field private mRefreshFeedListener:Lbbc/mobile/news/OnRefreshFeedListener;

.field private mRefreshFeedManager:Lbbc/mobile/news/feed/FeedManager;

.field private mTickerData:Lbbc/mobile/news/model/Ticker;

.field private mTickerFeed:Lbbc/mobile/news/model/Feed;

.field private mTickerFeedManager:Lbbc/mobile/news/feed/FeedManager;

.field private mUpdateWidgets:Z

.field private pendingFeeds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lbbc/mobile/news/HomeScreenActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Lbbc/mobile/news/BaseActivity;-><init>()V

    .line 76
    iput-boolean v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mForceRequestLatestData:Z

    .line 77
    iput-boolean v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mUpdateWidgets:Z

    .line 88
    iput-boolean v2, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfigRequested:Z

    .line 89
    iput-boolean v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mFirstTimeLoad:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    .line 95
    iput v2, p0, Lbbc/mobile/news/HomeScreenActivity;->pendingFeeds:I

    .line 97
    iput v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mOrientation:I

    .line 850
    new-instance v0, Lbbc/mobile/news/HomeScreenActivity$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/HomeScreenActivity$1;-><init>(Lbbc/mobile/news/HomeScreenActivity;)V

    iput-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mRefreshFeedListener:Lbbc/mobile/news/OnRefreshFeedListener;

    .line 62
    return-void
.end method

.method private breakingNewsOpened(Landroid/content/Intent;)Z
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 141
    if-nez p1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v5

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 146
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 150
    const-string v6, "PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "breakingNewsOpened: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {v3}, Lbbc/mobile/news/util/IntentFactory;->isLaunchedFromNotification(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 156
    invoke-static {p1}, Lbbc/mobile/news/util/IntentFactory;->clearFromState(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0, p1}, Lbbc/mobile/news/HomeScreenActivity;->setIntent(Landroid/content/Intent;)V

    .line 159
    invoke-static {v3}, Lbbc/mobile/news/util/IntentFactory;->getNotification(Landroid/os/Bundle;)Lio/boxcar/push/model/BXCNotification;

    move-result-object v1

    .line 161
    .local v1, bxcNotification:Lio/boxcar/push/model/BXCNotification;
    if-eqz v1, :cond_0

    .line 165
    new-instance v4, Lbbc/mobile/news/push/PushNotification;

    invoke-direct {v4, v1}, Lbbc/mobile/news/push/PushNotification;-><init>(Lio/boxcar/push/model/BXCNotification;)V

    .line 166
    .local v4, push:Lbbc/mobile/news/push/PushNotification;
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getLastPushId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lbbc/mobile/news/push/PushNotification;->getPushId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    const-string v6, "PUSH"

    const-string v7, "Received push from OS intent saved by OS!"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v4}, Lbbc/mobile/news/push/PushNotification;->getPushId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lbbc/mobile/news/util/GlobalSettings;->setLastPushId(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    :try_start_0
    sget-object v6, Lio/boxcar/push/model/BXCTrackNotification$State;->active:Lio/boxcar/push/model/BXCTrackNotification$State;

    invoke-static {v1, v6}, Lio/boxcar/push/BXCFacade;->trackNotification(Lio/boxcar/push/model/BXCNotification;Lio/boxcar/push/model/BXCTrackNotification$State;)V
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_1
    const-string v6, "PUSH"

    const-string v7, "lauched from push"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->isTablet()Z

    move-result v6

    if-nez v6, :cond_3

    .line 185
    const-string v6, "PUSH"

    const-string v7, "not tablet"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v0

    .line 187
    .local v0, articleFragment:Lbbc/mobile/news/ArticleFragment;
    if-eqz v0, :cond_3

    .line 188
    const-string v6, "PUSH"

    const-string v7, "closing article"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lbbc/mobile/news/ArticleFragment;->onHomeButtonClicked()V

    .line 193
    .end local v0           #articleFragment:Lbbc/mobile/news/ArticleFragment;
    :cond_3
    invoke-static {p0}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 194
    iput-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    .line 195
    const-string v6, "PUSH"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Breaking news - looking for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v5}, Lbbc/mobile/news/HomeScreenActivity;->refreshFeeds(Z)V

    .line 197
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v5

    invoke-virtual {v5}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v5

    invoke-virtual {v5}, Lbbc/mobile/news/stats/Stats;->logRefreshHomescreenACTION()Lbbc/mobile/news/stats/Stats;

    .line 204
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, e:Lio/boxcar/push/BXCException;
    const-string v6, "PUSH"

    const-string v7, "failed to track notification"

    invoke-static {v6, v7, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 201
    .end local v2           #e:Lio/boxcar/push/BXCException;
    :cond_4
    invoke-static {p0}, Lbbc/mobile/news/dialog/SystemDialog;->showNoConnection(Landroid/app/Activity;)V

    goto :goto_2
.end method

.method private clearData()V
    .locals 2

    .prologue
    .line 425
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v1

    .line 426
    .local v1, newsFragment:Lbbc/mobile/news/NewsFragment;
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v0

    .line 428
    .local v0, articleFragment:Lbbc/mobile/news/ArticleFragment;
    if-eqz v1, :cond_0

    .line 429
    invoke-virtual {v1}, Lbbc/mobile/news/NewsFragment;->clearData()V

    .line 432
    :cond_0
    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {v0}, Lbbc/mobile/news/ArticleFragment;->clearData()V

    .line 436
    :cond_1
    return-void
.end method

.method private clearMemoryCaches(Z)V
    .locals 1
    .parameter "clearFeedCache"

    .prologue
    .line 412
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/cache/CategoryCache;->clear()V

    .line 413
    invoke-static {}, Lbbc/mobile/news/cache/ArticleCache;->getInstance()Lbbc/mobile/news/cache/ArticleCache;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/cache/ArticleCache;->clear()V

    .line 415
    if-eqz p1, :cond_0

    .line 416
    invoke-static {}, Lbbc/mobile/news/cache/FeedCache;->getInstance()Lbbc/mobile/news/cache/FeedCache;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/cache/FeedCache;->clear()V

    .line 417
    :cond_0
    return-void
.end method

.method private createArticleFragment()Lbbc/mobile/news/ArticleFragment;
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lbbc/mobile/news/ArticleFragment;

    invoke-direct {v0}, Lbbc/mobile/news/ArticleFragment;-><init>()V

    .line 370
    .local v0, articleFragment:Lbbc/mobile/news/ArticleFragment;
    return-object v0
.end method

.method private createNewsFragment()Lbbc/mobile/news/NewsFragment;
    .locals 1

    .prologue
    .line 361
    new-instance v0, Lbbc/mobile/news/NewsFragment;

    invoke-direct {v0}, Lbbc/mobile/news/NewsFragment;-><init>()V

    .line 363
    .local v0, newsFragment:Lbbc/mobile/news/NewsFragment;
    return-object v0
.end method

.method private hasAVDialog()Z
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mAVCategory:Lbbc/mobile/news/model/AVCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mAVDialog:Lbbc/mobile/news/dialog/AVDialogNew;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNoConnectionOrCache()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 836
    invoke-static {p0}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 847
    :cond_0
    :goto_0
    return v2

    .line 840
    :cond_1
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getLastCategoryUpdateTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 843
    .local v0, lastUpdateTime:J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 847
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private initFeedManagers()V
    .locals 2

    .prologue
    .line 404
    new-instance v0, Lbbc/mobile/news/feed/FeedManager;

    const-string v1, "HS-mBoosrapFeedManager"

    invoke-direct {v0, v1}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 405
    new-instance v0, Lbbc/mobile/news/feed/FeedManager;

    const-string v1, "HS-RefreshFeedManager"

    invoke-direct {v0, v1}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mRefreshFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 406
    new-instance v0, Lbbc/mobile/news/feed/FeedManager;

    const-string v1, "HS-TickerManager"

    invoke-direct {v0, v1}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 407
    new-instance v0, Lbbc/mobile/news/feed/FeedManager;

    const-string v1, "HS-FeedManager"

    invoke-direct {v0, v1}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 408
    return-void
.end method

.method private initFragments()V
    .locals 6

    .prologue
    .line 311
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 312
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 314
    .local v3, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v2

    .line 315
    .local v2, newsFragment:Lbbc/mobile/news/NewsFragment;
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v0

    .line 317
    .local v0, articleFragment:Lbbc/mobile/news/ArticleFragment;
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lbbc/mobile/news/util/IntentFactory;->isLaunchedFromNotification(Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 318
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lbbc/mobile/news/util/IntentFactory;->viewSpecificCategory(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 320
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    if-nez v2, :cond_0

    .line 322
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->createNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v2

    .line 323
    sget v4, Lbbc/mobile/news/R$id;->homescreenRootContainer:I

    const-string v5, "newsFragment"

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 331
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 332
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->createArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v0

    .line 333
    sget v4, Lbbc/mobile/news/R$id;->homescreenRootContainer:I

    const-string v5, "articleFragment"

    invoke-virtual {v3, v4, v0, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 356
    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 357
    return-void

    .line 327
    :cond_2
    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 337
    :cond_3
    if-nez v2, :cond_4

    .line 338
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->createNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v2

    .line 339
    sget v4, Lbbc/mobile/news/R$id;->homescreenRootContainer:I

    const-string v5, "newsFragment"

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 341
    :cond_4
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 342
    if-nez v0, :cond_5

    .line 343
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->createArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v0

    .line 344
    sget v4, Lbbc/mobile/news/R$id;->homescreenRootContainer:I

    const-string v5, "articleFragment"

    invoke-virtual {v3, v4, v0, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 349
    :cond_5
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lbbc/mobile/news/util/IntentFactory;->isLaunchedFromNotification(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 350
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lbbc/mobile/news/HomeScreenActivity;->breakingNewsOpened(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private initGlobalSettings(Lbbc/mobile/news/model/Config;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 1096
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Config;->getPrivacyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->setPrivacyUrl(Ljava/lang/String;)V

    .line 1097
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Config;->getConditionsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->setTermsAndConditionsUrl(Ljava/lang/String;)V

    .line 1099
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Config;->getAdExposure()I

    move-result v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->setAdExposure(I)V

    .line 1100
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Config;->getLiveFeedTemplateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->setLivePlaylistUrl(Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Config;->getAvDialogUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->setAvDialogUrl(Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method private initOrientation()V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mOrientation:I

    .line 271
    :cond_0
    iget v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mOrientation:I

    invoke-direct {p0, v0}, Lbbc/mobile/news/HomeScreenActivity;->onOrientationChanged(I)V

    .line 272
    return-void
.end method

.method private initPushNotifications()V
    .locals 3

    .prologue
    .line 276
    invoke-static {p0}, Lbbc/mobile/news/push/PushUtils;->isPushCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    sget-object v1, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "initPushNotifications()... isPushCapable = true"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->isPushEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->hasRequestedPushPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 281
    sget-object v1, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "requesting push notification permission... displaying push dialog..."

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {p0}, Lbbc/mobile/news/dialog/SystemDialog;->showRequestPushPerm(Landroid/content/Context;)V

    goto :goto_0

    .line 285
    :cond_2
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->isPushEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    :try_start_0
    invoke-static {p0}, Lio/boxcar/push/BXCFacade;->ping(Landroid/content/Context;)V
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Lio/boxcar/push/BXCException;
    sget-object v1, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    const-string v2, "Failed to ping push service"

    invoke-static {v1, v2, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isCacheOld()Z
    .locals 8

    .prologue
    .line 451
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getLastCategoryUpdateTime(Landroid/content/Context;)J

    move-result-wide v4

    .line 452
    .local v4, lastUpdateTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 454
    .local v2, lastUpdateDifference:J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    const-wide/32 v6, 0xdbba0

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .line 456
    .local v0, isOld:Z
    :goto_0
    sget-object v1, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isCacheOld() lastUpdateTime="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 457
    const-string v7, "  lastUpdateDifference="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  isOld="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 458
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 456
    invoke-static {v1, v6}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return v0

    .line 454
    .end local v0           #isOld:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 377
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 378
    const-string v0, "Landscape"

    .line 384
    .local v0, strOrientation:Ljava/lang/String;
    :goto_0
    sget-object v1, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onOrientationChanged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-boolean v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mFirstTimeLoad:Z

    if-nez v1, :cond_0

    .line 387
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbbc/mobile/news/stats/Stats;->logDeviceRotationACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;

    .line 390
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mFirstTimeLoad:Z

    .line 391
    return-void

    .line 379
    .end local v0           #strOrientation:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 380
    const-string v0, "Portrait"

    .restart local v0       #strOrientation:Ljava/lang/String;
    goto :goto_0

    .line 382
    .end local v0           #strOrientation:Ljava/lang/String;
    :cond_2
    const-string v0, "unknown"

    .restart local v0       #strOrientation:Ljava/lang/String;
    goto :goto_0
.end method

.method private refreshFeeds(Z)V
    .locals 4
    .parameter "sortFeeds"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 465
    iget-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v1, :cond_2

    .line 467
    iget-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeed:Lbbc/mobile/news/model/Feed;

    if-eqz v1, :cond_0

    .line 468
    new-array v1, v2, [I

    aput v2, v1, v3

    invoke-virtual {p0, v2, v1}, Lbbc/mobile/news/HomeScreenActivity;->requestTickerFeed(I[I)V

    .line 471
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v0

    .line 472
    .local v0, newsFragment:Lbbc/mobile/news/NewsFragment;
    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {v0}, Lbbc/mobile/news/NewsFragment;->onRefreshFeeds()V

    .line 475
    :cond_1
    new-array v1, v2, [I

    aput v2, v1, v3

    invoke-virtual {p0, p1, v2, v1}, Lbbc/mobile/news/HomeScreenActivity;->requestNewsFeeds(ZI[I)V

    .line 477
    .end local v0           #newsFragment:Lbbc/mobile/news/NewsFragment;
    :cond_2
    return-void
.end method

.method private requestAVDialog()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 509
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Config;->getAvDialogUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 513
    iget-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Config;->getAvDialogUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lbbc/mobile/news/HomeScreenActivity;->mHandler:Landroid/os/Handler;

    move-object v2, p0

    move v5, v4

    .line 512
    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/FeedManager;->addAvDialogFeed(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;II)V

    .line 515
    iget-object v5, p0, Lbbc/mobile/news/HomeScreenActivity;->mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 516
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Config;->getAvDialogUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lbbc/mobile/news/HomeScreenActivity;->mHandler:Landroid/os/Handler;

    .line 517
    const/4 v9, 0x1

    move-object v7, p0

    move v10, v4

    .line 515
    invoke-virtual/range {v5 .. v10}, Lbbc/mobile/news/feed/FeedManager;->addAvDialogFeed(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;II)V

    .line 518
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 520
    :cond_0
    return-void
.end method

.method private schedualTicker(Z)V
    .locals 4
    .parameter "schedual"

    .prologue
    const/16 v2, 0x66

    .line 440
    if-eqz p1, :cond_1

    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->isTickerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mSchedualTicker:Z

    .line 441
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    iget-boolean v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mSchedualTicker:Z

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 444
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getTickerUpdateDelay()I

    move-result v2

    int-to-long v2, v2

    .line 443
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 446
    :cond_0
    return-void

    .line 440
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setForceRequest(Z)V
    .locals 0
    .parameter "forceRequest"

    .prologue
    .line 1062
    iput-boolean p1, p0, Lbbc/mobile/news/HomeScreenActivity;->mForceRequestLatestData:Z

    .line 1063
    return-void
.end method

.method private updateWidgets()V
    .locals 8

    .prologue
    .line 917
    iget-boolean v5, p0, Lbbc/mobile/news/HomeScreenActivity;->mUpdateWidgets:Z

    if-eqz v5, :cond_0

    .line 919
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 920
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {p0}, Lbbc/mobile/news/widget/WidgetManager;->getWidgetProviderComponentNames(Landroid/content/Context;)[Landroid/content/ComponentName;

    move-result-object v2

    .line 922
    .local v2, providers:[Landroid/content/ComponentName;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_1

    .line 933
    .end local v0           #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .end local v2           #providers:[Landroid/content/ComponentName;
    :cond_0
    return-void

    .line 922
    .restart local v0       #appWidgetManager:Landroid/appwidget/AppWidgetManager;
    .restart local v2       #providers:[Landroid/content/ComponentName;
    :cond_1
    aget-object v1, v2, v5

    .line 923
    .local v1, provider:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    .line 924
    .local v4, widgetIDs:[I
    array-length v7, v4

    if-lez v7, :cond_2

    .line 925
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 926
    .local v3, updateIntent:Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 927
    const/4 v7, 0x1

    invoke-static {v4, v7}, Lbbc/mobile/news/widget/WidgetManager;->setFetchFromDisk([IZ)V

    .line 928
    const-string v7, "appWidgetIds"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 929
    invoke-virtual {p0, v3}, Lbbc/mobile/news/HomeScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 922
    .end local v3           #updateIntent:Landroid/content/Intent;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getArticleFragment()Lbbc/mobile/news/ArticleFragment;
    .locals 2

    .prologue
    .line 1078
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1081
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v1, "articleFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1080
    check-cast v1, Lbbc/mobile/news/ArticleFragment;

    return-object v1
.end method

.method public getConfig()Lbbc/mobile/news/model/Config;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    return-object v0
.end method

.method public getImageHandler()Lbbc/mobile/news/feed/ImageHandler;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    return-object v0
.end method

.method public getNewsFragment()Lbbc/mobile/news/NewsFragment;
    .locals 2

    .prologue
    .line 1071
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1073
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v1, "newsFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/NewsFragment;

    return-object v1
.end method

.method public getRefreshFeedListener()Lbbc/mobile/news/OnRefreshFeedListener;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mRefreshFeedListener:Lbbc/mobile/news/OnRefreshFeedListener;

    return-object v0
.end method

.method public getTickerData()Lbbc/mobile/news/model/Ticker;
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerData:Lbbc/mobile/news/model/Ticker;

    return-object v0
.end method

.method public isForceRequest()Z
    .locals 1

    .prologue
    .line 1066
    iget-boolean v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mForceRequestLatestData:Z

    return v0
.end method

.method public onAVButtonClicked()V
    .locals 5

    .prologue
    .line 759
    invoke-static {p0}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 760
    invoke-static {p0}, Lbbc/mobile/news/dialog/SystemDialog;->showNoConnection(Landroid/app/Activity;)V

    .line 777
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    .line 764
    .local v1, gs:Lbbc/mobile/news/util/GlobalSettings;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 766
    invoke-static {p0}, Lbbc/mobile/news/helper/ConnectivityStatus;->getConnectionTypeAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, connectionType:Ljava/lang/String;
    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbbc/mobile/news/stats/Stats;->logAVDialogClickACTION(Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;

    .line 770
    .end local v0           #connectionType:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->hasAVDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbbc/mobile/news/HomeScreenActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lbbc/mobile/news/HomeScreenActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    invoke-interface {v2}, Lbbc/mobile/news/service/AudioControl;->getCallback()Lbbc/mobile/news/service/AudioCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 772
    iget-object v2, p0, Lbbc/mobile/news/HomeScreenActivity;->mAVDialog:Lbbc/mobile/news/dialog/AVDialogNew;

    invoke-virtual {v2}, Lbbc/mobile/news/dialog/AVDialogNew;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 773
    iget-object v2, p0, Lbbc/mobile/news/HomeScreenActivity;->mAVDialog:Lbbc/mobile/news/dialog/AVDialogNew;

    iget-object v3, p0, Lbbc/mobile/news/HomeScreenActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    iget-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    invoke-interface {v4}, Lbbc/mobile/news/service/AudioControl;->getCallback()Lbbc/mobile/news/service/AudioCallback;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lbbc/mobile/news/dialog/AVDialogNew;->show(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 797
    packed-switch p1, :pswitch_data_0

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 799
    :pswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 800
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v3

    invoke-virtual {v3, p0}, Lbbc/mobile/news/stats/Stats;->logClosePersonalisationACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;

    .line 802
    invoke-static {p0, v7}, Lbbc/mobile/news/webclient/BootstrapManager;->getPersonalised(Landroid/content/Context;I)Lbbc/mobile/news/model/Config;

    move-result-object v0

    .line 803
    .local v0, config:Lbbc/mobile/news/model/Config;
    if-eqz v0, :cond_2

    .line 804
    iput-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    .line 806
    invoke-direct {p0, v7}, Lbbc/mobile/news/HomeScreenActivity;->setForceRequest(Z)V

    .line 808
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v1

    .line 809
    .local v1, newsFragment:Lbbc/mobile/news/NewsFragment;
    if-eqz v1, :cond_1

    .line 810
    iget-object v3, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v1, v3}, Lbbc/mobile/news/NewsFragment;->onPersonalisationChanged(Lbbc/mobile/news/model/Config;)V

    .line 813
    :cond_1
    new-array v3, v4, [I

    aput v8, v3, v7

    invoke-virtual {p0, v7, v4, v3}, Lbbc/mobile/news/HomeScreenActivity;->requestNewsFeeds(ZI[I)V

    .line 816
    new-instance v3, Lbbc/mobile/news/model/Feed;

    const-string v4, "Ticker Feed"

    const/16 v5, -0xa

    .line 817
    iget-object v6, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v6}, Lbbc/mobile/news/model/Config;->getTickerUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lbbc/mobile/news/model/Feed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 816
    iput-object v3, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeed:Lbbc/mobile/news/model/Feed;

    .line 818
    iget-object v3, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v3}, Lbbc/mobile/news/model/Config;->getTickerPollingRate()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {p0, v3}, Lbbc/mobile/news/HomeScreenActivity;->setTickerUpdateDelay(I)V

    .line 819
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    invoke-virtual {p0, v7, v3}, Lbbc/mobile/news/HomeScreenActivity;->requestTickerFeed(I[I)V

    .line 823
    .end local v0           #config:Lbbc/mobile/news/model/Config;
    .end local v1           #newsFragment:Lbbc/mobile/news/NewsFragment;
    :cond_2
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v2

    .line 825
    .local v2, omniture:Lbbc/mobile/news/stats/Omniture3;
    if-eqz v2, :cond_0

    .line 826
    invoke-virtual {v2, p0}, Lbbc/mobile/news/stats/Omniture3;->logEditClosed(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;

    goto :goto_0

    .line 797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 819
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onAdFlagPoleReturned(ZZ)V
    .locals 2
    .parameter "addsEnabled"
    .parameter "requestOk"

    .prologue
    .line 1117
    invoke-super {p0, p1, p2}, Lbbc/mobile/news/BaseActivity;->onAdFlagPoleReturned(ZZ)V

    .line 1119
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v1

    .line 1120
    .local v1, newsFragment:Lbbc/mobile/news/NewsFragment;
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v0

    .line 1122
    .local v0, articleFragment:Lbbc/mobile/news/ArticleFragment;
    if-eqz v1, :cond_0

    .line 1123
    invoke-virtual {v1, p1, p2}, Lbbc/mobile/news/NewsFragment;->onFlagPoleReturned(ZZ)V

    .line 1125
    :cond_0
    if-eqz v0, :cond_1

    .line 1126
    invoke-virtual {v0, p1, p2}, Lbbc/mobile/news/ArticleFragment;->onFlagPoleReturned(ZZ)V

    .line 1127
    :cond_1
    return-void
.end method

.method public onAtomFailed(Lbbc/mobile/news/model/Feed;II)V
    .locals 5
    .parameter "feed"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 637
    iget v4, p0, Lbbc/mobile/news/HomeScreenActivity;->pendingFeeds:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lbbc/mobile/news/HomeScreenActivity;->pendingFeeds:I

    .line 639
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v1

    .line 640
    .local v1, newsFragment:Lbbc/mobile/news/NewsFragment;
    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {v1, p1, p2, p3}, Lbbc/mobile/news/NewsFragment;->onAtomFailed(Lbbc/mobile/news/model/Feed;II)V

    .line 643
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v0

    .line 644
    .local v0, articleFragment:Lbbc/mobile/news/ArticleFragment;
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v2

    .line 645
    .local v2, selectedCategory:Lbbc/mobile/news/model/Category;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 646
    invoke-virtual {v2, p0}, Lbbc/mobile/news/model/Category;->getFeed(Landroid/content/Context;)Lbbc/mobile/news/model/Feed;

    move-result-object v3

    .line 647
    .local v3, selectedFeed:Lbbc/mobile/news/model/Feed;
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lbbc/mobile/news/model/Feed;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 648
    invoke-virtual {v0, p1, p2, p3}, Lbbc/mobile/news/ArticleFragment;->onAtomFailed(Lbbc/mobile/news/model/Feed;II)V

    .line 651
    .end local v3           #selectedFeed:Lbbc/mobile/news/model/Feed;
    :cond_1
    return-void
.end method

.method public onAtomSuccess(Lbbc/mobile/news/model/Category;II)V
    .locals 12
    .parameter "category"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x1

    .line 586
    iget v0, p0, Lbbc/mobile/news/HomeScreenActivity;->pendingFeeds:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbbc/mobile/news/HomeScreenActivity;->pendingFeeds:I

    .line 588
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v9

    .line 589
    .local v9, selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/cache/CategoryCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Category;

    move-result-object v10

    .line 591
    .local v10, updateCategory:Lbbc/mobile/news/model/Category;
    sget-object v0, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAtomSucess(category="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", strategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lbbc/mobile/news/cache/Cache;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    invoke-virtual {v0}, Lbbc/mobile/news/push/PushNotification;->getArticleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbbc/mobile/news/model/Category;->getArticle(Ljava/lang/String;)Lbbc/mobile/news/model/Article;

    move-result-object v3

    .line 596
    .local v3, article:Lbbc/mobile/news/model/Article;
    if-eqz v3, :cond_4

    .line 597
    const-string v0, "PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found article "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    invoke-virtual {v2}, Lbbc/mobile/news/push/PushNotification;->getArticleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbbc/mobile/news/stats/Stats;->logLoadStoryFromPush(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;

    .line 599
    const/4 v6, 0x5

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lbbc/mobile/news/HomeScreenActivity;->onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;ZZI)V

    .line 600
    iput-object v11, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    .line 614
    .end local v3           #article:Lbbc/mobile/news/model/Article;
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 615
    invoke-virtual {v10, p1}, Lbbc/mobile/news/model/Category;->update(Lbbc/mobile/news/model/Category;)Lbbc/mobile/news/model/Category;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Category;->setUpdateFlag(I)V

    .line 616
    invoke-virtual {v10}, Lbbc/mobile/news/model/Category;->getArticles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 620
    invoke-virtual {v9, v10}, Lbbc/mobile/news/helper/SelectionProvider;->updateArticleSelection(Lbbc/mobile/news/model/Category;)V

    .line 623
    :cond_1
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v8

    .line 624
    .local v8, newsFragment:Lbbc/mobile/news/NewsFragment;
    if-eqz v8, :cond_2

    .line 625
    invoke-virtual {v8, p1, p2, p3}, Lbbc/mobile/news/NewsFragment;->onAtomSuccess(Lbbc/mobile/news/model/Category;II)V

    .line 628
    :cond_2
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v7

    .line 629
    .local v7, articleFragment:Lbbc/mobile/news/ArticleFragment;
    if-eqz v7, :cond_3

    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v0

    invoke-virtual {v0, v10}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    invoke-virtual {v7, p1, p2, p3}, Lbbc/mobile/news/ArticleFragment;->onAtomSuccess(Lbbc/mobile/news/model/Category;II)V

    .line 632
    :cond_3
    return-void

    .line 603
    .end local v7           #articleFragment:Lbbc/mobile/news/ArticleFragment;
    .end local v8           #newsFragment:Lbbc/mobile/news/NewsFragment;
    .restart local v3       #article:Lbbc/mobile/news/model/Article;
    :cond_4
    const-string v0, "PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Article "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    invoke-virtual {v2}, Lbbc/mobile/news/push/PushNotification;->getArticleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isn\'t in category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget v0, p0, Lbbc/mobile/news/HomeScreenActivity;->pendingFeeds:I

    if-nez v0, :cond_0

    .line 606
    const-string v0, "PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "We didn\'t find article "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    invoke-virtual {v2}, Lbbc/mobile/news/push/PushNotification;->getArticleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in any loaded feeds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/stats/Stats;->logPushArticleNotAvailableDialog()Lbbc/mobile/news/stats/Stats;

    .line 608
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    invoke-virtual {v0}, Lbbc/mobile/news/push/PushNotification;->getArticleTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lbbc/mobile/news/dialog/SystemDialog;->showNoPush(Landroid/content/Context;Ljava/lang/String;)V

    .line 609
    iput-object v11, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    goto/16 :goto_0

    .line 616
    .end local v3           #article:Lbbc/mobile/news/model/Article;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbbc/mobile/news/model/Article;

    .line 617
    .restart local v3       #article:Lbbc/mobile/news/model/Article;
    invoke-static {}, Lbbc/mobile/news/cache/ArticleCache;->getInstance()Lbbc/mobile/news/cache/ArticleCache;

    move-result-object v1

    invoke-virtual {v1, v3}, Lbbc/mobile/news/cache/ArticleCache;->put(Lbbc/mobile/news/model/Article;)V

    .line 618
    const-string v1, "ARTICLE_UPDATE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "category: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  article id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->onBackPressed()V

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    .line 257
    return-void
.end method

.method public onConfigFailed(Lbbc/mobile/news/model/Config;II)V
    .locals 0
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 725
    return-void
.end method

.method public onConfigSuccess(Lbbc/mobile/news/model/Config;II)V
    .locals 9
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 680
    iget-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-nez v4, :cond_1

    .line 682
    iput-object p1, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    .line 683
    new-instance v4, Lbbc/mobile/news/model/Feed;

    const-string v5, "Ticker Feed"

    const/16 v6, -0xa

    iget-object v7, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v7}, Lbbc/mobile/news/model/Config;->getTickerUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lbbc/mobile/news/model/Feed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeed:Lbbc/mobile/news/model/Feed;

    .line 685
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v2

    .line 688
    .local v2, selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    invoke-static {}, Lbbc/mobile/news/cache/FeedCache;->getInstance()Lbbc/mobile/news/cache/FeedCache;

    move-result-object v4

    iget-object v5, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v5}, Lbbc/mobile/news/model/Config;->getFeeds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbbc/mobile/news/cache/FeedCache;->update(Ljava/util/ArrayList;)V

    .line 689
    iget-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lbbc/mobile/news/helper/SelectionProvider;->initSelection(Lbbc/mobile/news/model/Config;Landroid/os/Bundle;)Z

    .line 690
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v4

    iget-object v5, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    .line 691
    const/4 v6, 0x0

    .line 692
    invoke-virtual {v2}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v7

    invoke-virtual {v7}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v7

    .line 693
    const/4 v8, 0x1

    .line 690
    invoke-virtual {v5, v6, v7, v8}, Lbbc/mobile/news/model/Config;->getCategorys(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbbc/mobile/news/cache/CategoryCache;->update(Ljava/util/ArrayList;)V

    .line 694
    iget-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v4}, Lbbc/mobile/news/model/Config;->getTickerPollingRate()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {p0, v4}, Lbbc/mobile/news/HomeScreenActivity;->setTickerUpdateDelay(I)V

    .line 695
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {p0, v4, v5}, Lbbc/mobile/news/HomeScreenActivity;->requestTickerFeed(I[I)V

    .line 696
    invoke-static {}, Lbbc/mobile/news/util/CopyrightHelper;->getInstance()Lbbc/mobile/news/util/CopyrightHelper;

    move-result-object v4

    iget-object v5, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v5}, Lbbc/mobile/news/model/Config;->getCopyright()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbbc/mobile/news/util/CopyrightHelper;->setCopyrightText(Ljava/lang/String;)V

    .line 697
    iget-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-direct {p0, v4}, Lbbc/mobile/news/HomeScreenActivity;->initGlobalSettings(Lbbc/mobile/news/model/Config;)V

    .line 699
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 700
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->requestAVDialog()V

    .line 703
    :cond_0
    iget-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v4}, Lbbc/mobile/news/model/Config;->getCopyright()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 704
    sget v4, Lbbc/mobile/news/R$id;->copyright:I

    invoke-virtual {p0, v4}, Lbbc/mobile/news/HomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 705
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 706
    iget-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v4}, Lbbc/mobile/news/model/Config;->getCopyright()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    .end local v2           #selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v1

    .line 712
    .local v1, newsFragment:Lbbc/mobile/news/NewsFragment;
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v0

    .line 714
    .local v0, articleFragment:Lbbc/mobile/news/ArticleFragment;
    iget-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v4, :cond_3

    .line 715
    if-eqz v1, :cond_2

    .line 716
    iget-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v1, v4, p2, p3}, Lbbc/mobile/news/NewsFragment;->onConfigSuccess(Lbbc/mobile/news/model/Config;II)V

    .line 718
    :cond_2
    if-eqz v0, :cond_3

    .line 719
    iget-object v4, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v0, v4, p2, p3}, Lbbc/mobile/news/ArticleFragment;->onConfigSuccess(Lbbc/mobile/news/model/Config;II)V

    .line 721
    :cond_3
    return-void

    .line 695
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 297
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 305
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 306
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lbbc/mobile/news/HomeScreenActivity;->onOrientationChanged(I)V

    .line 307
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    iput-boolean v3, p0, Lbbc/mobile/news/HomeScreenActivity;->mHasActionBar:Z

    .line 104
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    sget-object v0, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget v0, Lbbc/mobile/news/R$layout;->homescreen_container_layout:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/HomeScreenActivity;->setContentView(I)V

    .line 109
    sget v0, Lbbc/mobile/news/R$xml;->preferences:I

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 111
    new-instance v0, Lbbc/mobile/news/feed/ImageHandler;

    const-string v1, "ImageHandler-Homescreen"

    invoke-direct {v0, v1}, Lbbc/mobile/news/feed/ImageHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    .line 113
    if-nez p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->initWWOrUkSpecifics()V

    .line 118
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->initOrientation()V

    .line 119
    invoke-direct {p0, v3}, Lbbc/mobile/news/HomeScreenActivity;->clearMemoryCaches(Z)V

    .line 120
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->initFeedManagers()V

    .line 121
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->initPushNotifications()V

    .line 123
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbbc/mobile/news/stats/Stats;->logAppOpenedFromFreshACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;

    .line 125
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->hasNoConnectionOrCache()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-static {p0}, Lbbc/mobile/news/dialog/SystemDialog;->showNoConnection(Landroid/app/Activity;)V

    .line 129
    :cond_1
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->isCacheOld()Z

    move-result v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/HomeScreenActivity;->setForceRequest(Z)V

    .line 131
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->bindAudioService()V

    .line 135
    :cond_2
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lbbc/mobile/news/helper/StateHelper;->setState(Landroid/os/Bundle;I)V

    .line 136
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1038
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1039
    .local v0, inflater:Landroid/view/MenuInflater;
    sget v1, Lbbc/mobile/news/R$menu;->options_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1041
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 939
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->quit()V

    .line 940
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->quit()V

    .line 941
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mRefreshFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->quit()V

    .line 942
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->quit()V

    .line 944
    iput-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 945
    iput-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 946
    iput-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 947
    iput-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mRefreshFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 949
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->unbindAudioService()V

    .line 951
    sget-object v0, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->onDestroy()V

    .line 954
    return-void
.end method

.method public onEditButtonClicked()V
    .locals 2

    .prologue
    .line 730
    iget-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v1, :cond_0

    .line 732
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbbc/mobile/news/stats/Stats;->logEditClickedACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;

    .line 734
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 735
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 736
    const-string v1, "PersonalisationActivity"

    invoke-static {v1}, Lbbc/mobile/news/init/DI;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 737
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lbbc/mobile/news/HomeScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 739
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 210
    sget-object v6, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    const-string v7, "onNewIntent()"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 214
    invoke-direct {p0, p1}, Lbbc/mobile/news/HomeScreenActivity;->breakingNewsOpened(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 219
    .local v3, extras:Landroid/os/Bundle;
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v6

    invoke-virtual {v6}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v6

    invoke-virtual {v6, p0}, Lbbc/mobile/news/stats/Stats;->logAppOpenedFromResumedACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;

    .line 220
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v6

    invoke-virtual {v6, v3, v11}, Lbbc/mobile/news/helper/StateHelper;->setState(Landroid/os/Bundle;I)V

    .line 222
    iget-object v6, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v6, :cond_0

    .line 224
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v4

    .line 226
    .local v4, selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    invoke-static {v3}, Lbbc/mobile/news/util/IntentFactory;->viewSpecificCategory(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    invoke-static {p1}, Lbbc/mobile/news/util/IntentFactory;->clearFromState(Landroid/content/Intent;)V

    .line 229
    invoke-virtual {p0, p1}, Lbbc/mobile/news/HomeScreenActivity;->setIntent(Landroid/content/Intent;)V

    .line 230
    invoke-direct {p0, v10}, Lbbc/mobile/news/HomeScreenActivity;->setForceRequest(Z)V

    .line 231
    invoke-direct {p0, v10}, Lbbc/mobile/news/HomeScreenActivity;->clearMemoryCaches(Z)V

    .line 233
    iget-object v6, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v4, v6, v3}, Lbbc/mobile/news/helper/SelectionProvider;->initSelection(Lbbc/mobile/news/model/Config;Landroid/os/Bundle;)Z

    move-result v5

    .line 234
    .local v5, selectionSet:Z
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v6

    invoke-virtual {v6}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 236
    .local v0, category:Lbbc/mobile/news/model/Category;
    if-eqz v5, :cond_2

    .line 237
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v6

    iget-object v7, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v11}, Lbbc/mobile/news/model/Config;->getCategorys(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbbc/mobile/news/cache/CategoryCache;->update(Ljava/util/ArrayList;)V

    .line 238
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->clearData()V

    .line 239
    new-array v6, v11, [I

    aput v10, v6, v10

    invoke-virtual {p0, v11, v10, v6}, Lbbc/mobile/news/HomeScreenActivity;->requestNewsFeeds(ZI[I)V

    goto :goto_0

    .line 241
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, categoryErrorString:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v6, :cond_4

    const-string v2, "config NOT null"

    .line 244
    .local v2, configErrorString:Ljava/lang/String;
    :goto_2
    sget-object v6, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ERROR: onNewIntent() ... selection could not be set. why?  category:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 246
    const-string v8, "  config:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 244
    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 241
    .end local v1           #categoryErrorString:Ljava/lang/String;
    .end local v2           #configErrorString:Ljava/lang/String;
    :cond_3
    const-string v1, "null"

    goto :goto_1

    .line 242
    .restart local v1       #categoryErrorString:Ljava/lang/String;
    :cond_4
    const-string v2, "null"

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 396
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 397
    .local v0, id:I
    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    sget v1, Lbbc/mobile/news/R$id;->optMenuRefreshAction:I

    if-ne v0, v1, :cond_1

    .line 398
    :cond_0
    const/4 v1, 0x0

    .line 400
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 892
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->onPause()V

    .line 893
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbbc/mobile/news/HomeScreenActivity;->schedualTicker(Z)V

    .line 894
    return-void
.end method

.method public onRefreshButtonClicked()V
    .locals 2

    .prologue
    .line 782
    sget-object v0, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "onRefreshButtonClicked"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-static {p0}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbbc/mobile/news/HomeScreenActivity;->refreshFeeds(Z)V

    .line 787
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/stats/Stats;->logRefreshHomescreenACTION()Lbbc/mobile/news/stats/Stats;

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    invoke-static {p0}, Lbbc/mobile/news/dialog/SystemDialog;->showNoConnection(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 898
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->onRestart()V

    .line 900
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbbc/mobile/news/HomeScreenActivity;->schedualTicker(Z)V

    .line 901
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 886
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->onResume()V

    .line 887
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->initFragments()V

    .line 888
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 1107
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v0

    .line 1109
    .local v0, selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    invoke-virtual {v0}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v1

    .line 1110
    invoke-virtual {v0}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedArticle()Lbbc/mobile/news/model/Article;

    move-result-object v2

    .line 1108
    invoke-static {p1, v1, v2}, Lbbc/mobile/news/util/IntentFactory;->toBundle(Landroid/os/Bundle;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)Landroid/os/Bundle;

    move-result-object p1

    .line 1112
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1113
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 881
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->onStart()V

    .line 882
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 905
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->onStop()V

    .line 907
    invoke-static {}, Lbbc/mobile/news/util/BitmapCacheOptimizer;->isCacheOverLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    new-instance v0, Lbbc/mobile/news/util/BitmapCacheOptimizer;

    invoke-direct {v0}, Lbbc/mobile/news/util/BitmapCacheOptimizer;-><init>()V

    invoke-virtual {v0}, Lbbc/mobile/news/util/BitmapCacheOptimizer;->start()V

    .line 911
    :cond_0
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->updateWidgets()V

    .line 912
    return-void
.end method

.method public onTickerFailed()V
    .locals 2

    .prologue
    .line 674
    sget-object v0, Lbbc/mobile/news/HomeScreenActivity;->TAG:Ljava/lang/String;

    const-string v1, "onTickerFailed"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public onTickerSuccess(Lbbc/mobile/news/model/Ticker;II)V
    .locals 4
    .parameter "ticker"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 656
    iput-object p1, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerData:Lbbc/mobile/news/model/Ticker;

    .line 658
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getNewsFragment()Lbbc/mobile/news/NewsFragment;

    move-result-object v0

    .line 660
    .local v0, newsFragment:Lbbc/mobile/news/NewsFragment;
    const-string v1, "ARTICLE_UPDATE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTickerSuccess(), returned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Ticker;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0, p1, p2, p3}, Lbbc/mobile/news/NewsFragment;->onTickerSuccess(Lbbc/mobile/news/model/Ticker;II)V

    .line 666
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lbbc/mobile/news/HomeScreenActivity;->schedualTicker(Z)V

    .line 669
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lbbc/mobile/news/BaseActivity;->onUserLeaveHint()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mPushNotification:Lbbc/mobile/news/push/PushNotification;

    .line 264
    return-void
.end method

.method public onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;ZZI)V
    .locals 7
    .parameter "context"
    .parameter "category"
    .parameter "article"
    .parameter "updateArticle"
    .parameter "userClicked"
    .parameter "articleLoadMethod"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 961
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 967
    :cond_1
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 970
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v5, "articleFragment"

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 969
    check-cast v1, Lbbc/mobile/news/ArticleFragment;

    .line 972
    .local v1, articleFragment:Lbbc/mobile/news/ArticleFragment;
    const-string v5, "newsFragment"

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 971
    check-cast v3, Lbbc/mobile/news/NewsFragment;

    .line 974
    .local v3, newsFragment:Lbbc/mobile/news/NewsFragment;
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Lbbc/mobile/news/helper/SelectionProvider;->setSelected(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    .line 976
    invoke-static {}, Lbbc/mobile/news/util/CompatUtil;->isActionModeSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 977
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getActionModeProvider()Lbbc/mobile/news/helper/ActionModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lbbc/mobile/news/helper/ActionModeProvider;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 978
    .local v0, actionMode:Landroid/view/ActionMode;
    if-eqz v0, :cond_2

    .line 979
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 983
    .end local v0           #actionMode:Landroid/view/ActionMode;
    :cond_2
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 985
    if-eqz v1, :cond_3

    if-eqz p4, :cond_3

    .line 986
    invoke-virtual {v1}, Lbbc/mobile/news/ArticleFragment;->invalidate()V

    .line 1030
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 1031
    invoke-virtual {v3, p2, p3}, Lbbc/mobile/news/NewsFragment;->setSelectedCategory(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    goto :goto_0

    .line 991
    :cond_4
    if-eqz p4, :cond_6

    if-eqz p5, :cond_6

    .line 994
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 996
    .local v4, transaction:Landroid/support/v4/app/FragmentTransaction;
    if-nez v1, :cond_5

    .line 997
    invoke-direct {p0}, Lbbc/mobile/news/HomeScreenActivity;->createArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v1

    .line 1001
    :cond_5
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v5

    invoke-virtual {v5, p6}, Lbbc/mobile/news/helper/StateHelper;->setArticleLoadState(I)V

    .line 1003
    sget v5, Lbbc/mobile/news/R$id;->homescreenRootContainer:I

    const-string v6, "articleFragment"

    invoke-virtual {v4, v5, v1, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1004
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1015
    :try_start_0
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1017
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1024
    .end local v4           #transaction:Landroid/support/v4/app/FragmentTransaction;
    :cond_6
    if-nez p4, :cond_3

    if-nez p5, :cond_3

    .line 1025
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v5

    invoke-virtual {v5, p6}, Lbbc/mobile/news/helper/StateHelper;->setArticleLoadState(I)V

    goto :goto_1
.end method

.method public declared-synchronized requestConfig()V
    .locals 4

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mPolicy:Lbbc/mobile/news/model/Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mPolicy:Lbbc/mobile/news/model/Policy;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Policy;->isKillSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lbbc/mobile/news/HomeScreenActivity;->onConfigSuccess(Lbbc/mobile/news/model/Config;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 495
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfigRequested:Z

    if-nez v0, :cond_1

    .line 497
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 498
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lbbc/mobile/news/feed/FeedManager;->addConfigFeed(Landroid/content/Context;Landroid/os/Handler;II)V

    .line 499
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lbbc/mobile/news/feed/FeedManager;->addConfigFeed(Landroid/content/Context;Landroid/os/Handler;II)V

    .line 500
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mBoostrapFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfigRequested:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs requestNewsFeed(Lbbc/mobile/news/model/Feed;I[I)V
    .locals 7
    .parameter "feed"
    .parameter "requestMethod"
    .parameter "categoryStrategy"

    .prologue
    .line 573
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mRefreshFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 575
    const/4 v6, 0x0

    .local v6, x:I
    :goto_0
    array-length v0, p3

    if-lt v6, v0, :cond_1

    .line 579
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mRefreshFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 581
    .end local v6           #x:I
    :cond_0
    return-void

    .line 576
    .restart local v6       #x:I
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mRefreshFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v3, p0, Lbbc/mobile/news/HomeScreenActivity;->mHandler:Landroid/os/Handler;

    .line 577
    aget v4, p3, v6

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    .line 576
    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/FeedManager;->addCategoryFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 575
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public varargs requestNewsFeeds(ZI[I)V
    .locals 11
    .parameter "shouldSortList"
    .parameter "requestMethod"
    .parameter "categoryStrategy"

    .prologue
    const/4 v9, 0x0

    .line 542
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    if-eqz v0, :cond_0

    .line 543
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v6

    .line 545
    .local v6, category:Lbbc/mobile/news/model/Category;
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/HomeScreenActivity;->pendingFeeds:I

    .line 548
    const/4 v8, 0x0

    .local v8, x:I
    :goto_0
    array-length v0, p3

    if-lt v8, v0, :cond_1

    .line 566
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 569
    .end local v6           #category:Lbbc/mobile/news/model/Category;
    .end local v8           #x:I
    :cond_0
    return-void

    .line 550
    .restart local v6       #category:Lbbc/mobile/news/model/Category;
    .restart local v8       #x:I
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    .line 551
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v0

    .line 550
    :goto_1
    invoke-virtual {v1, v9, v0}, Lbbc/mobile/news/model/Config;->getVisibleFeeds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 553
    .local v7, feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 548
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v7           #feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    :cond_2
    move-object v0, v9

    .line 551
    goto :goto_1

    .line 553
    .restart local v7       #feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbbc/mobile/news/model/Feed;

    .line 555
    .local v2, feed:Lbbc/mobile/news/model/Feed;
    const-string v0, "DoubleFeed"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Feed:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v3, p0, Lbbc/mobile/news/HomeScreenActivity;->mHandler:Landroid/os/Handler;

    .line 558
    aget v4, p3, v8

    move-object v1, p0

    move v5, p2

    .line 557
    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/FeedManager;->addCategoryFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 561
    iget v0, p0, Lbbc/mobile/news/HomeScreenActivity;->pendingFeeds:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbbc/mobile/news/HomeScreenActivity;->pendingFeeds:I

    goto :goto_2
.end method

.method protected varargs requestTickerFeed(I[I)V
    .locals 7
    .parameter "requestMethod"
    .parameter "tickerStrategy"

    .prologue
    .line 525
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeed:Lbbc/mobile/news/model/Feed;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeedManager:Lbbc/mobile/news/feed/FeedManager;

    if-eqz v0, :cond_0

    .line 527
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->isTickerEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 531
    const/4 v6, 0x0

    .local v6, x:I
    :goto_0
    array-length v0, p2

    if-lt v6, v0, :cond_1

    .line 536
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 538
    .end local v6           #x:I
    :cond_0
    return-void

    .line 532
    .restart local v6       #x:I
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v2, p0, Lbbc/mobile/news/HomeScreenActivity;->mTickerFeed:Lbbc/mobile/news/model/Feed;

    iget-object v3, p0, Lbbc/mobile/news/HomeScreenActivity;->mHandler:Landroid/os/Handler;

    .line 533
    aget v4, p2, v6

    move-object v1, p0

    move v5, p1

    .line 532
    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/FeedManager;->addTickerFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 531
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public setAudioControl(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V
    .locals 2
    .parameter "audioControl"
    .parameter "audioCallback"

    .prologue
    .line 1048
    invoke-super {p0, p1, p2}, Lbbc/mobile/news/BaseActivity;->setAudioControl(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V

    .line 1050
    iget-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    if-eqz v1, :cond_0

    .line 1052
    invoke-virtual {p0}, Lbbc/mobile/news/HomeScreenActivity;->getArticleFragment()Lbbc/mobile/news/ArticleFragment;

    move-result-object v0

    .line 1054
    .local v0, articleFragment:Lbbc/mobile/news/ArticleFragment;
    if-eqz v0, :cond_0

    .line 1055
    iget-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    invoke-interface {v1}, Lbbc/mobile/news/service/AudioControl;->getCallback()Lbbc/mobile/news/service/AudioCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbbc/mobile/news/ArticleFragment;->setAudioControl(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V

    .line 1058
    .end local v0           #articleFragment:Lbbc/mobile/news/ArticleFragment;
    :cond_0
    return-void
.end method

.method protected setAvDialog(Lbbc/mobile/news/model/AVCategory;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 743
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mAVCategory:Lbbc/mobile/news/model/AVCategory;

    if-nez v0, :cond_0

    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    if-eqz p1, :cond_0

    .line 746
    iput-object p1, p0, Lbbc/mobile/news/HomeScreenActivity;->mAVCategory:Lbbc/mobile/news/model/AVCategory;

    .line 747
    new-instance v0, Lbbc/mobile/news/dialog/AVDialogNew;

    iget-object v1, p0, Lbbc/mobile/news/HomeScreenActivity;->mAVCategory:Lbbc/mobile/news/model/AVCategory;

    invoke-virtual {v1}, Lbbc/mobile/news/model/AVCategory;->getArticles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lbbc/mobile/news/dialog/AVDialogNew;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lbbc/mobile/news/HomeScreenActivity;->mAVDialog:Lbbc/mobile/news/dialog/AVDialogNew;

    .line 750
    :cond_0
    return-void
.end method

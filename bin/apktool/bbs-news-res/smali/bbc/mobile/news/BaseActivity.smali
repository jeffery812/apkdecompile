.class public Lbbc/mobile/news/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"

# interfaces
.implements Lbbc/mobile/news/model/AtomCallback;
.implements Lbbc/mobile/news/model/ConfigCallback;
.implements Lbbc/mobile/news/SpecificUkWWInit;
.implements Lbbc/mobile/news/model/FeedManagerCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/BaseActivity$InnerActivityHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

.field protected mActionModeProvider:Lbbc/mobile/news/helper/ActionModeProvider;

.field protected mAdFlagPoleTask:Lbbc/mobile/news/adverts/AdFlagPoleTask;

.field private mAdFlagpoleReturned:Z

.field private mAdFlagpoleSuccessful:Z

.field private mAdsEnabled:Z

.field protected mAudioControl:Lbbc/mobile/news/service/AudioControl;

.field protected mAudioServiceEnabled:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mFlagPoleReturnedListner:Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;

.field protected mHandler:Landroid/os/Handler;

.field protected mHasActionBar:Z

.field protected mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

.field private mIsPhone:Z

.field private mIsTablet:Z

.field protected mPolicy:Lbbc/mobile/news/model/Policy;

.field private mPolicyFeedManager:Lbbc/mobile/news/feed/FeedManager;

.field protected mSchedualTicker:Z

.field private mTickerUpdateDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lbbc/mobile/news/BaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/BaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 83
    invoke-static {p0}, Lbbc/mobile/news/actionbar/ActionBarHelper;->createInstance(Landroid/app/Activity;)Lbbc/mobile/news/actionbar/ActionBarHelper;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/BaseActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    .line 85
    const v0, 0x493e0

    iput v0, p0, Lbbc/mobile/news/BaseActivity;->mTickerUpdateDelay:I

    .line 87
    iput-boolean v1, p0, Lbbc/mobile/news/BaseActivity;->mAudioServiceEnabled:Z

    .line 88
    iput-boolean v1, p0, Lbbc/mobile/news/BaseActivity;->mSchedualTicker:Z

    .line 89
    iput-boolean v1, p0, Lbbc/mobile/news/BaseActivity;->mHasActionBar:Z

    .line 90
    iput-boolean v1, p0, Lbbc/mobile/news/BaseActivity;->mAdFlagpoleSuccessful:Z

    .line 91
    iput-boolean v1, p0, Lbbc/mobile/news/BaseActivity;->mAdFlagpoleReturned:Z

    .line 92
    iput-boolean v1, p0, Lbbc/mobile/news/BaseActivity;->mAdsEnabled:Z

    .line 660
    new-instance v0, Lbbc/mobile/news/BaseActivity$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/BaseActivity$1;-><init>(Lbbc/mobile/news/BaseActivity;)V

    iput-object v0, p0, Lbbc/mobile/news/BaseActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 738
    new-instance v0, Lbbc/mobile/news/BaseActivity$2;

    invoke-direct {v0, p0}, Lbbc/mobile/news/BaseActivity$2;-><init>(Lbbc/mobile/news/BaseActivity;)V

    iput-object v0, p0, Lbbc/mobile/news/BaseActivity;->mFlagPoleReturnedListner:Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;

    .line 78
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lbbc/mobile/news/BaseActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/BaseActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget v0, p0, Lbbc/mobile/news/BaseActivity;->mTickerUpdateDelay:I

    return v0
.end method

.method public static lollipopUIChanges(Landroid/app/Activity;Z)V
    .locals 5
    .parameter "activity"
    .parameter "hasActionBar"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 389
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 390
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    .line 391
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lbbc/mobile/news/R$drawable;->ic_stat_notify_large:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 393
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbbc/mobile/news/R$color;->action_bar_normal_red:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 390
    invoke-direct {v0, v2, v1, v3}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 395
    .local v0, taskDescription:Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 397
    if-nez p1, :cond_0

    .line 398
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 399
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$color;->tint_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 398
    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 402
    .end local v0           #taskDescription:Landroid/app/ActivityManager$TaskDescription;
    :cond_0
    return-void
.end method

.method public static final startHomeScreen(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 242
    sget-object v3, Lbbc/mobile/news/helper/NewsServiceConstants;->HOME_ACTIVITY_INTENT:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v3}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    .local v0, classObj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 244
    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 245
    check-cast v1, Ljava/lang/Class;

    .line 246
    .local v1, cobj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 259
    .end local v1           #cobj:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 260
    return-void
.end method


# virtual methods
.method public bindAudioService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 682
    iput-boolean v2, p0, Lbbc/mobile/news/BaseActivity;->mAudioServiceEnabled:Z

    .line 683
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbbc/mobile/news/service/AudioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 684
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lbbc/mobile/news/BaseActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lbbc/mobile/news/BaseActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 685
    return-void
.end method

.method public checkPolicies()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 591
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lbbc/mobile/app/NewsApplication;

    .line 592
    .local v2, newsApplication:Lbbc/mobile/app/NewsApplication;
    invoke-virtual {v2}, Lbbc/mobile/app/NewsApplication;->getPolicy()Lbbc/mobile/news/model/Policy;

    move-result-object v3

    .line 594
    .local v3, policy:Lbbc/mobile/news/model/Policy;
    if-nez v3, :cond_1

    .line 596
    iget-object v6, p0, Lbbc/mobile/news/BaseActivity;->mPolicyFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v6}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 597
    iget-object v6, p0, Lbbc/mobile/news/BaseActivity;->mPolicyFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v7, p0, Lbbc/mobile/news/BaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p0, v7, v5, v4}, Lbbc/mobile/news/feed/FeedManager;->addPolicyFeed(Landroid/content/Context;Landroid/os/Handler;II)V

    .line 598
    iget-object v4, p0, Lbbc/mobile/news/BaseActivity;->mPolicyFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v4}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    :cond_0
    :goto_0
    move v4, v5

    .line 635
    :goto_1
    return v4

    .line 601
    :cond_1
    iput-object v3, p0, Lbbc/mobile/news/BaseActivity;->mPolicy:Lbbc/mobile/news/model/Policy;

    .line 602
    invoke-virtual {v3}, Lbbc/mobile/news/model/Policy;->isKillSwitch()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 604
    sget v6, Lbbc/mobile/news/R$string;->policy_kill_title:I

    sget v7, Lbbc/mobile/news/R$string;->policy_kill_message:I

    .line 603
    invoke-static {p0, v6, v7, v5}, Lbbc/mobile/news/dialog/SystemDialog;->showStatic(Landroid/app/Activity;IIZ)V

    goto :goto_1

    .line 608
    :cond_2
    invoke-virtual {v3, p0}, Lbbc/mobile/news/model/Policy;->isAtMinVersion(Landroid/content/Context;)Z

    move-result v1

    .line 611
    .local v1, isAtMinVersion:Z
    invoke-virtual {v3}, Lbbc/mobile/news/model/Policy;->getCheckUpdateAvailable()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 612
    if-nez v1, :cond_3

    .line 615
    sget v6, Lbbc/mobile/news/R$string;->update_mandatory_title:I

    sget v7, Lbbc/mobile/news/R$string;->update_mandatory_message:I

    .line 614
    invoke-static {p0, v6, v7, v5}, Lbbc/mobile/news/dialog/UpdateAppDialog;->build(Landroid/app/Activity;IIZ)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-static {v5}, Lbbc/mobile/news/dialog/UpdateAppDialog;->show(Landroid/app/AlertDialog;)V

    goto :goto_1

    .line 620
    :cond_3
    invoke-virtual {v3}, Lbbc/mobile/news/model/Policy;->getCheckUpdateAvailable()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 621
    if-nez v1, :cond_0

    invoke-virtual {v3}, Lbbc/mobile/news/model/Policy;->hasDismissedOptionalUpdate()Z

    move-result v6

    if-nez v6, :cond_0

    .line 624
    sget v6, Lbbc/mobile/news/R$string;->update_available_title:I

    sget v7, Lbbc/mobile/news/R$string;->update_available_message:I

    .line 623
    invoke-static {p0, v6, v7, v4}, Lbbc/mobile/news/dialog/UpdateAppDialog;->build(Landroid/app/Activity;IIZ)Landroid/app/AlertDialog;

    move-result-object v0

    .line 626
    .local v0, alertDialog:Landroid/app/AlertDialog;
    new-instance v4, Lbbc/mobile/news/BaseActivity$3;

    invoke-direct {v4, p0, v3}, Lbbc/mobile/news/BaseActivity$3;-><init>(Lbbc/mobile/news/BaseActivity;Lbbc/mobile/news/model/Policy;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 632
    invoke-static {v0}, Lbbc/mobile/news/dialog/UpdateAppDialog;->show(Landroid/app/AlertDialog;)V

    goto :goto_0
.end method

.method protected getActionBarHelper()Lbbc/mobile/news/actionbar/ActionBarHelper;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    return-object v0
.end method

.method public getActionModeProvider()Lbbc/mobile/news/helper/ActionModeProvider;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mActionModeProvider:Lbbc/mobile/news/helper/ActionModeProvider;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lbbc/mobile/news/helper/ActionModeProvider;

    invoke-direct {v0}, Lbbc/mobile/news/helper/ActionModeProvider;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/BaseActivity;->mActionModeProvider:Lbbc/mobile/news/helper/ActionModeProvider;

    .line 204
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mActionModeProvider:Lbbc/mobile/news/helper/ActionModeProvider;

    return-object v0
.end method

.method public getActivityScreenOrientation()I
    .locals 1

    .prologue
    .line 726
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getOrientationsPreferences(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getAdHolderResId()I
    .locals 1

    .prologue
    .line 195
    sget v0, Lbbc/mobile/news/R$id;->bannerViewPlaceHolder:I

    return v0
.end method

.method public getAudioControl()Lbbc/mobile/news/service/AudioControl;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    return-object v0
.end method

.method public getConfig()Lbbc/mobile/news/model/Config;
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/actionbar/ActionBarHelper;->getMenuInflater(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getPolicy()Lbbc/mobile/news/model/Policy;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mPolicy:Lbbc/mobile/news/model/Policy;

    return-object v0
.end method

.method public getTickerUpdateDelay()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lbbc/mobile/news/BaseActivity;->mTickerUpdateDelay:I

    return v0
.end method

.method public hasAdFlagpoleReturned()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lbbc/mobile/news/BaseActivity;->mAdFlagpoleReturned:Z

    return v0
.end method

.method protected initActionBar()Landroid/app/ActionBar;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public initAdManager(I)Lbbc/mobile/news/adverts/AdManager;
    .locals 1
    .parameter "adViewHolderId"

    .prologue
    .line 187
    new-instance v0, Lbbc/mobile/news/adverts/BlankAdManager;

    invoke-direct {v0}, Lbbc/mobile/news/adverts/BlankAdManager;-><init>()V

    return-object v0
.end method

.method public initAdManager(Landroid/view/ViewGroup;)Lbbc/mobile/news/adverts/AdManager;
    .locals 1
    .parameter "adViewHolder"

    .prologue
    .line 191
    new-instance v0, Lbbc/mobile/news/adverts/BlankAdManager;

    invoke-direct {v0}, Lbbc/mobile/news/adverts/BlankAdManager;-><init>()V

    return-object v0
.end method

.method public initWWOrUkSpecifics()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public isAdFlagpoleSuccessful()Z
    .locals 1

    .prologue
    .line 766
    iget-boolean v0, p0, Lbbc/mobile/news/BaseActivity;->mAdFlagpoleSuccessful:Z

    return v0
.end method

.method public isAdsEnabled()Z
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lbbc/mobile/news/BaseActivity;->mAdsEnabled:Z

    return v0
.end method

.method public isAudioServiceEnabled()Z
    .locals 1

    .prologue
    .line 696
    iget-boolean v0, p0, Lbbc/mobile/news/BaseActivity;->mAudioServiceEnabled:Z

    return v0
.end method

.method public isKillSwitch()Z
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mPolicy:Lbbc/mobile/news/model/Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mPolicy:Lbbc/mobile/news/model/Policy;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Policy;->isKillSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhone()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Lbbc/mobile/news/BaseActivity;->mIsPhone:Z

    return v0
.end method

.method public isTablet()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lbbc/mobile/news/BaseActivity;->mIsTablet:Z

    return v0
.end method

.method public onAVButtonClicked()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onAdFlagPoleReturned(ZZ)V
    .locals 1
    .parameter "addsEnabled"
    .parameter "requestSuccessful"

    .prologue
    .line 749
    iput-boolean p1, p0, Lbbc/mobile/news/BaseActivity;->mAdsEnabled:Z

    .line 750
    iput-boolean p2, p0, Lbbc/mobile/news/BaseActivity;->mAdFlagpoleSuccessful:Z

    .line 751
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/BaseActivity;->mAdFlagpoleReturned:Z

    .line 752
    return-void
.end method

.method public onAtomFailed(Lbbc/mobile/news/model/Feed;II)V
    .locals 0
    .parameter "feed"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 317
    return-void
.end method

.method public onAtomSuccess(Lbbc/mobile/news/model/Category;II)V
    .locals 0
    .parameter "category"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 311
    return-void
.end method

.method public onAvDialogFailed()V
    .locals 2

    .prologue
    .line 353
    sget-object v0, Lbbc/mobile/news/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onAvDialogFailed()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public onAvDialogSuccess(Lbbc/mobile/news/model/AVCategory;II)V
    .locals 2
    .parameter "avc"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 346
    sget-object v0, Lbbc/mobile/news/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "onAvDialogSuccess()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, p1}, Lbbc/mobile/news/BaseActivity;->setAvDialog(Lbbc/mobile/news/model/AVCategory;)V

    .line 348
    return-void
.end method

.method public onConfigFailed(Lbbc/mobile/news/model/Config;II)V
    .locals 0
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 305
    return-void
.end method

.method public onConfigSuccess(Lbbc/mobile/news/model/Config;II)V
    .locals 0
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 299
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 365
    new-instance v1, Lbbc/mobile/news/BaseActivity$InnerActivityHandler;

    invoke-direct {v1, p0}, Lbbc/mobile/news/BaseActivity$InnerActivityHandler;-><init>(Lbbc/mobile/news/BaseActivity;)V

    iput-object v1, p0, Lbbc/mobile/news/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 367
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 369
    .local v0, resources:Landroid/content/res/Resources;
    sget v1, Lbbc/mobile/news/R$bool;->isPhone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lbbc/mobile/news/BaseActivity;->mIsPhone:Z

    .line 370
    sget v1, Lbbc/mobile/news/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lbbc/mobile/news/BaseActivity;->mIsTablet:Z

    .line 372
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 374
    iget-boolean v1, p0, Lbbc/mobile/news/BaseActivity;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lbbc/mobile/news/BaseActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    invoke-virtual {v1, p1}, Lbbc/mobile/news/actionbar/ActionBarHelper;->onCreate(Landroid/os/Bundle;)V

    .line 378
    :cond_0
    iget-boolean v1, p0, Lbbc/mobile/news/BaseActivity;->mHasActionBar:Z

    invoke-static {p0, v1}, Lbbc/mobile/news/BaseActivity;->lollipopUIChanges(Landroid/app/Activity;Z)V

    .line 380
    new-instance v1, Lbbc/mobile/news/feed/ImageHandler;

    const-string v2, "NewsImageHandler"

    invoke-direct {v1, v2}, Lbbc/mobile/news/feed/ImageHandler;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lbbc/mobile/news/BaseActivity;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    .line 381
    new-instance v1, Lbbc/mobile/news/feed/FeedManager;

    const-string v2, "PolicyFeedManager"

    invoke-direct {v1, v2}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lbbc/mobile/news/BaseActivity;->mPolicyFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 383
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->checkPolicies()Z

    .line 384
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 443
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 444
    .local v0, result:Z
    if-nez p1, :cond_0

    .line 445
    iget-object v1, p0, Lbbc/mobile/news/BaseActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    invoke-virtual {v1, p2}, Lbbc/mobile/news/actionbar/ActionBarHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 447
    :cond_0
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mPolicyFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->quit()V

    .line 422
    iput-object v1, p0, Lbbc/mobile/news/BaseActivity;->mPolicyFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 423
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/ImageHandler;->clearBitmapRequests()V

    .line 425
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/ImageHandler;->quit()V

    .line 426
    iput-object v1, p0, Lbbc/mobile/news/BaseActivity;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    .line 428
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 429
    return-void
.end method

.method public onEditButtonClicked()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onHomeButtonClicked()V
    .locals 0

    .prologue
    .line 236
    invoke-static {p0}, Lbbc/mobile/news/BaseActivity;->startHomeScreen(Landroid/app/Activity;)V

    .line 237
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 223
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, cl:Ljava/lang/String;
    const-string v1, "bbc.mobile.news.ww.HomeWwActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    invoke-virtual {v1, p0}, Lbbc/mobile/news/stats/Stats;->logBackButtonPressedACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;

    .line 231
    .end local v0           #cl:Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onLiveButtonClicked()V
    .locals 5

    .prologue
    .line 270
    invoke-static {}, Lbbc/mobile/news/helper/FlashUtilsNew;->isNativeCapable()Z

    move-result v1

    .line 271
    .local v1, nativeCapable:Z
    if-eqz v1, :cond_1

    .line 272
    const-string v2, "http://open.live.bbc.co.uk/mediaselector/5/select/version/2.0/mediaset/journalism-http-tablet/vpid/bbc_news24/transferformat/hls/format/json"

    .line 276
    .local v2, playlistUrl:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 277
    const-string v4, "news.live.media_asset.news_channel.page"

    .line 276
    invoke-static {p0, v3, v2, v4}, Lbbc/mobile/news/util/IntentFactory;->getVideoActivityIntent(Landroid/content/Context;Lbbc/mobile/news/model/Article;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 278
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "isLive"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    if-nez v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lbbc/mobile/news/VideoActivity;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 282
    :cond_0
    invoke-virtual {p0, v0}, Lbbc/mobile/news/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 283
    return-void

    .line 274
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #playlistUrl:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/util/GlobalSettings;->getLivePlaylistUrl()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #playlistUrl:Ljava/lang/String;
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 465
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 467
    .local v0, id:I
    const v4, 0x102002c

    if-ne v0, v4, :cond_1

    .line 468
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->onHomeButtonClicked()V

    .line 528
    :cond_0
    :goto_0
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 470
    :cond_1
    sget v4, Lbbc/mobile/news/R$id;->optMenuSendReport:I

    if-ne v0, v4, :cond_2

    .line 471
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->startReportActivity()V

    goto :goto_0

    .line 473
    :cond_2
    sget v4, Lbbc/mobile/news/R$id;->optMenuDevelopment:I

    if-ne v0, v4, :cond_3

    .line 474
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 475
    const-class v5, Lbbc/mobile/news/SettingsActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbbc/mobile/news/init/DI;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 474
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lbbc/mobile/news/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 477
    :cond_3
    sget v4, Lbbc/mobile/news/R$id;->optMenuHelp:I

    if-ne v0, v4, :cond_5

    .line 478
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v2

    .line 479
    .local v2, stats:Lbbc/mobile/news/stats/Stats;
    if-eqz v2, :cond_4

    .line 480
    invoke-virtual {v2}, Lbbc/mobile/news/stats/Stats;->logHelpClickACTION()Lbbc/mobile/news/stats/Stats;

    .line 481
    invoke-virtual {v2}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v1

    .line 482
    .local v1, omniture:Lbbc/mobile/news/stats/Omniture3;
    if-eqz v1, :cond_4

    .line 483
    invoke-virtual {v1, p0}, Lbbc/mobile/news/stats/Omniture3;->logHelpPageView(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;

    .line 486
    .end local v1           #omniture:Lbbc/mobile/news/stats/Omniture3;
    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 487
    const-class v5, Lbbc/mobile/news/HelpActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbbc/mobile/news/init/DI;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 486
    invoke-virtual {p0, v4}, Lbbc/mobile/news/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 489
    .end local v2           #stats:Lbbc/mobile/news/stats/Stats;
    :cond_5
    sget v4, Lbbc/mobile/news/R$id;->optMenuPrivacy:I

    if-ne v0, v4, :cond_7

    .line 490
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v2

    .line 491
    .restart local v2       #stats:Lbbc/mobile/news/stats/Stats;
    if-eqz v2, :cond_6

    .line 492
    invoke-virtual {v2}, Lbbc/mobile/news/stats/Stats;->logPrivacyClickACTION()Lbbc/mobile/news/stats/Stats;

    .line 493
    invoke-virtual {v2}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v1

    .line 494
    .restart local v1       #omniture:Lbbc/mobile/news/stats/Omniture3;
    if-eqz v1, :cond_6

    .line 495
    invoke-virtual {v1, p0}, Lbbc/mobile/news/stats/Omniture3;->logPrivacyPageView(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;

    .line 498
    .end local v1           #omniture:Lbbc/mobile/news/stats/Omniture3;
    :cond_6
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/util/GlobalSettings;->getPrivacyUrl()Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, url:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 500
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lbbc/mobile/news/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 503
    .end local v2           #stats:Lbbc/mobile/news/stats/Stats;
    .end local v3           #url:Ljava/lang/String;
    :cond_7
    sget v4, Lbbc/mobile/news/R$id;->optMenuTermsAndConditions:I

    if-ne v0, v4, :cond_8

    .line 504
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->startTermsAndConditionsActivity()V

    goto/16 :goto_0

    .line 506
    :cond_8
    sget v4, Lbbc/mobile/news/R$id;->optMenuRefreshAction:I

    if-ne v0, v4, :cond_9

    .line 507
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->onRefreshButtonClicked()V

    goto/16 :goto_0

    .line 509
    :cond_9
    sget v4, Lbbc/mobile/news/R$id;->optMenuLiveAction:I

    if-ne v0, v4, :cond_a

    .line 510
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->onLiveButtonClicked()V

    goto/16 :goto_0

    .line 512
    :cond_a
    sget v4, Lbbc/mobile/news/R$id;->optMenuEditAction:I

    if-ne v0, v4, :cond_b

    .line 513
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->onEditButtonClicked()V

    goto/16 :goto_0

    .line 515
    :cond_b
    sget v4, Lbbc/mobile/news/R$id;->optMenuIncreaseTextSize:I

    if-ne v0, v4, :cond_c

    .line 516
    invoke-static {p0}, Lbbc/mobile/news/helper/TextSizeHelper;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TextSizeHelper;

    move-result-object v4

    invoke-virtual {v4, v5}, Lbbc/mobile/news/helper/TextSizeHelper;->increaseTextSize(Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;)I

    goto/16 :goto_0

    .line 518
    :cond_c
    sget v4, Lbbc/mobile/news/R$id;->optMenuDecreaseTextSize:I

    if-ne v0, v4, :cond_d

    .line 519
    invoke-static {p0}, Lbbc/mobile/news/helper/TextSizeHelper;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TextSizeHelper;

    move-result-object v4

    invoke-virtual {v4, v5}, Lbbc/mobile/news/helper/TextSizeHelper;->decreaseTextSize(Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;)I

    goto/16 :goto_0

    .line 521
    :cond_d
    sget v4, Lbbc/mobile/news/R$id;->optMenuWatchListenAction:I

    if-ne v0, v4, :cond_e

    .line 522
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->onAVButtonClicked()V

    goto/16 :goto_0

    .line 525
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public onPolicyFailed()V
    .locals 0

    .prologue
    .line 653
    return-void
.end method

.method public onPolicySuccess(Lbbc/mobile/news/model/Policy;II)V
    .locals 1
    .parameter "policy"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 641
    if-eqz p1, :cond_0

    .line 642
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lbbc/mobile/app/NewsApplication;

    .line 643
    .local v0, newsApplication:Lbbc/mobile/app/NewsApplication;
    invoke-virtual {v0, p1}, Lbbc/mobile/app/NewsApplication;->setPolicy(Lbbc/mobile/news/model/Policy;)V

    .line 644
    iput-object p1, p0, Lbbc/mobile/news/BaseActivity;->mPolicy:Lbbc/mobile/news/model/Policy;

    .line 646
    .end local v0           #newsApplication:Lbbc/mobile/app/NewsApplication;
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->checkPolicies()Z

    .line 647
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 408
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mActionBarHelper:Lbbc/mobile/news/actionbar/ActionBarHelper;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/actionbar/ActionBarHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 409
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 453
    sget v2, Lbbc/mobile/news/R$id;->optMenuIncreaseTextSize:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 454
    .local v1, increaseTextItem:Landroid/view/MenuItem;
    sget v2, Lbbc/mobile/news/R$id;->optMenuDecreaseTextSize:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 455
    .local v0, decreaseTextItem:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 456
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 457
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 459
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onRefreshButtonClicked()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 414
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 415
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->getActivityScreenOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/BaseActivity;->setRequestedOrientation(I)V

    .line 416
    return-void
.end method

.method public onTextFailed()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onTextSuccess(Ljava/lang/String;II)V
    .locals 0
    .parameter "text"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 335
    return-void
.end method

.method public onTickerFailed()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public onTickerSuccess(Lbbc/mobile/news/model/Ticker;II)V
    .locals 0
    .parameter "ticker"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 323
    return-void
.end method

.method public requestAdFlagPole()V
    .locals 2

    .prologue
    .line 731
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    new-instance v0, Lbbc/mobile/news/adverts/AdFlagPoleTask;

    invoke-direct {v0, p0}, Lbbc/mobile/news/adverts/AdFlagPoleTask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbbc/mobile/news/BaseActivity;->mAdFlagPoleTask:Lbbc/mobile/news/adverts/AdFlagPoleTask;

    .line 733
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mAdFlagPoleTask:Lbbc/mobile/news/adverts/AdFlagPoleTask;

    iget-object v1, p0, Lbbc/mobile/news/BaseActivity;->mFlagPoleReturnedListner:Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/adverts/AdFlagPoleTask;->setOnAdFlagPoleReturnedListener(Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;)V

    .line 734
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mAdFlagPoleTask:Lbbc/mobile/news/adverts/AdFlagPoleTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/adverts/AdFlagPoleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 736
    :cond_0
    return-void
.end method

.method protected varargs requestTickerFeed(I[I)V
    .locals 0
    .parameter "requestMethod"
    .parameter "tickerStrategy"

    .prologue
    .line 541
    return-void
.end method

.method public setAudioControl(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V
    .locals 0
    .parameter "audioControl"
    .parameter "audioCallback"

    .prologue
    .line 657
    iput-object p1, p0, Lbbc/mobile/news/BaseActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    .line 658
    return-void
.end method

.method protected setAvDialog(Lbbc/mobile/news/model/AVCategory;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 564
    return-void
.end method

.method public setTickerUpdateDelay(I)V
    .locals 0
    .parameter "tickerUpdateDelay"

    .prologue
    .line 545
    iput p1, p0, Lbbc/mobile/news/BaseActivity;->mTickerUpdateDelay:I

    .line 546
    return-void
.end method

.method protected showRefreshSpinner(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 568
    invoke-virtual {p0}, Lbbc/mobile/news/BaseActivity;->getActionBarHelper()Lbbc/mobile/news/actionbar/ActionBarHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbc/mobile/news/actionbar/ActionBarHelper;->setRefreshActionItemState(Z)V

    .line 569
    return-void
.end method

.method protected startReportActivity()V
    .locals 2

    .prologue
    .line 533
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbbc/mobile/news/ReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 534
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {p0, v0}, Lbbc/mobile/news/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 536
    return-void
.end method

.method protected startTermsAndConditionsActivity()V
    .locals 6

    .prologue
    .line 573
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    .line 574
    .local v1, stats:Lbbc/mobile/news/stats/Stats;
    invoke-virtual {v1}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    .line 576
    .local v0, omniture:Lbbc/mobile/news/stats/Omniture3;
    invoke-virtual {v1}, Lbbc/mobile/news/stats/Stats;->logTOSClickACTION()Lbbc/mobile/news/stats/Stats;

    .line 578
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0, p0}, Lbbc/mobile/news/stats/Omniture3;->logTOSPageView(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;

    .line 581
    :cond_0
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/util/GlobalSettings;->getTermsAndConditionsUrl()Ljava/lang/String;

    move-result-object v3

    .line 582
    .local v3, url:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 583
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 584
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 585
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lbbc/mobile/news/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 587
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public unbindAudioService()V
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lbbc/mobile/news/BaseActivity;->mAudioServiceEnabled:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/BaseActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 692
    :cond_0
    return-void
.end method

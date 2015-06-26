.class public Lbbc/mobile/news/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lbbc/mobile/news/OnArticleSelectedListener;
.implements Lbbc/mobile/news/adverts/AdFlagPoleTask$OnAdFlagPoleReturnedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAdManager:Lbbc/mobile/news/adverts/AdManager;

.field protected mOrientation:I

.field protected mShareHelper:Lbbc/mobile/news/util/ShareHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lbbc/mobile/news/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/BaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lbbc/mobile/news/BaseFragment;->mOrientation:I

    .line 31
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public getActionBarHelper()Lbbc/mobile/news/actionbar/ActionBarHelper;
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->getActionBarHelper()Lbbc/mobile/news/actionbar/ActionBarHelper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioControl()Lbbc/mobile/news/service/AudioControl;
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->getAudioControl()Lbbc/mobile/news/service/AudioControl;

    move-result-object v0

    return-object v0
.end method

.method public getBaseActivity()Lbbc/mobile/news/BaseActivity;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/BaseActivity;

    return-object v0
.end method

.method public getRefreshFeedListener()Lbbc/mobile/news/OnRefreshFeedListener;
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    .line 248
    .local v0, baseActivity:Lbbc/mobile/news/BaseActivity;
    instance-of v1, v0, Lbbc/mobile/news/HomeScreenActivity;

    if-eqz v1, :cond_0

    .line 249
    check-cast v0, Lbbc/mobile/news/HomeScreenActivity;

    .end local v0           #baseActivity:Lbbc/mobile/news/BaseActivity;
    invoke-virtual {v0}, Lbbc/mobile/news/HomeScreenActivity;->getRefreshFeedListener()Lbbc/mobile/news/OnRefreshFeedListener;

    move-result-object v1

    .line 251
    :goto_0
    return-object v1

    .restart local v0       #baseActivity:Lbbc/mobile/news/BaseActivity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShareIntent(Lbbc/mobile/news/model/Article;)Landroid/content/Intent;
    .locals 1
    .parameter "article"

    .prologue
    .line 62
    invoke-static {p1}, Lbbc/mobile/news/util/IntentFactory;->getShareIntent(Lbbc/mobile/news/model/Article;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTickerData()Lbbc/mobile/news/model/Ticker;
    .locals 3

    .prologue
    .line 91
    sget-object v1, Lbbc/mobile/news/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "getNewsCategorys()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 93
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lbbc/mobile/news/HomeScreenActivity;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Lbbc/mobile/news/HomeScreenActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lbbc/mobile/news/HomeScreenActivity;->getTickerData()Lbbc/mobile/news/model/Ticker;

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initAdManager(I)V
    .locals 1
    .parameter "adHolderViewID"

    .prologue
    .line 151
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbc/mobile/news/BaseActivity;->initAdManager(I)Lbbc/mobile/news/adverts/AdManager;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/BaseFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    .line 152
    return-void
.end method

.method public initAdManager(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "adHolderView"

    .prologue
    .line 146
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbc/mobile/news/BaseActivity;->initAdManager(Landroid/view/ViewGroup;)Lbbc/mobile/news/adverts/AdManager;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/BaseFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    .line 147
    return-void
.end method

.method public initOrientation()V
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lbbc/mobile/news/BaseFragment;->mOrientation:I

    .line 267
    iget v0, p0, Lbbc/mobile/news/BaseFragment;->mOrientation:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/BaseFragment;->onOrientationChanged(I)V

    .line 268
    return-void
.end method

.method public isAdsEnabled()Z
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->isAdsEnabled()Z

    move-result v0

    return v0
.end method

.method public isForceRequest()Z
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    .line 126
    .local v0, baseActivity:Lbbc/mobile/news/BaseActivity;
    instance-of v1, v0, Lbbc/mobile/news/HomeScreenActivity;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Lbbc/mobile/news/HomeScreenActivity;

    .end local v0           #baseActivity:Lbbc/mobile/news/BaseActivity;
    invoke-virtual {v0}, Lbbc/mobile/news/HomeScreenActivity;->isForceRequest()Z

    move-result v1

    .line 129
    :goto_0
    return v1

    .restart local v0       #baseActivity:Lbbc/mobile/news/BaseActivity;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLandscape()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 284
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 287
    :cond_0
    return v1
.end method

.method public isPhone(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 79
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    .line 80
    .local v0, baseActivity:Lbbc/mobile/news/BaseActivity;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->isPhone()Z

    move-result v1

    .line 86
    :goto_0
    return v1

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$bool;->isPhone:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTablet(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 67
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    .line 68
    .local v0, baseActivity:Lbbc/mobile/news/BaseActivity;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->isTablet()Z

    move-result v1

    .line 74
    :goto_0
    return v1

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$bool;->isTablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 275
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lbbc/mobile/news/BaseFragment;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 276
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lbbc/mobile/news/BaseFragment;->mOrientation:I

    .line 277
    iget v0, p0, Lbbc/mobile/news/BaseFragment;->mOrientation:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/BaseFragment;->onOrientationChanged(I)V

    .line 279
    :cond_0
    return-void
.end method

.method public onFlagPoleReturned(ZZ)V
    .locals 0
    .parameter "addsEnabled"
    .parameter "requestOK"

    .prologue
    .line 233
    return-void
.end method

.method public onHomeButtonClicked()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 215
    .local v0, id:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->onHomeButtonClicked()V

    .line 217
    const/4 v1, 0x1

    .line 226
    :goto_0
    return v1

    .line 219
    :cond_0
    sget v1, Lbbc/mobile/news/R$id;->optMenuRefreshAction:I

    if-ne v0, v1, :cond_2

    .line 220
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->onRefreshButtonClicked()V

    .line 226
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 222
    :cond_2
    sget v1, Lbbc/mobile/news/R$id;->optMenuShareAction:I

    if-ne v0, v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->onShareClicked()V

    goto :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 292
    iget-object v0, p0, Lbbc/mobile/news/BaseFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lbbc/mobile/news/BaseFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/adverts/AdManager;->onOrientationChanged(I)V

    .line 295
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 183
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 184
    sget v4, Lbbc/mobile/news/R$id;->optMenuWatchListenAction:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 185
    .local v0, avDialog:Landroid/view/MenuItem;
    sget v4, Lbbc/mobile/news/R$id;->optMenuLiveAction:I

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 187
    .local v2, liveButton:Landroid/view/MenuItem;
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isUk()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 188
    const/16 v5, 0xe

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lbbc/mobile/news/helper/FlashUtilsNew;->isFlashCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 187
    :cond_0
    const/4 v3, 0x1

    .line 189
    .local v3, liveVisible:Z
    :goto_0
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v1

    .line 191
    .local v1, avVisible:Z
    invoke-virtual {p0, v2, v3}, Lbbc/mobile/news/BaseFragment;->setMenuItemVisibility(Landroid/view/MenuItem;Z)Landroid/view/MenuItem;

    .line 192
    invoke-virtual {p0, v0, v1}, Lbbc/mobile/news/BaseFragment;->setMenuItemVisibility(Landroid/view/MenuItem;Z)Landroid/view/MenuItem;

    .line 194
    .end local v0           #avDialog:Landroid/view/MenuItem;
    .end local v1           #avVisible:Z
    .end local v2           #liveButton:Landroid/view/MenuItem;
    .end local v3           #liveVisible:Z
    :cond_1
    return-void

    .line 187
    .restart local v0       #avDialog:Landroid/view/MenuItem;
    .restart local v2       #liveButton:Landroid/view/MenuItem;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onRefreshButtonClicked()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onShareClicked()V
    .locals 3

    .prologue
    .line 166
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 167
    .local v0, article:Lbbc/mobile/news/model/Article;
    if-eqz v0, :cond_1

    .line 168
    sget-object v1, Lbbc/mobile/news/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "onShareClicked() - shareing article"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lbbc/mobile/news/BaseFragment;->mShareHelper:Lbbc/mobile/news/util/ShareHelper;

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Lbbc/mobile/news/util/ShareHelper;

    invoke-direct {v1}, Lbbc/mobile/news/util/ShareHelper;-><init>()V

    iput-object v1, p0, Lbbc/mobile/news/BaseFragment;->mShareHelper:Lbbc/mobile/news/util/ShareHelper;

    .line 172
    :cond_0
    iget-object v1, p0, Lbbc/mobile/news/BaseFragment;->mShareHelper:Lbbc/mobile/news/util/ShareHelper;

    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lbbc/mobile/news/util/ShareHelper;->shareArticle(Lbbc/mobile/news/model/Article;Landroid/app/Activity;)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_1
    sget-object v1, Lbbc/mobile/news/BaseFragment;->TAG:Ljava/lang/String;

    const-string v2, "onShareClicked() - article null"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;ZZI)V
    .locals 8
    .parameter "context"
    .parameter "category"
    .parameter "article"
    .parameter "updateArticle"
    .parameter "userClicked"
    .parameter "articleLoadMethod"

    .prologue
    .line 137
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 138
    .local v7, activity:Landroid/app/Activity;
    instance-of v0, v7, Lbbc/mobile/news/OnArticleSelectedListener;

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 139
    check-cast v0, Lbbc/mobile/news/OnArticleSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lbbc/mobile/news/OnArticleSelectedListener;->onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;ZZI)V

    .line 142
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter "root"
    .parameter "savedState"

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->initOrientation()V

    .line 49
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 50
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lbbc/mobile/news/BaseFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lbbc/mobile/news/BaseFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lbbc/mobile/news/adverts/AdManager;->onOrientationChanged(I)V

    .line 53
    :cond_0
    return-void
.end method

.method public requestConfig()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    .line 102
    .local v0, baseActivity:Lbbc/mobile/news/BaseActivity;
    instance-of v1, v0, Lbbc/mobile/news/HomeScreenActivity;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Lbbc/mobile/news/HomeScreenActivity;

    .end local v0           #baseActivity:Lbbc/mobile/news/BaseActivity;
    invoke-virtual {v0}, Lbbc/mobile/news/HomeScreenActivity;->requestConfig()V

    .line 105
    :cond_0
    return-void
.end method

.method public varargs requestNewsFeed(Lbbc/mobile/news/model/Feed;I[I)V
    .locals 2
    .parameter "feed"
    .parameter "requestMethod"
    .parameter "categoryStrategy"

    .prologue
    .line 117
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    .line 118
    .local v0, baseActivity:Lbbc/mobile/news/BaseActivity;
    instance-of v1, v0, Lbbc/mobile/news/HomeScreenActivity;

    if-eqz v1, :cond_0

    .line 119
    check-cast v0, Lbbc/mobile/news/HomeScreenActivity;

    .end local v0           #baseActivity:Lbbc/mobile/news/BaseActivity;
    invoke-virtual {v0, p1, p2, p3}, Lbbc/mobile/news/HomeScreenActivity;->requestNewsFeed(Lbbc/mobile/news/model/Feed;I[I)V

    .line 121
    :cond_0
    return-void
.end method

.method public varargs requestNewsFeeds(ZI[I)V
    .locals 2
    .parameter "shouldSortList"
    .parameter "requestMethod"
    .parameter "categoryStrategy"

    .prologue
    .line 109
    invoke-virtual {p0}, Lbbc/mobile/news/BaseFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    .line 110
    .local v0, baseActivity:Lbbc/mobile/news/BaseActivity;
    instance-of v1, v0, Lbbc/mobile/news/HomeScreenActivity;

    if-eqz v1, :cond_0

    .line 111
    check-cast v0, Lbbc/mobile/news/HomeScreenActivity;

    .end local v0           #baseActivity:Lbbc/mobile/news/BaseActivity;
    invoke-virtual {v0, p1, p2, p3}, Lbbc/mobile/news/HomeScreenActivity;->requestNewsFeeds(ZI[I)V

    .line 113
    :cond_0
    return-void
.end method

.method protected setMenuItemVisibility(Landroid/view/MenuItem;Z)Landroid/view/MenuItem;
    .locals 3
    .parameter "menuItem"
    .parameter "isVisible"

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 200
    instance-of v1, p1, Lbbc/mobile/news/actionbar/SimpleMenuItem;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 201
    check-cast v0, Lbbc/mobile/news/actionbar/SimpleMenuItem;

    .line 203
    .local v0, simpleMenuItem:Lbbc/mobile/news/actionbar/SimpleMenuItem;
    invoke-virtual {v0, p2}, Lbbc/mobile/news/actionbar/SimpleMenuItem;->setViewVisible(Z)Landroid/view/MenuItem;

    .line 209
    .end local v0           #simpleMenuItem:Lbbc/mobile/news/actionbar/SimpleMenuItem;
    :cond_0
    :goto_0
    return-object p1

    .line 205
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 206
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

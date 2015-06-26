.class public Lbbc/mobile/news/ArticleFragment;
.super Lbbc/mobile/news/BaseFragment;
.source "ArticleFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lbbc/mobile/news/model/ConfigCallback;


# static fields
.field public static final ARTICLE_ID_BDL_KEY:Ljava/lang/String; = "ArtIdBdl"

.field public static final CATEGORY_BDL_KEY:Ljava/lang/String; = "CategoryBdl"

.field public static final CATEGORY_NAME_DBL_KEY:Ljava/lang/String; = "CatNameBdlKey"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentIndex:I

.field private mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

.field private mArticleContainer:Landroid/view/View;

.field private mArticlePager:Landroid/support/v4/view/ViewPager;

.field private mAudioControl:Lbbc/mobile/news/service/AudioControl;

.field private mCategory:Lbbc/mobile/news/model/Category;

.field private mCategoryBar:Landroid/view/View;

.field private mCategoryTitle:Landroid/widget/TextView;

.field private mConfig:Lbbc/mobile/news/model/Config;

.field private mHandler:Landroid/os/Handler;

.field private mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

.field private mIsWatchListen:Z

.field protected mLaunchedFromWidget:Z

.field private mLoadedArticle:Lbbc/mobile/news/model/Article;

.field private mLoadingSpinner:Landroid/view/View;

.field private mPagingControl:Lbbc/mobile/news/view/PageView;

.field private mPreviousArticle:Lbbc/mobile/news/model/Article;

.field private mRefreshing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lbbc/mobile/news/ArticleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lbbc/mobile/news/BaseFragment;-><init>()V

    .line 63
    iput-boolean v1, p0, Lbbc/mobile/news/ArticleFragment;->mLaunchedFromWidget:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lbbc/mobile/news/ArticleFragment;->currentIndex:I

    .line 80
    iput-boolean v1, p0, Lbbc/mobile/news/ArticleFragment;->mRefreshing:Z

    .line 82
    iput-boolean v1, p0, Lbbc/mobile/news/ArticleFragment;->mIsWatchListen:Z

    .line 91
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/ArticleFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lbbc/mobile/news/ArticleFragment;->mIsWatchListen:Z

    return v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/ArticleFragment;)Lbbc/mobile/news/adapter/ArticlePagerAdapter;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    return-object v0
.end method

.method private doStats(Lbbc/mobile/news/model/Article;IZ)V
    .locals 3
    .parameter "article"
    .parameter "method"
    .parameter "addEntitlement"

    .prologue
    .line 417
    const-string v0, "doStats"

    const-string v1, "doStats()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mPreviousArticle:Lbbc/mobile/news/model/Article;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 420
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mPreviousArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    if-eqz p1, :cond_0

    .line 427
    iput-object p1, p0, Lbbc/mobile/news/ArticleFragment;->mPreviousArticle:Lbbc/mobile/news/model/Article;

    .line 428
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v0

    const-string v1, "story"

    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lbbc/mobile/news/stats/Stats;->logArticlePAGEVIEW(Lbbc/mobile/news/model/Article;Ljava/lang/String;Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;

    .line 429
    invoke-virtual {p0, p1, p3}, Lbbc/mobile/news/ArticleFragment;->logOmniturePageView(Lbbc/mobile/news/model/Article;Z)V

    goto :goto_0
.end method

.method private hasAdManager()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initAdapter(Lbbc/mobile/news/model/Category;I)V
    .locals 1
    .parameter "category"
    .parameter "selectedIndex"

    .prologue
    .line 407
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->setItems(Lbbc/mobile/news/model/Category;)V

    .line 408
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 3
    .parameter "rootView"

    .prologue
    .line 356
    sget v1, Lbbc/mobile/news/R$id;->articleContainer:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mArticleContainer:Landroid/view/View;

    .line 357
    sget v1, Lbbc/mobile/news/R$id;->categoryBar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mCategoryBar:Landroid/view/View;

    .line 358
    sget v1, Lbbc/mobile/news/R$id;->articleSpinner:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mLoadingSpinner:Landroid/view/View;

    .line 359
    sget v1, Lbbc/mobile/news/R$id;->categoryBarTitle:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mCategoryTitle:Landroid/widget/TextView;

    .line 360
    sget v1, Lbbc/mobile/news/R$id;->categoryBarPagingControl:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/view/PageView;

    iput-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mPagingControl:Lbbc/mobile/news/view/PageView;

    .line 362
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbbc/mobile/news/ArticleFragment;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mPagingControl:Lbbc/mobile/news/view/PageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbbc/mobile/news/view/PageView;->setAlignment(I)V

    .line 368
    :goto_0
    invoke-direct {p0, p1}, Lbbc/mobile/news/ArticleFragment;->initWorkspace(Landroid/view/View;)V

    .line 369
    sget v1, Lbbc/mobile/news/R$id;->bannerViewPlaceHolder:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lbbc/mobile/news/ArticleFragment;->initAdManager(Landroid/view/ViewGroup;)V

    .line 371
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getAudioControl()Lbbc/mobile/news/service/AudioControl;

    move-result-object v0

    .line 372
    .local v0, audioControl:Lbbc/mobile/news/service/AudioControl;
    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0}, Lbbc/mobile/news/service/AudioControl;->getCallback()Lbbc/mobile/news/service/AudioCallback;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lbbc/mobile/news/ArticleFragment;->setAudioControl(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V

    .line 375
    :cond_0
    return-void

    .line 365
    .end local v0           #audioControl:Lbbc/mobile/news/service/AudioControl;
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mPagingControl:Lbbc/mobile/news/view/PageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lbbc/mobile/news/view/PageView;->setAlignment(I)V

    goto :goto_0
.end method

.method private initWorkspace(Landroid/view/View;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 398
    sget v0, Lbbc/mobile/news/R$id;->workspace:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mArticlePager:Landroid/support/v4/view/ViewPager;

    .line 399
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mArticlePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 400
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    iget-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V

    .line 401
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mArticlePager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 402
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mArticlePager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 403
    return-void
.end method

.method private possiblyDemoteShareIcon(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "shareItem"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-boolean v0, p0, Lbbc/mobile/news/ArticleFragment;->mIsWatchListen:Z

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 221
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private reloadAd()V
    .locals 6

    .prologue
    .line 435
    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment;->mArticlePager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v3, :cond_2

    .line 437
    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment;->mArticlePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    .line 438
    .local v2, index:I
    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v3, v2}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v1

    .line 439
    .local v1, article:Lbbc/mobile/news/model/Article;
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lbbc/mobile/news/ArticleFragment;->hasAdManager()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 440
    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v3, :cond_1

    .line 441
    const-string v3, "Ads"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requesting add ... category:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v5}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " articleid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v3}, Lbbc/mobile/news/model/Category;->getId()I

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_2

    .line 443
    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v3}, Lbbc/mobile/news/adverts/AdManager;->hasAdHolderView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v3}, Lbbc/mobile/news/adverts/AdManager;->getAdHolderView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lbbc/mobile/news/ArticleFragment$2;

    invoke-direct {v4, p0, v1}, Lbbc/mobile/news/ArticleFragment$2;-><init>(Lbbc/mobile/news/ArticleFragment;Lbbc/mobile/news/model/Article;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 470
    .end local v1           #article:Lbbc/mobile/news/model/Article;
    .end local v2           #index:I
    :cond_0
    :goto_0
    return-void

    .line 458
    .restart local v1       #article:Lbbc/mobile/news/model/Article;
    .restart local v2       #index:I
    :cond_1
    const-string v3, "Ads"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ERROR requesting add ... category:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .end local v1           #article:Lbbc/mobile/news/model/Article;
    .end local v2           #index:I
    :cond_2
    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    if-eqz v3, :cond_0

    .line 465
    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v3}, Lbbc/mobile/news/adverts/AdManager;->getAdHolderView()Landroid/view/View;

    move-result-object v0

    .line 466
    .local v0, adHolder:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 467
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCategory(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V
    .locals 13
    .parameter "category"
    .parameter "article"

    .prologue
    const/16 v12, 0x12

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 230
    if-nez p1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 232
    :cond_0
    iput-object p1, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    .line 233
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v7}, Lbbc/mobile/news/model/Category;->getId()I

    move-result v7

    .line 234
    if-ne v7, v12, :cond_7

    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    .line 233
    :goto_1
    iput-boolean v7, p0, Lbbc/mobile/news/ArticleFragment;->mIsWatchListen:Z

    .line 236
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mCategoryTitle:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 237
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mCategoryTitle:Landroid/widget/TextView;

    iget-object v10, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v10}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :cond_1
    iput-object p2, p0, Lbbc/mobile/news/ArticleFragment;->mLoadedArticle:Lbbc/mobile/news/model/Article;

    .line 240
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, id:Ljava/lang/String;
    const/4 v6, 0x0

    .line 244
    .local v6, selectedIndex:I
    if-eqz v2, :cond_2

    .line 245
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v7}, Lbbc/mobile/news/model/Category;->getArticles()Ljava/util/ArrayList;

    move-result-object v1

    .line 246
    .local v1, articles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Article;>;"
    const/4 v3, 0x0

    .local v3, index:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_8

    .line 254
    .end local v1           #articles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Article;>;"
    .end local v3           #index:I
    :cond_2
    :goto_3
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-direct {p0, v7, v6}, Lbbc/mobile/news/ArticleFragment;->initAdapter(Lbbc/mobile/news/model/Category;I)V

    .line 256
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mArticlePager:Landroid/support/v4/view/ViewPager;

    if-eqz v7, :cond_3

    .line 257
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mArticlePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v7, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 259
    :cond_3
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mPagingControl:Lbbc/mobile/news/view/PageView;

    if-eqz v7, :cond_4

    .line 260
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mPagingControl:Lbbc/mobile/news/view/PageView;

    iget-object v10, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v10}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v10

    invoke-virtual {v7, v10}, Lbbc/mobile/news/view/PageView;->setPages(I)V

    .line 261
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mPagingControl:Lbbc/mobile/news/view/PageView;

    invoke-virtual {v7, v6}, Lbbc/mobile/news/view/PageView;->setCurrentPage(I)V

    .line 265
    :cond_4
    if-nez v6, :cond_6

    .line 266
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v7}, Lbbc/mobile/news/model/Category;->getId()I

    move-result v7

    if-ne v7, v12, :cond_a

    move v4, v8

    .line 267
    .local v4, isWatchListen:Z
    :goto_4
    if-nez v4, :cond_5

    .line 268
    move-object v0, p2

    .line 269
    .local v0, adArticle:Lbbc/mobile/news/model/Article;
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v7}, Lbbc/mobile/news/adverts/AdManager;->hasAdHolderView()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 270
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v7}, Lbbc/mobile/news/adverts/AdManager;->getAdHolderView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v10, Lbbc/mobile/news/ArticleFragment$1;

    invoke-direct {v10, p0, v0}, Lbbc/mobile/news/ArticleFragment$1;-><init>(Lbbc/mobile/news/ArticleFragment;Lbbc/mobile/news/model/Article;)V

    invoke-virtual {v7, v10}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 282
    .end local v0           #adArticle:Lbbc/mobile/news/model/Article;
    :cond_5
    iget-object v7, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    invoke-virtual {v7, v6}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->getItem(I)Lbbc/mobile/news/model/Article;

    move-result-object v5

    .line 283
    .local v5, selectedArticle:Lbbc/mobile/news/model/Article;
    if-eqz v5, :cond_6

    .line 284
    const/4 v7, 0x5

    if-eqz v4, :cond_b

    :goto_5
    invoke-direct {p0, v5, v7, v9}, Lbbc/mobile/news/ArticleFragment;->doStats(Lbbc/mobile/news/model/Article;IZ)V

    .line 288
    .end local v4           #isWatchListen:Z
    .end local v5           #selectedArticle:Lbbc/mobile/news/model/Article;
    :cond_6
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v7

    invoke-virtual {v7}, Lbbc/mobile/news/BaseActivity;->getActionBarHelper()Lbbc/mobile/news/actionbar/ActionBarHelper;

    move-result-object v7

    invoke-virtual {v7}, Lbbc/mobile/news/actionbar/ActionBarHelper;->invalidateOptionsMenu()V

    goto/16 :goto_0

    .end local v2           #id:Ljava/lang/String;
    .end local v6           #selectedIndex:I
    :cond_7
    move v7, v9

    .line 234
    goto/16 :goto_1

    .line 247
    .restart local v1       #articles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Article;>;"
    .restart local v2       #id:Ljava/lang/String;
    .restart local v3       #index:I
    .restart local v6       #selectedIndex:I
    :cond_8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbbc/mobile/news/model/Article;

    invoke-virtual {v7}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 248
    move v6, v3

    .line 249
    goto :goto_3

    .line 246
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .end local v1           #articles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Article;>;"
    .end local v3           #index:I
    :cond_a
    move v4, v9

    .line 266
    goto :goto_4

    .restart local v4       #isWatchListen:Z
    .restart local v5       #selectedArticle:Lbbc/mobile/news/model/Article;
    :cond_b
    move v9, v8

    .line 284
    goto :goto_5
.end method

.method private showLoadingView(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, containerVisibility:I
    const/16 v1, 0x8

    .line 381
    .local v1, spinnerVisibility:I
    if-eqz p1, :cond_0

    .line 382
    const/4 v0, 0x4

    .line 383
    const/4 v1, 0x0

    .line 385
    :cond_0
    iget-object v2, p0, Lbbc/mobile/news/ArticleFragment;->mArticleContainer:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 386
    iget-object v2, p0, Lbbc/mobile/news/ArticleFragment;->mArticleContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_1
    iget-object v2, p0, Lbbc/mobile/news/ArticleFragment;->mCategoryBar:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 389
    iget-object v2, p0, Lbbc/mobile/news/ArticleFragment;->mCategoryBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :cond_2
    iget-object v2, p0, Lbbc/mobile/news/ArticleFragment;->mLoadingSpinner:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 392
    iget-object v2, p0, Lbbc/mobile/news/ArticleFragment;->mLoadingSpinner:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_3
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mConfig:Lbbc/mobile/news/model/Config;

    .line 616
    iput-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    .line 617
    return-void
.end method

.method public getHomeScreenIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 507
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getHomeScreenIntent() sould be overridden in the subclass.  Return correct intent for ww or uk."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedArticle()Lbbc/mobile/news/model/Article;
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 299
    .local v0, category:Lbbc/mobile/news/model/Category;
    if-nez v0, :cond_0

    .line 300
    const/4 v1, 0x0

    .line 302
    :goto_0
    return-object v1

    :cond_0
    iget v1, p0, Lbbc/mobile/news/ArticleFragment;->currentIndex:I

    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v1

    goto :goto_0
.end method

.method public getSelectedArticleIndex()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lbbc/mobile/news/ArticleFragment;->currentIndex:I

    return v0
.end method

.method public invalidate()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 108
    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment;->mConfig:Lbbc/mobile/news/model/Config;

    if-nez v3, :cond_0

    .line 109
    sget-object v3, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    const-string v4, "invalidate()... requesting config..."

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v5}, Lbbc/mobile/news/ArticleFragment;->showLoadingView(Z)V

    .line 111
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->requestConfig()V

    .line 147
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v2

    .line 116
    .local v2, selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    invoke-virtual {v2}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v1

    .line 117
    .local v1, category:Lbbc/mobile/news/model/Category;
    invoke-virtual {v2}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 119
    .local v0, article:Lbbc/mobile/news/model/Article;
    if-nez v1, :cond_1

    .line 120
    sget-object v3, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    const-string v4, "invalidate() ERROR: ArticleFragment does not have selection... this should not happen"

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0, v5}, Lbbc/mobile/news/ArticleFragment;->showLoadingView(Z)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lbbc/mobile/news/ArticleFragment;->isPhone(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    invoke-direct {p0, v5}, Lbbc/mobile/news/ArticleFragment;->showLoadingView(Z)V

    .line 127
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbbc/mobile/news/model/Category;->getFeed(Landroid/content/Context;)Lbbc/mobile/news/model/Feed;

    move-result-object v3

    .line 128
    new-array v4, v5, [I

    const/4 v5, 0x2

    aput v5, v4, v6

    .line 127
    invoke-virtual {p0, v3, v6, v4}, Lbbc/mobile/news/ArticleFragment;->requestNewsFeed(Lbbc/mobile/news/model/Feed;I[I)V

    .line 129
    sget-object v3, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    const-string v4, "invalidate()... requesting article..."

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v6}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 135
    sget-object v3, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    const-string v4, "invalidate()... article null .... selecting first article..."

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v6}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 137
    invoke-virtual {v2, v1, v0}, Lbbc/mobile/news/helper/SelectionProvider;->setSelected(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    .line 140
    :cond_3
    if-eqz v0, :cond_4

    .line 141
    sget-object v3, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalidate()... setting article: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, v1, v0}, Lbbc/mobile/news/ArticleFragment;->setCategory(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    .line 143
    invoke-direct {p0, v6}, Lbbc/mobile/news/ArticleFragment;->showLoadingView(Z)V

    goto/16 :goto_0

    .line 145
    :cond_4
    invoke-direct {p0, v5}, Lbbc/mobile/news/ArticleFragment;->showLoadingView(Z)V

    goto/16 :goto_0
.end method

.method public logOmniturePageView(Lbbc/mobile/news/model/Article;Z)V
    .locals 6
    .parameter "article"
    .parameter "addEntitlement"

    .prologue
    .line 634
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 635
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 636
    .local v0, activity:Landroid/app/Activity;
    const/16 v1, 0x8

    .line 638
    .local v1, method:I
    if-eqz v0, :cond_3

    instance-of v4, v0, Lbbc/mobile/news/HomeScreenActivity;

    if-eqz v4, :cond_3

    .line 639
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v2

    .line 640
    .local v2, omniture:Lbbc/mobile/news/stats/Omniture3;
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v3

    .line 641
    .local v3, stateHelper:Lbbc/mobile/news/helper/StateHelper;
    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->isArticleLoadedFromWidget()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->isArticleLoadedFromNotification()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 642
    :cond_0
    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->getArticleLoadState()I

    move-result v1

    .line 649
    :cond_1
    :goto_0
    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 650
    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->getArticleLoadState()I

    move-result v1

    .line 652
    :cond_2
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/helper/StateHelper;->getAppState()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 659
    :goto_1
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lbbc/mobile/news/helper/StateHelper;->setAppState(I)V

    .line 660
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lbbc/mobile/news/helper/StateHelper;->setArticleLoadState(I)V

    .line 661
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v2, v4, p1, v1, p2}, Lbbc/mobile/news/stats/Omniture3;->logArticlePageView(Landroid/content/Context;Lbbc/mobile/news/model/Article;IZ)Lbbc/mobile/news/stats/Omniture3;

    .line 664
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #method:I
    .end local v2           #omniture:Lbbc/mobile/news/stats/Omniture3;
    .end local v3           #stateHelper:Lbbc/mobile/news/helper/StateHelper;
    :cond_3
    return-void

    .line 645
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #method:I
    .restart local v2       #omniture:Lbbc/mobile/news/stats/Omniture3;
    .restart local v3       #stateHelper:Lbbc/mobile/news/helper/StateHelper;
    :cond_4
    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->isAppLaunch()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->isAppResumed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 646
    :cond_5
    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->getAppState()I

    move-result v1

    goto :goto_0

    .line 654
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 655
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAtomFailed(Lbbc/mobile/news/model/Feed;II)V
    .locals 3
    .parameter "feed"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 346
    iget-boolean v1, p0, Lbbc/mobile/news/ArticleFragment;->mRefreshing:Z

    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 348
    .local v0, activity:Landroid/app/Activity;
    sget v1, Lbbc/mobile/news/R$string;->cannot_refresh_general_error:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbbc/mobile/news/ArticleFragment;->mRefreshing:Z

    .line 350
    iget-boolean v1, p0, Lbbc/mobile/news/ArticleFragment;->mRefreshing:Z

    invoke-virtual {p0, v1}, Lbbc/mobile/news/ArticleFragment;->showRefreshSpinner(Z)V

    .line 352
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public onAtomSuccess(Lbbc/mobile/news/model/Category;II)V
    .locals 9
    .parameter "category"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 307
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v7

    invoke-virtual {v7, p1}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 342
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-boolean v7, p0, Lbbc/mobile/news/ArticleFragment;->mRefreshing:Z

    if-eqz v7, :cond_2

    .line 312
    const/4 v7, 0x0

    iput-boolean v7, p0, Lbbc/mobile/news/ArticleFragment;->mRefreshing:Z

    .line 313
    iget-boolean v7, p0, Lbbc/mobile/news/ArticleFragment;->mRefreshing:Z

    invoke-virtual {p0, v7}, Lbbc/mobile/news/ArticleFragment;->showRefreshSpinner(Z)V

    .line 317
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v6

    .line 318
    .local v6, selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    invoke-virtual {v6}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v5

    .line 319
    .local v5, selectedCategory:Lbbc/mobile/news/model/Category;
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getSelectedArticleIndex()I

    move-result v4

    .line 321
    .local v4, currentScreen:I
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getSelectedArticle()Lbbc/mobile/news/model/Article;

    move-result-object v2

    .line 322
    .local v2, currentArticle:Lbbc/mobile/news/model/Article;
    const-string v3, ""

    .line 323
    .local v3, currentArticleID:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 324
    invoke-virtual {v2}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v3

    .line 328
    :cond_1
    invoke-virtual {p1, v3}, Lbbc/mobile/news/model/Category;->getArticleIndex(Ljava/lang/String;)I

    move-result v1

    .line 329
    .local v1, articleIndex:I
    if-gez v1, :cond_3

    .line 330
    const/4 v1, 0x0

    .line 334
    :goto_1
    invoke-virtual {v5}, Lbbc/mobile/news/model/Category;->getArticles()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 337
    invoke-virtual {v5, v1}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v2

    .line 338
    invoke-virtual {v6, v5, v2}, Lbbc/mobile/news/helper/SelectionProvider;->setSelected(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    .line 340
    .end local v1           #articleIndex:I
    .end local v2           #currentArticle:Lbbc/mobile/news/model/Article;
    .end local v3           #currentArticleID:Ljava/lang/String;
    .end local v4           #currentScreen:I
    .end local v5           #selectedCategory:Lbbc/mobile/news/model/Category;
    .end local v6           #selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    :cond_2
    sget-object v7, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    const-string v8, "onAtomSuccess()... calling invalidate()"

    invoke-static {v7, v8}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->invalidate()V

    goto :goto_0

    .line 332
    .restart local v1       #articleIndex:I
    .restart local v2       #currentArticle:Lbbc/mobile/news/model/Article;
    .restart local v3       #currentArticleID:Ljava/lang/String;
    .restart local v4       #currentScreen:I
    .restart local v5       #selectedCategory:Lbbc/mobile/news/model/Category;
    .restart local v6       #selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    :cond_3
    move v1, v4

    goto :goto_1

    .line 334
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Article;

    .line 335
    .local v0, article:Lbbc/mobile/news/model/Article;
    invoke-static {}, Lbbc/mobile/news/cache/ArticleCache;->getInstance()Lbbc/mobile/news/cache/ArticleCache;

    move-result-object v8

    invoke-virtual {v8, v0}, Lbbc/mobile/news/cache/ArticleCache;->put(Lbbc/mobile/news/model/Article;)V

    goto :goto_2
.end method

.method public onConfigFailed(Lbbc/mobile/news/model/Config;II)V
    .locals 0
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 630
    return-void
.end method

.method public onConfigSuccess(Lbbc/mobile/news/model/Config;II)V
    .locals 2
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 622
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mConfig:Lbbc/mobile/news/model/Config;

    if-nez v0, :cond_0

    .line 623
    sget-object v0, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    const-string v1, "onConfigSuccess ... calling invalidate()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iput-object p1, p0, Lbbc/mobile/news/ArticleFragment;->mConfig:Lbbc/mobile/news/model/Config;

    .line 625
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->invalidate()V

    .line 627
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 475
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 476
    invoke-static {p1}, Lbbc/mobile/news/model/Orientation;->parseOrientation(Landroid/content/res/Configuration;)Lbbc/mobile/news/model/Orientation;

    move-result-object v0

    .line 477
    .local v0, orientationModel:Lbbc/mobile/news/model/Orientation;
    const-string v1, "SPECIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ArticleFragment.onConfigChanged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "ArticleFragment"

    const-string v1, "ArticleFragment Created..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Lbbc/mobile/news/feed/ImageHandler;

    const-string v1, "ArticleImageHandler"

    invoke-direct {v0, v1}, Lbbc/mobile/news/feed/ImageHandler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    .line 98
    new-instance v0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    invoke-direct {v0}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    .line 99
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    .line 100
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 99
    invoke-static {v1}, Lbbc/mobile/news/model/Orientation;->parseOrientation(Landroid/content/res/Configuration;)Lbbc/mobile/news/model/Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->setOrientation(Lbbc/mobile/news/model/Orientation;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mPreviousArticle:Lbbc/mobile/news/model/Article;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mHandler:Landroid/os/Handler;

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/ArticleFragment;->setHasOptionsMenu(Z)V

    .line 104
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 168
    const-string v2, "menu"

    const-string v3, "onCreateOptionsMenu() - ArticleFragment"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 175
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 176
    sget v2, Lbbc/mobile/news/R$menu;->options_menu_share_inverse:I

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 179
    :cond_0
    invoke-super {p0, p1, p2}, Lbbc/mobile/news/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 181
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 182
    sget-object v2, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    const-string v3, "onCreateOptionsMenu"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget v2, Lbbc/mobile/news/R$id;->optMenuEditAction:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 184
    .local v0, editItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbbc/mobile/news/ArticleFragment;->isTablet(Landroid/content/Context;)Z

    move-result v1

    .line 185
    .local v1, editVisible:Z
    invoke-virtual {p0, v0, v1}, Lbbc/mobile/news/ArticleFragment;->setMenuItemVisibility(Landroid/view/MenuItem;Z)Landroid/view/MenuItem;

    .line 187
    .end local v0           #editItem:Landroid/view/MenuItem;
    .end local v1           #editVisible:Z
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 152
    sget v1, Lbbc/mobile/news/R$layout;->article_fragment:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/helper/TextSizeHelper;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TextSizeHelper;

    .line 154
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 491
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 492
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 493
    invoke-static {v0}, Lbbc/mobile/news/helper/TextSizeHelper;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TextSizeHelper;

    move-result-object v1

    .line 494
    .local v1, helper:Lbbc/mobile/news/helper/TextSizeHelper;
    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v1}, Lbbc/mobile/news/helper/TextSizeHelper;->unregisterAllListeners()V

    .line 498
    .end local v1           #helper:Lbbc/mobile/news/helper/TextSizeHelper;
    :cond_0
    iget-object v2, p0, Lbbc/mobile/news/ArticleFragment;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    if-eqz v2, :cond_1

    .line 499
    iget-object v2, p0, Lbbc/mobile/news/ArticleFragment;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    invoke-virtual {v2}, Lbbc/mobile/news/feed/ImageHandler;->quit()V

    .line 500
    const/4 v2, 0x0

    iput-object v2, p0, Lbbc/mobile/news/ArticleFragment;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    .line 502
    :cond_1
    invoke-super {p0}, Lbbc/mobile/news/BaseFragment;->onDestroy()V

    .line 503
    return-void
.end method

.method public onHomeButtonClicked()V
    .locals 5

    .prologue
    .line 579
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 580
    .local v0, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbbc/mobile/news/ArticleFragment;->isPhone(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "newsFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 581
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 582
    .local v1, transaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 583
    sget v2, Lbbc/mobile/news/R$id;->homescreenRootContainer:I

    new-instance v3, Lbbc/mobile/news/NewsFragment;

    invoke-direct {v3}, Lbbc/mobile/news/NewsFragment;-><init>()V

    const-string v4, "newsFragment"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 584
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 589
    .end local v1           #transaction:Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/stats/Stats;->logHomebuttonClickACTION()Lbbc/mobile/news/stats/Stats;

    .line 590
    return-void

    .line 587
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 668
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseFragment;->onOrientationChanged(I)V

    .line 669
    invoke-static {p1}, Lbbc/mobile/news/model/Orientation;->parseOrientationInt(I)Lbbc/mobile/news/model/Orientation;

    move-result-object v0

    .line 670
    .local v0, orientationModel:Lbbc/mobile/news/model/Orientation;
    const-string v1, "SPECIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onOrientationChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    invoke-virtual {v1, v0}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->setOrientation(Lbbc/mobile/news/model/Orientation;)V

    .line 673
    iget-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lbbc/mobile/news/ArticleFragment$3;

    invoke-direct {v2, p0}, Lbbc/mobile/news/ArticleFragment$3;-><init>(Lbbc/mobile/news/ArticleFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 683
    :cond_0
    invoke-direct {p0}, Lbbc/mobile/news/ArticleFragment;->reloadAd()V

    .line 684
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 511
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 514
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x7

    const/4 v4, 0x0

    .line 518
    sget-object v0, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPageSelected()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v3

    .line 523
    .local v3, article:Lbbc/mobile/news/model/Article;
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mLoadedArticle:Lbbc/mobile/news/model/Article;

    if-eq v0, v3, :cond_1

    .line 524
    if-eqz v3, :cond_0

    .line 525
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lbbc/mobile/news/ArticleFragment;->onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;ZZI)V

    .line 527
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mLoadedArticle:Lbbc/mobile/news/model/Article;

    .line 530
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mPagingControl:Lbbc/mobile/news/view/PageView;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mPagingControl:Lbbc/mobile/news/view/PageView;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/view/PageView;->setCurrentPage(I)V

    .line 536
    :cond_2
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    invoke-virtual {v0}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->getCount()I

    move-result v0

    if-le v0, p1, :cond_3

    .line 537
    iget v0, p0, Lbbc/mobile/news/ArticleFragment;->currentIndex:I

    if-eq v0, p1, :cond_3

    .line 538
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->getItem(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lbbc/mobile/news/ArticleFragment;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getId()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_4

    .line 538
    :goto_0
    invoke-direct {p0, v0, v6, v4}, Lbbc/mobile/news/ArticleFragment;->doStats(Lbbc/mobile/news/model/Article;IZ)V

    .line 540
    iput p1, p0, Lbbc/mobile/news/ArticleFragment;->currentIndex:I

    .line 545
    .end local v3           #article:Lbbc/mobile/news/model/Article;
    :cond_3
    invoke-direct {p0}, Lbbc/mobile/news/ArticleFragment;->reloadAd()V

    .line 546
    return-void

    .line 539
    .restart local v3       #article:Lbbc/mobile/news/model/Article;
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 192
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 194
    const-string v3, "menu"

    const-string v6, "onPrepareOptionsMenu() - ArticleFragment"

    invoke-static {v3, v6}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lbbc/mobile/news/helper/TextSizeHelper;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TextSizeHelper;

    move-result-object v2

    .line 196
    .local v2, textSizeHelper:Lbbc/mobile/news/helper/TextSizeHelper;
    sget v3, Lbbc/mobile/news/R$id;->optMenuIncreaseTextSize:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 197
    .local v1, increaseTextItem:Landroid/view/MenuItem;
    sget v3, Lbbc/mobile/news/R$id;->optMenuDecreaseTextSize:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 199
    .local v0, decreaseTextItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    .line 200
    if-eqz v1, :cond_1

    .line 201
    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v2}, Lbbc/mobile/news/helper/TextSizeHelper;->canIncreaseTextSize()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lbbc/mobile/news/ArticleFragment;->mIsWatchListen:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 204
    invoke-virtual {v2}, Lbbc/mobile/news/helper/TextSizeHelper;->canDecreaseTextSize()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lbbc/mobile/news/ArticleFragment;->mIsWatchListen:Z

    if-nez v3, :cond_0

    move v5, v4

    :cond_0
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 206
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 207
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 210
    :cond_1
    sget v3, Lbbc/mobile/news/R$id;->optMenuShareAction:I

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lbbc/mobile/news/ArticleFragment;->possiblyDemoteShareIcon(Landroid/view/MenuItem;)V

    .line 211
    return-void

    :cond_2
    move v3, v5

    .line 203
    goto :goto_0
.end method

.method public onRefreshButtonClicked()V
    .locals 3

    .prologue
    .line 595
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbbc/mobile/news/ArticleFragment;->isPhone(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    sget-object v1, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    const-string v2, "onRefreshButtonClicked"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    .line 598
    .local v0, activity:Lbbc/mobile/news/BaseActivity;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lbbc/mobile/news/ArticleFragment;->mRefreshing:Z

    if-nez v1, :cond_0

    .line 599
    invoke-static {v0}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbbc/mobile/news/ArticleFragment;->mRefreshing:Z

    .line 601
    iget-boolean v1, p0, Lbbc/mobile/news/ArticleFragment;->mRefreshing:Z

    invoke-virtual {p0, v1}, Lbbc/mobile/news/ArticleFragment;->showRefreshSpinner(Z)V

    .line 602
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getRefreshFeedListener()Lbbc/mobile/news/OnRefreshFeedListener;

    move-result-object v1

    invoke-interface {v1}, Lbbc/mobile/news/OnRefreshFeedListener;->refreshSelectedCategory()V

    .line 603
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedArticle()Lbbc/mobile/news/model/Article;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/stats/Stats;->logRefreshArticleACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;

    .line 610
    .end local v0           #activity:Lbbc/mobile/news/BaseActivity;
    :cond_0
    :goto_0
    return-void

    .line 606
    .restart local v0       #activity:Lbbc/mobile/news/BaseActivity;
    :cond_1
    invoke-static {v0}, Lbbc/mobile/news/dialog/SystemDialog;->showNoConnection(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 483
    invoke-super {p0}, Lbbc/mobile/news/BaseFragment;->onStart()V

    .line 484
    sget-object v0, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart()... calling invalidate()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->invalidate()V

    .line 486
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "root"
    .parameter "savedState"

    .prologue
    .line 160
    sget-object v0, Lbbc/mobile/news/ArticleFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1}, Lbbc/mobile/news/ArticleFragment;->initViews(Landroid/view/View;)V

    .line 162
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->getActionBarHelper()Lbbc/mobile/news/actionbar/ActionBarHelper;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/actionbar/ActionBarHelper;->invalidateOptionsMenu()V

    .line 163
    return-void
.end method

.method public setAdManager(Lbbc/mobile/news/adverts/AdManager;)V
    .locals 0
    .parameter "adManager"

    .prologue
    .line 550
    iput-object p1, p0, Lbbc/mobile/news/ArticleFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    .line 551
    return-void
.end method

.method public setAudioControl(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V
    .locals 5
    .parameter "audioControl"
    .parameter "audioCallback"

    .prologue
    .line 560
    iput-object p1, p0, Lbbc/mobile/news/ArticleFragment;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    .line 561
    iget-object v4, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    if-eqz v4, :cond_0

    .line 562
    iget-object v4, p0, Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    invoke-virtual {v4, p1, p2}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->setAudioControl(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V

    .line 564
    :cond_0
    iget-object v4, p0, Lbbc/mobile/news/ArticleFragment;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    if-eqz v4, :cond_1

    .line 565
    iget-object v4, p0, Lbbc/mobile/news/ArticleFragment;->mArticlePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 566
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-lt v3, v1, :cond_2

    .line 574
    .end local v1           #childCount:I
    .end local v3           #x:I
    :cond_1
    return-void

    .line 567
    .restart local v1       #childCount:I
    .restart local v3       #x:I
    :cond_2
    iget-object v4, p0, Lbbc/mobile/news/ArticleFragment;->mArticlePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 568
    .local v2, childView:Landroid/view/View;
    instance-of v4, v2, Lbbc/mobile/news/view/AVArticleView;

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 569
    check-cast v0, Lbbc/mobile/news/view/AVArticleView;

    .line 570
    .local v0, articleView:Lbbc/mobile/news/view/AVArticleView;
    iget-object v4, p0, Lbbc/mobile/news/ArticleFragment;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    invoke-virtual {v0, v4}, Lbbc/mobile/news/view/AVArticleView;->setAudioControl(Lbbc/mobile/news/service/AudioControl;)V

    .line 566
    .end local v0           #articleView:Lbbc/mobile/news/view/AVArticleView;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected showRefreshSpinner(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 412
    invoke-virtual {p0}, Lbbc/mobile/news/ArticleFragment;->getActionBarHelper()Lbbc/mobile/news/actionbar/ActionBarHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbc/mobile/news/actionbar/ActionBarHelper;->setRefreshActionItemState(Z)V

    .line 413
    return-void
.end method

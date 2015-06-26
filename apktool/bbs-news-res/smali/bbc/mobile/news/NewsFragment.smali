.class public Lbbc/mobile/news/NewsFragment;
.super Lbbc/mobile/news/BaseFragment;
.source "NewsFragment.java"

# interfaces
.implements Lbbc/mobile/news/model/AtomCallback;
.implements Lbbc/mobile/news/model/ConfigCallback;


# static fields
.field private static final AD_PARENT:Ljava/lang/String; = "homepage"

.field private static final NEXUSBUG:Ljava/lang/String; = "nexusbug-NewsFragment"

.field private static final STATE_TAG:Ljava/lang/String; = "NewsFragmentState"

.field private static final SUPPORTS_ACTION_MODE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

.field private mCategoryListView:Landroid/widget/ListView;

.field private mConfig:Lbbc/mobile/news/model/Config;

.field private mContainerView:Landroid/view/View;

.field private mLoadingView:Landroid/view/View;

.field private mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

.field private mTickerView:Lbbc/mobile/news/view/TickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-class v0, Lbbc/mobile/news/NewsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lbbc/mobile/news/NewsFragment;->SUPPORTS_ACTION_MODE:Z

    .line 70
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    invoke-direct {p0}, Lbbc/mobile/news/BaseFragment;-><init>()V

    .line 75
    const-string v0, "nexusbug-NewsFragment"

    const-string v1, "News Fragment created..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "NewsFragmentState"

    const-string v1, "NewsFragment()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-direct {v0}, Lbbc/mobile/news/adapter/CategoryListAdapter;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    .line 80
    invoke-virtual {p0, v2}, Lbbc/mobile/news/NewsFragment;->setRetainInstance(Z)V

    .line 82
    sget-boolean v0, Lbbc/mobile/news/NewsFragment;->SUPPORTS_ACTION_MODE:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lbbc/mobile/news/NewsFragment;->initActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/NewsFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 86
    :cond_0
    invoke-virtual {p0, v2}, Lbbc/mobile/news/NewsFragment;->setHasOptionsMenu(Z)V

    .line 87
    return-void
.end method

.method private getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, -0x1

    .line 243
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbbc/mobile/news/NewsFragment;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$dimen;->portrait_news_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 245
    .local v1, portraitHeight:I
    iget v2, p0, Lbbc/mobile/news/NewsFragment;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 246
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 253
    .end local v1           #portraitHeight:I
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-object v0

    .line 248
    .end local v0           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v1       #portraitHeight:I
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 250
    .restart local v0       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0

    .line 251
    .end local v0           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v1           #portraitHeight:I
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .restart local v0       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0
.end method

.method private initActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 576
    new-instance v0, Lbbc/mobile/news/NewsFragment$4;

    invoke-direct {v0, p0}, Lbbc/mobile/news/NewsFragment$4;-><init>(Lbbc/mobile/news/NewsFragment;)V

    return-object v0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 7
    .parameter "container"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 259
    sget v2, Lbbc/mobile/news/R$id;->loadingSpinner:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lbbc/mobile/news/NewsFragment;->mLoadingView:Landroid/view/View;

    .line 261
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->setHardwareAcceleratedViews()V

    .line 263
    sget v2, Lbbc/mobile/news/R$id;->homescreenCategoryListView:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    .line 264
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 265
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 267
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$layout;->list_edit_view:I

    iget-object v4, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 268
    .local v1, footerView:Landroid/view/View;
    sget v2, Lbbc/mobile/news/R$id;->copyright:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lbbc/mobile/news/util/CopyrightHelper;->getInstance()Lbbc/mobile/news/util/CopyrightHelper;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/util/CopyrightHelper;->getCopyrightText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 270
    new-instance v2, Lbbc/mobile/news/NewsFragment$3;

    invoke-direct {v2, p0}, Lbbc/mobile/news/NewsFragment$3;-><init>(Lbbc/mobile/news/NewsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 280
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v2, p0}, Lbbc/mobile/news/adapter/CategoryListAdapter;->setOnArticleSelectedListener(Lbbc/mobile/news/OnArticleSelectedListener;)V

    .line 281
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getRefreshFeedListener()Lbbc/mobile/news/OnRefreshFeedListener;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbbc/mobile/news/NewsFragment;->setOnRefreshFeedListener(Lbbc/mobile/news/OnRefreshFeedListener;)V

    .line 283
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    iget-object v3, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    sget v2, Lbbc/mobile/news/R$id;->homescreenPortraitView:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lbbc/mobile/news/view/PortraitCategoryWrapper;

    iput-object v2, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    .line 286
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v2, p0}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setOnArticleSelectedListener(Lbbc/mobile/news/OnArticleSelectedListener;)V

    .line 290
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbbc/mobile/news/NewsFragment;->isPhone(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    sget v2, Lbbc/mobile/news/R$id;->ticker:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lbbc/mobile/news/view/TickerView;

    iput-object v2, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    .line 292
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getTickerData()Lbbc/mobile/news/model/Ticker;

    move-result-object v0

    .line 293
    .local v0, data:Lbbc/mobile/news/model/Ticker;
    if-eqz v0, :cond_1

    .line 294
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getTickerData()Lbbc/mobile/news/model/Ticker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbc/mobile/news/view/TickerView;->setData(Lbbc/mobile/news/model/Ticker;)V

    .line 296
    :cond_1
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    if-eqz v2, :cond_2

    .line 297
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v2, p0}, Lbbc/mobile/news/view/TickerView;->setOnArticleSelectedListener(Lbbc/mobile/news/OnArticleSelectedListener;)V

    .line 301
    .end local v0           #data:Lbbc/mobile/news/model/Ticker;
    :cond_2
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v2

    check-cast v2, Lbbc/mobile/news/HomeScreenActivity;

    invoke-virtual {v2}, Lbbc/mobile/news/HomeScreenActivity;->getImageHandler()Lbbc/mobile/news/feed/ImageHandler;

    move-result-object v2

    invoke-virtual {p0, v2}, Lbbc/mobile/news/NewsFragment;->setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V

    .line 306
    return-void
.end method

.method private setAtomFailedFlags(Lbbc/mobile/news/model/Feed;)V
    .locals 9
    .parameter "feed"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 439
    sget-object v4, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setAtomFailedFlags("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v4

    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbbc/mobile/news/cache/CategoryCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Category;

    move-result-object v1

    .line 443
    .local v1, failedCategory:Lbbc/mobile/news/model/Category;
    if-nez v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    sget-object v4, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "category="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 449
    invoke-virtual {v1, v7}, Lbbc/mobile/news/model/Category;->setUpdateFlag(I)V

    .line 450
    sget-object v4, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setUpdateFlag("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lbbc/mobile/news/model/Category;->updateFlagToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_1
    iget-object v4, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    if-eqz v4, :cond_2

    .line 458
    const/4 v3, 0x0

    .local v3, x:I
    :goto_2
    iget-object v4, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 472
    .end local v3           #x:I
    :cond_2
    iget-object v4, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v4, :cond_0

    .line 473
    iget-object v4, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v4, v1}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setCategoryFailed(Lbbc/mobile/news/model/Category;)V

    goto :goto_0

    .line 452
    :cond_3
    invoke-virtual {v1, v8}, Lbbc/mobile/news/model/Category;->setUpdateFlag(I)V

    .line 453
    sget-object v4, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setUpdateFlag("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lbbc/mobile/news/model/Category;->updateFlagToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 460
    .restart local v3       #x:I
    :cond_4
    iget-object v4, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 462
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_5

    instance-of v4, v2, Lbbc/mobile/news/view/CategoryView;

    if-eqz v4, :cond_5

    move-object v0, v2

    .line 464
    check-cast v0, Lbbc/mobile/news/view/CategoryView;

    .line 465
    .local v0, childView:Lbbc/mobile/news/view/CategoryView;
    invoke-virtual {v0}, Lbbc/mobile/news/view/CategoryView;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 466
    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/CategoryView;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 458
    .end local v0           #childView:Lbbc/mobile/news/view/CategoryView;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private showLoadingView(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 755
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mLoadingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 756
    if-eqz p1, :cond_1

    .line 757
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mLoadingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearCategorys(Lbbc/mobile/news/model/Config;)V
    .locals 3
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 520
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->clearCategorys()V

    .line 522
    if-eqz p1, :cond_0

    .line 524
    const/4 v1, 0x1

    invoke-virtual {p1, v2, v2, v1}, Lbbc/mobile/news/model/Config;->getCategorys(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 529
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getCategorys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 533
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->notifyDataSetChanged()V

    .line 536
    :cond_0
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v1, :cond_1

    .line 537
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v2}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getCategorys()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setCategoryArray(Ljava/util/ArrayList;)V

    .line 538
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v1}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->notifyChange()V

    .line 540
    :cond_1
    return-void

    .line 524
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Category;

    .line 525
    .local v0, category:Lbbc/mobile/news/model/Category;
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v2, v0}, Lbbc/mobile/news/adapter/CategoryListAdapter;->addCategory(Lbbc/mobile/news/model/Category;)V

    .line 526
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbbc/mobile/news/cache/CategoryCache;->put(Lbbc/mobile/news/model/Category;)V

    goto :goto_0

    .line 529
    .end local v0           #category:Lbbc/mobile/news/model/Category;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Category;

    .line 530
    .restart local v0       #category:Lbbc/mobile/news/model/Category;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lbbc/mobile/news/model/Category;->setUpdateFlag(I)V

    goto :goto_1
.end method

.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 545
    invoke-virtual {p0, v0}, Lbbc/mobile/news/NewsFragment;->clearCategorys(Lbbc/mobile/news/model/Config;)V

    .line 546
    iput-object v0, p0, Lbbc/mobile/news/NewsFragment;->mConfig:Lbbc/mobile/news/model/Config;

    .line 547
    return-void
.end method

.method public getFeedNameFromArticleId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "id"

    .prologue
    .line 324
    iget-object v4, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v4}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getCategorys()Ljava/util/ArrayList;

    move-result-object v1

    .line 326
    .local v1, categories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Category;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 328
    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lbbc/mobile/news/model/Category;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 340
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 330
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbbc/mobile/news/model/Category;

    .line 331
    .local v2, category:Lbbc/mobile/news/model/Category;
    invoke-virtual {v2, p1}, Lbbc/mobile/news/model/Category;->getArticle(Ljava/lang/String;)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 333
    .local v0, article:Lbbc/mobile/news/model/Article;
    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v2}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public initAdManager(I)V
    .locals 1
    .parameter "adViewHolderResId"

    .prologue
    .line 190
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/NewsFragment;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseFragment;->initAdManager(I)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Lbbc/mobile/news/adverts/BlankAdManager;

    invoke-direct {v0}, Lbbc/mobile/news/adverts/BlankAdManager;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/NewsFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    goto :goto_0
.end method

.method public invalidate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mConfig:Lbbc/mobile/news/model/Config;

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    const-string v1, "invalidate()... requesting config..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, v3}, Lbbc/mobile/news/NewsFragment;->showLoadingView(Z)V

    .line 112
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->requestConfig()V

    .line 133
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v0}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getCategorys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 118
    sget-object v0, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    const-string v1, "invalidate()... setting categorys... requesting feeds ..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v0, v4, v4, v2}, Lbbc/mobile/news/model/Config;->getCategorys(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/NewsFragment;->setCategoryArray(Ljava/util/ArrayList;)V

    .line 121
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->isForceRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v2, v2, v0}, Lbbc/mobile/news/NewsFragment;->requestNewsFeeds(ZI[I)V

    .line 131
    :goto_1
    invoke-direct {p0, v2}, Lbbc/mobile/news/NewsFragment;->showLoadingView(Z)V

    goto :goto_0

    .line 124
    :cond_1
    new-array v0, v3, [I

    aput v2, v0, v2

    invoke-virtual {p0, v2, v2, v0}, Lbbc/mobile/news/NewsFragment;->requestNewsFeeds(ZI[I)V

    goto :goto_1

    .line 128
    :cond_2
    sget-object v0, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    const-string v1, "invalidate()... doing nothing..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public logOmniturePageView()V
    .locals 6

    .prologue
    .line 774
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 776
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 777
    .local v0, activity:Landroid/app/Activity;
    const/16 v1, 0x8

    .line 779
    .local v1, method:I
    if-eqz v0, :cond_3

    instance-of v4, v0, Lbbc/mobile/news/HomeScreenActivity;

    if-eqz v4, :cond_3

    .line 781
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v2

    .line 782
    .local v2, omniture:Lbbc/mobile/news/stats/Omniture3;
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v3

    .line 784
    .local v3, stateHelper:Lbbc/mobile/news/helper/StateHelper;
    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->isArticleLoadedFromWidget()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->isArticleLoadedFromNotification()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 785
    :cond_0
    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->getArticleLoadState()I

    move-result v1

    .line 791
    :cond_1
    :goto_0
    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 792
    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->getArticleLoadState()I

    move-result v1

    .line 795
    :cond_2
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/helper/StateHelper;->getAppState()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 802
    :goto_1
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lbbc/mobile/news/helper/StateHelper;->setAppState(I)V

    .line 803
    invoke-static {}, Lbbc/mobile/news/helper/StateHelper;->getInstance()Lbbc/mobile/news/helper/StateHelper;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lbbc/mobile/news/helper/StateHelper;->setArticleLoadState(I)V

    .line 805
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbbc/mobile/news/NewsFragment;->isPhone(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v2, v4, v1, v5}, Lbbc/mobile/news/stats/Omniture3;->logHomeScreenPageView(Landroid/content/Context;IZ)Lbbc/mobile/news/stats/Omniture3;

    .line 809
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #method:I
    .end local v2           #omniture:Lbbc/mobile/news/stats/Omniture3;
    .end local v3           #stateHelper:Lbbc/mobile/news/helper/StateHelper;
    :cond_3
    return-void

    .line 787
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

    .line 788
    :cond_5
    invoke-virtual {v3}, Lbbc/mobile/news/helper/StateHelper;->getAppState()I

    move-result v1

    goto :goto_0

    .line 797
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_1

    .line 798
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_1

    .line 795
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
    .line 426
    if-nez p1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    sget-object v0, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAtomFailed(feed="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

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

    .line 430
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->isForceRequest()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    .line 431
    invoke-direct {p0, p1}, Lbbc/mobile/news/NewsFragment;->setAtomFailedFlags(Lbbc/mobile/news/model/Feed;)V

    goto :goto_0

    .line 432
    :cond_2
    if-eqz p2, :cond_0

    .line 433
    invoke-direct {p0, p1}, Lbbc/mobile/news/NewsFragment;->setAtomFailedFlags(Lbbc/mobile/news/model/Feed;)V

    goto :goto_0
.end method

.method public onAtomSuccess(Lbbc/mobile/news/model/Category;II)V
    .locals 8
    .parameter "category"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 371
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v5

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbbc/mobile/news/cache/CategoryCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Category;

    move-result-object v2

    .line 373
    .local v2, updateCategory:Lbbc/mobile/news/model/Category;
    sget-object v5, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onAtomSucess(category="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", strategy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Lbbc/mobile/news/cache/Cache;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", requestMethod="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    if-eqz v2, :cond_0

    iget-object v5, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    if-eqz v5, :cond_0

    .line 376
    invoke-virtual {v2, p1}, Lbbc/mobile/news/model/Category;->update(Lbbc/mobile/news/model/Category;)Lbbc/mobile/news/model/Category;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lbbc/mobile/news/model/Category;->setUpdateFlag(I)V

    .line 378
    invoke-virtual {v2}, Lbbc/mobile/news/model/Category;->getArticles()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 382
    const/4 v4, 0x0

    .local v4, x:I
    :goto_1
    iget-object v5, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 393
    iget-object v5, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v5, :cond_0

    .line 394
    iget-object v5, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v5, v2, p2, p3}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->onAtomSuccess(Lbbc/mobile/news/model/Category;II)V

    .line 398
    .end local v4           #x:I
    :cond_0
    iget-object v5, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbbc/mobile/news/NewsFragment;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 399
    iget-object v5, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v5}, Lbbc/mobile/news/view/TickerView;->hasData()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 400
    iget-object v5, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v5}, Lbbc/mobile/news/view/TickerView;->updateIsLive()V

    .line 403
    :cond_1
    return-void

    .line 378
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Article;

    .line 379
    .local v0, article:Lbbc/mobile/news/model/Article;
    invoke-static {}, Lbbc/mobile/news/cache/ArticleCache;->getInstance()Lbbc/mobile/news/cache/ArticleCache;

    move-result-object v6

    invoke-virtual {v6, v0}, Lbbc/mobile/news/cache/ArticleCache;->put(Lbbc/mobile/news/model/Article;)V

    goto :goto_0

    .line 383
    .end local v0           #article:Lbbc/mobile/news/model/Article;
    .restart local v4       #x:I
    :cond_3
    iget-object v5, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 384
    .local v3, view:Landroid/view/View;
    instance-of v5, v3, Lbbc/mobile/news/view/CategoryView;

    if-eqz v5, :cond_4

    move-object v1, v3

    .line 385
    check-cast v1, Lbbc/mobile/news/view/CategoryView;

    .line 386
    .local v1, childView:Lbbc/mobile/news/view/CategoryView;
    invoke-virtual {v1}, Lbbc/mobile/news/view/CategoryView;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v5

    invoke-virtual {v5}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 387
    invoke-virtual {v1, v2}, Lbbc/mobile/news/view/CategoryView;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 388
    invoke-virtual {v1}, Lbbc/mobile/news/view/CategoryView;->startLayoutAnimation()V

    .line 382
    .end local v1           #childView:Lbbc/mobile/news/view/CategoryView;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public onConfigFailed(Lbbc/mobile/news/model/Config;II)V
    .locals 0
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 751
    return-void
.end method

.method public onConfigSuccess(Lbbc/mobile/news/model/Config;II)V
    .locals 1
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 744
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mConfig:Lbbc/mobile/news/model/Config;

    if-nez v0, :cond_0

    .line 745
    iput-object p1, p0, Lbbc/mobile/news/NewsFragment;->mConfig:Lbbc/mobile/news/model/Config;

    .line 746
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->invalidate()V

    .line 748
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lbbc/mobile/news/NewsFragment;->mOrientation:I

    .line 94
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 200
    const-string v0, "menu"

    const-string v1, "onCreateOptionsMenu() - NewsFragment"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-super {p0, p1, p2}, Lbbc/mobile/news/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 202
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 138
    const-string v1, "nexusbug-NewsFragment"

    const-string v2, "onCreateView()... inflating view"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "null"

    .line 142
    .local v0, state:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 143
    const-string v0, "previousState"

    .line 145
    :cond_0
    const-string v1, "NewsFragmentState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreateView() state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget v1, Lbbc/mobile/news/R$layout;->news_fragment_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 725
    invoke-super {p0}, Lbbc/mobile/news/BaseFragment;->onDestroy()V

    .line 726
    return-void
.end method

.method public onFlagPoleReturned(ZZ)V
    .locals 0
    .parameter "adsEnabled"
    .parameter "ok"

    .prologue
    .line 730
    invoke-super {p0, p1, p2}, Lbbc/mobile/news/BaseFragment;->onFlagPoleReturned(ZZ)V

    .line 734
    return-void
.end method

.method public onHomeButtonClicked()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 552
    sget-object v0, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onHomeButtonClicked()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v0

    invoke-virtual {v0, v4}, Lbbc/mobile/news/cache/CategoryCache;->get(I)Lbbc/mobile/news/model/Category;

    move-result-object v2

    .line 555
    .local v2, topStories:Lbbc/mobile/news/model/Category;
    const/4 v3, 0x0

    .line 557
    .local v3, firstArticle:Lbbc/mobile/news/model/Article;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v2, v5}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v3

    .line 559
    sget-object v0, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Top Stories found and with aritlces ... category="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "  firstArticle="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 564
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v6, 0x5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lbbc/mobile/news/NewsFragment;->onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;ZZI)V

    .line 565
    sget-object v0, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewArticle() called from onHomeButtonClicked()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v0}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 569
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 571
    :cond_2
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/stats/Stats;->logHomebuttonClickACTION()Lbbc/mobile/news/stats/Stats;

    .line 572
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseFragment;->onOrientationChanged(I)V

    .line 223
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mContainerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mContainerView:Landroid/view/View;

    invoke-direct {p0}, Lbbc/mobile/news/NewsFragment;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 226
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v0}, Lbbc/mobile/news/adverts/AdManager;->hasAdHolderView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v0}, Lbbc/mobile/news/adverts/AdManager;->getAdHolderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lbbc/mobile/news/NewsFragment$2;

    invoke-direct {v1, p0}, Lbbc/mobile/news/NewsFragment$2;-><init>(Lbbc/mobile/news/NewsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 238
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 696
    invoke-super {p0}, Lbbc/mobile/news/BaseFragment;->onPause()V

    .line 698
    const-string v0, "NewsFragmentState"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public onPersonalisationChanged(Lbbc/mobile/news/model/Config;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lbbc/mobile/news/NewsFragment;->clearCategorys(Lbbc/mobile/news/model/Config;)V

    .line 516
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 207
    const-string v0, "menu"

    const-string v1, "onPrepareOptionsMenu() - NewsFragment"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 209
    sget v0, Lbbc/mobile/news/R$id;->optMenuShareAction:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/NewsFragment;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 209
    :goto_0
    invoke-virtual {p0, v1, v0}, Lbbc/mobile/news/NewsFragment;->setMenuItemVisibility(Landroid/view/MenuItem;Z)Landroid/view/MenuItem;

    .line 211
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRefreshButtonClicked()V
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->onRefreshButtonClicked()V

    .line 739
    return-void
.end method

.method public onRefreshFeeds()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 497
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getCategorys()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 501
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->notifyDataSetChanged()V

    .line 503
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v1}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->getCategories()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 508
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v2}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getCategorys()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setCategoryArray(Ljava/util/ArrayList;)V

    .line 509
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v1}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->notifyChange()V

    .line 511
    :cond_0
    return-void

    .line 497
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Category;

    .line 498
    .local v0, category:Lbbc/mobile/news/model/Category;
    invoke-virtual {v0, v3}, Lbbc/mobile/news/model/Category;->setUpdateFlag(I)V

    goto :goto_0

    .line 504
    .end local v0           #category:Lbbc/mobile/news/model/Category;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Category;

    .line 505
    .restart local v0       #category:Lbbc/mobile/news/model/Category;
    invoke-virtual {v0, v3}, Lbbc/mobile/news/model/Category;->setUpdateFlag(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 675
    invoke-super {p0}, Lbbc/mobile/news/BaseFragment;->onResume()V

    .line 676
    const-string v0, "NewsFragmentState"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public onShareClicked()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lbbc/mobile/news/BaseFragment;->onStart()V

    .line 99
    sget-object v0, Lbbc/mobile/news/NewsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart()... calling invalidate()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "NewsFragmentState"

    const-string v1, "onStart()..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->invalidate()V

    .line 103
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/stats/Stats;->logHomescreenPAGEVIEW()Lbbc/mobile/news/stats/Stats;

    .line 104
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->logOmniturePageView()V

    .line 105
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 716
    invoke-super {p0}, Lbbc/mobile/news/BaseFragment;->onStop()V

    .line 718
    invoke-static {}, Lbbc/mobile/news/util/BitmapCacheOptimizer;->isCacheOverLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    new-instance v0, Lbbc/mobile/news/util/BitmapCacheOptimizer;

    invoke-direct {v0}, Lbbc/mobile/news/util/BitmapCacheOptimizer;-><init>()V

    invoke-virtual {v0}, Lbbc/mobile/news/util/BitmapCacheOptimizer;->start()V

    .line 721
    :cond_0
    return-void
.end method

.method public onTickerFailed()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/TickerView;->setVisibility(I)V

    .line 419
    :cond_0
    return-void
.end method

.method public onTickerSuccess(Lbbc/mobile/news/model/Ticker;II)V
    .locals 2
    .parameter "ticker"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 407
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/NewsFragment;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/view/TickerView;->setData(Lbbc/mobile/news/model/Ticker;)V

    .line 409
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v0}, Lbbc/mobile/news/view/TickerView;->updateIsLive()V

    .line 410
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mTickerView:Lbbc/mobile/news/view/TickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/TickerView;->setVisibility(I)V

    .line 412
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 159
    const-string v1, "nexusbug-NewsFragment"

    const-string v2, "onViewCreated()... inflating view"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "null"

    .line 162
    .local v0, state:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 163
    const-string v0, "previousState"

    .line 165
    :cond_0
    const-string v1, "NewsFragmentState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreateView() state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iput-object p1, p0, Lbbc/mobile/news/NewsFragment;->mContainerView:Landroid/view/View;

    .line 169
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/helper/TextSizeHelper;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TextSizeHelper;

    .line 170
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mContainerView:Landroid/view/View;

    invoke-direct {p0, v1}, Lbbc/mobile/news/NewsFragment;->initViews(Landroid/view/View;)V

    .line 171
    sget v1, Lbbc/mobile/news/R$id;->bannerViewPlaceHolder:I

    invoke-virtual {p0, v1}, Lbbc/mobile/news/NewsFragment;->initAdManager(I)V

    .line 172
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/BaseActivity;->getActionBarHelper()Lbbc/mobile/news/actionbar/ActionBarHelper;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/actionbar/ActionBarHelper;->invalidateOptionsMenu()V

    .line 173
    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/BaseActivity;->getActionModeProvider()Lbbc/mobile/news/helper/ActionModeProvider;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v1, v2}, Lbbc/mobile/news/helper/ActionModeProvider;->setCallback(Landroid/view/ActionMode$Callback;)V

    .line 175
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v1}, Lbbc/mobile/news/adverts/AdManager;->hasAdHolderView()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lbbc/mobile/news/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbbc/mobile/news/NewsFragment;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    iget-object v1, p0, Lbbc/mobile/news/NewsFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v1}, Lbbc/mobile/news/adverts/AdManager;->getAdHolderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lbbc/mobile/news/NewsFragment$1;

    invoke-direct {v2, p0}, Lbbc/mobile/news/NewsFragment$1;-><init>(Lbbc/mobile/news/NewsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 186
    :cond_1
    return-void
.end method

.method public setActionModeSelection(Lbbc/mobile/news/helper/ActionModeProvider;)V
    .locals 3
    .parameter "actionModeProvider"

    .prologue
    .line 354
    const/4 v1, 0x0

    .local v1, x:I
    :goto_0
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 363
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v2, p1}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setActionModeSelection(Lbbc/mobile/news/helper/ActionModeProvider;)V

    .line 366
    :cond_0
    return-void

    .line 356
    :cond_1
    iget-object v2, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lbbc/mobile/news/view/CategoryView;

    if-eqz v2, :cond_2

    .line 359
    check-cast v0, Lbbc/mobile/news/view/CategoryView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0, p1}, Lbbc/mobile/news/view/CategoryView;->setActionModeSelection(Lbbc/mobile/news/helper/ActionModeProvider;)V

    .line 354
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setCategoryArray(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, categorys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Category;>;"
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->setCategoryArray(Ljava/util/ArrayList;)V

    .line 346
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setCategoryArray(Ljava/util/ArrayList;)V

    .line 348
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v0}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->notifyChange()V

    .line 350
    :cond_0
    return-void
.end method

.method public setHardwareAcceleratedViews()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 766
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 767
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 770
    :cond_0
    return-void
.end method

.method public setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 1
    .parameter "imageHandler"

    .prologue
    .line 309
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V

    .line 311
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V

    .line 313
    :cond_0
    return-void
.end method

.method public setOnRefreshFeedListener(Lbbc/mobile/news/OnRefreshFeedListener;)V
    .locals 1
    .parameter "refreshFeedListener"

    .prologue
    .line 317
    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p0, Lbbc/mobile/news/NewsFragment;->mCategoryAdapter:Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->setOnRefreshFeedListener(Lbbc/mobile/news/OnRefreshFeedListener;)V

    .line 319
    :cond_0
    return-void
.end method

.method public setSelectedCategory(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V
    .locals 5
    .parameter "category"
    .parameter "article"

    .prologue
    .line 478
    if-eqz p1, :cond_0

    iget-object v3, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 480
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    iget-object v3, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 490
    iget-object v3, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v3, :cond_0

    .line 491
    iget-object v3, p0, Lbbc/mobile/news/NewsFragment;->mPortraitWrapper:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v3, p1, p2}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setSelectedCategory(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    .line 493
    .end local v2           #x:I
    :cond_0
    return-void

    .line 482
    .restart local v2       #x:I
    :cond_1
    iget-object v3, p0, Lbbc/mobile/news/NewsFragment;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 483
    .local v1, view:Landroid/view/View;
    instance-of v3, v1, Lbbc/mobile/news/view/CategoryView;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 485
    check-cast v0, Lbbc/mobile/news/view/CategoryView;

    .line 486
    .local v0, categoryView:Lbbc/mobile/news/view/CategoryView;
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lbbc/mobile/news/view/CategoryView;->setSelection(Lbbc/mobile/news/helper/SelectionProvider;Z)V

    .line 480
    .end local v0           #categoryView:Lbbc/mobile/news/view/CategoryView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

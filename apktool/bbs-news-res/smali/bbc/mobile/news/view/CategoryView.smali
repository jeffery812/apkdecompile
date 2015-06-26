.class public Lbbc/mobile/news/view/CategoryView;
.super Landroid/widget/LinearLayout;
.source "CategoryView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final AV_CATEGORY:Ljava/lang/String; = "bbc.avplayer.category"

.field public static final AV_ID:Ljava/lang/String; = "bbc.avplayer.id"

.field public static final AV_IS_PLAYLIST:Ljava/lang/String; = "bbc.avplayer.isplaylist"

.field public static final AV_NO_AUTOPLAY:Ljava/lang/String; = "bbc.avplayer.noautoplay"

.field public static final AV_PIC_URL:Ljava/lang/String; = "bbc.avplayer.picurl"

.field public static final AV_SUMMARY:Ljava/lang/String; = "bbc.avplayer.summary"

.field public static final AV_TITLE:Ljava/lang/String; = "bbc.avplayer.title"

.field public static final AV_URL:Ljava/lang/String; = "bbc.avplayer.url"

.field private static BG_SELECTED_COLOR:I

.field private static BG_UNSELECTED_COLOR:I

.field private static COLORS_INITALISED:Z

.field public static final TAG:Ljava/lang/String;

.field private static TITLE_SELECTED_COLOR:I

.field private static TITLE_UNSELECTED_COLOR:I


# instance fields
.field private articleSelectionChecker:Lbbc/mobile/news/view/GallerySelectionVisibleChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbbc/mobile/news/view/GallerySelectionVisibleChecker",
            "<",
            "Lbbc/mobile/news/model/Article;",
            ">;"
        }
    .end annotation
.end field

.field private mArticleAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

.field private mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

.field private mBackgroundView:Landroid/view/View;

.field private mCarouselDialog:Lbbc/mobile/news/dialog/CarouselDialog;

.field private mCategory:Lbbc/mobile/news/model/Category;

.field private mCategoryName:Landroid/widget/TextView;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDateView:Landroid/widget/TextView;

.field private mDialogClickListener:Landroid/view/View$OnClickListener;

.field private mFeedFailedIcon:Landroid/view/View;

.field private mFeedFailedTextView:Landroid/widget/TextView;

.field private mIsPhone:Z

.field private mItemClickListenerX:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

.field private mLongClickListenerX:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

.field private mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

.field private mRefreshFeedListener:Lbbc/mobile/news/OnRefreshFeedListener;

.field private mReloadFeedButton:Landroid/view/View;

.field private mShareHelper:Lbbc/mobile/news/util/ShareHelper;

.field private mSpinner:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lbbc/mobile/news/view/CategoryView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/CategoryView;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lbbc/mobile/news/view/CategoryView;->COLORS_INITALISED:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/CategoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defaultStyle"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/view/CategoryView;->mIsPhone:Z

    .line 271
    new-instance v0, Lbbc/mobile/news/view/CategoryView$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/CategoryView$1;-><init>(Lbbc/mobile/news/view/CategoryView;)V

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mLongClickListenerX:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

    .line 307
    new-instance v0, Lbbc/mobile/news/view/CategoryView$2;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/CategoryView$2;-><init>(Lbbc/mobile/news/view/CategoryView;)V

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mItemClickListenerX:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

    .line 336
    new-instance v0, Lbbc/mobile/news/view/CategoryView$3;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/CategoryView$3;-><init>(Lbbc/mobile/news/view/CategoryView;)V

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 418
    new-instance v0, Lbbc/mobile/news/view/CategoryView$4;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/CategoryView$4;-><init>(Lbbc/mobile/news/view/CategoryView;)V

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mDialogClickListener:Landroid/view/View$OnClickListener;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbbc/mobile/news/R$bool;->isPhone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lbbc/mobile/news/view/CategoryView;->mIsPhone:Z

    .line 85
    new-instance v0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    iget-boolean v1, p0, Lbbc/mobile/news/view/CategoryView;->mIsPhone:Z

    invoke-direct {v0, v1}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;-><init>(Z)V

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mArticleAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    .line 86
    invoke-static {p1}, Lbbc/mobile/news/view/CategoryView;->initBackgroundColors(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/dialog/CarouselDialog;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mCarouselDialog:Lbbc/mobile/news/dialog/CarouselDialog;

    return-object v0
.end method

.method static synthetic access$2(Lbbc/mobile/news/view/CategoryView;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mDialogClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lbbc/mobile/news/view/CategoryView;Lbbc/mobile/news/dialog/CarouselDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lbbc/mobile/news/view/CategoryView;->mCarouselDialog:Lbbc/mobile/news/dialog/CarouselDialog;

    return-void
.end method

.method static synthetic access$4(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/OnRefreshFeedListener;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mRefreshFeedListener:Lbbc/mobile/news/OnRefreshFeedListener;

    return-object v0
.end method

.method static synthetic access$5(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/util/ShareHelper;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mShareHelper:Lbbc/mobile/news/util/ShareHelper;

    return-object v0
.end method

.method static synthetic access$6(Lbbc/mobile/news/view/CategoryView;Lbbc/mobile/news/util/ShareHelper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lbbc/mobile/news/view/CategoryView;->mShareHelper:Lbbc/mobile/news/util/ShareHelper;

    return-void
.end method

.method private static initBackgroundColors(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 353
    sget-boolean v1, Lbbc/mobile/news/view/CategoryView;->COLORS_INITALISED:Z

    if-nez v1, :cond_0

    .line 354
    const/4 v1, 0x1

    sput-boolean v1, Lbbc/mobile/news/view/CategoryView;->COLORS_INITALISED:Z

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 356
    .local v0, resources:Landroid/content/res/Resources;
    sget v1, Lbbc/mobile/news/R$color;->category_bg_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lbbc/mobile/news/view/CategoryView;->BG_SELECTED_COLOR:I

    .line 357
    const/4 v1, 0x0

    sput v1, Lbbc/mobile/news/view/CategoryView;->BG_UNSELECTED_COLOR:I

    .line 358
    sget v1, Lbbc/mobile/news/R$color;->category_view_title_color_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lbbc/mobile/news/view/CategoryView;->TITLE_SELECTED_COLOR:I

    .line 359
    sget v1, Lbbc/mobile/news/R$color;->category_view_title_color_unselected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lbbc/mobile/news/view/CategoryView;->TITLE_UNSELECTED_COLOR:I

    .line 361
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private varargs setVisibilityToViews(I[Landroid/view/View;)V
    .locals 2
    .parameter "visibility"
    .parameter "views"

    .prologue
    .line 151
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 153
    return-void

    .line 152
    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkCategory(Lbbc/mobile/news/model/Category;)Z
    .locals 1
    .parameter "category"

    .prologue
    .line 197
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 198
    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Category;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mArticleAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    return-object v0
.end method

.method public getCategory()Lbbc/mobile/news/model/Category;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedGalleryIndex()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getSelectedItemPosition()I

    move-result v0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hasCategory()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 97
    sget v0, Lbbc/mobile/news/R$id;->articleGallery:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/view/LeftAlignedGallery;

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    .line 99
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mArticleAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 100
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mItemClickListenerX:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setOnItemClickListener(Lbbc/mobile/news/view/AdapterView$OnItemClickListener;)V

    .line 101
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mLongClickListenerX:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setOnItemLongClickListener(Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;)V

    .line 102
    new-instance v0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v2, p0, Lbbc/mobile/news/view/CategoryView;->mArticleAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-direct {v0, v1, v2}, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;-><init>(Lbbc/mobile/news/view/AbsSpinner;Lbbc/mobile/news/adapter/AdapterSelectionExtension;)V

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->articleSelectionChecker:Lbbc/mobile/news/view/GallerySelectionVisibleChecker;

    .line 104
    sget v0, Lbbc/mobile/news/R$id;->categoryName:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mCategoryName:Landroid/widget/TextView;

    .line 105
    sget v0, Lbbc/mobile/news/R$id;->categorySpinner:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mSpinner:Landroid/widget/ProgressBar;

    .line 106
    sget v0, Lbbc/mobile/news/R$id;->categoryDate:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mDateView:Landroid/widget/TextView;

    .line 107
    sget v0, Lbbc/mobile/news/R$id;->feedFailedText:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedTextView:Landroid/widget/TextView;

    .line 108
    sget v0, Lbbc/mobile/news/R$id;->feedFailedIcon:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedIcon:Landroid/view/View;

    .line 110
    sget v0, Lbbc/mobile/news/R$id;->feedReloadButton:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mReloadFeedButton:Landroid/view/View;

    .line 111
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mReloadFeedButton:Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget v0, Lbbc/mobile/news/R$id;->categoryBackgroundView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/CategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mBackgroundView:Landroid/view/View;

    .line 113
    return-void
.end method

.method public onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V
    .locals 7
    .parameter "context"
    .parameter "category"
    .parameter "article"

    .prologue
    const/4 v4, 0x1

    .line 321
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

    invoke-virtual {p0}, Lbbc/mobile/news/view/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x5

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-interface/range {v0 .. v6}, Lbbc/mobile/news/OnArticleSelectedListener;->onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;ZZI)V

    .line 323
    :cond_0
    return-void
.end method

.method public setActionModeSelection(Lbbc/mobile/news/helper/ActionModeProvider;)V
    .locals 4
    .parameter "actionModeProvider"

    .prologue
    .line 392
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v3}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 399
    return-void

    .line 393
    :cond_0
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v3, v2}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 394
    .local v1, view:Landroid/view/View;
    instance-of v3, v1, Lbbc/mobile/news/view/GalleryView;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 395
    check-cast v0, Lbbc/mobile/news/view/GalleryView;

    .line 396
    .local v0, galleryView:Lbbc/mobile/news/view/GalleryView;
    invoke-virtual {v0}, Lbbc/mobile/news/view/GalleryView;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v3

    invoke-virtual {p1, v3}, Lbbc/mobile/news/helper/ActionModeProvider;->isSelected(Lbbc/mobile/news/model/Article;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lbbc/mobile/news/view/GalleryView;->setActionModeSelection(Z)V

    .line 392
    .end local v0           #galleryView:Lbbc/mobile/news/view/GalleryView;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setCategory(Lbbc/mobile/news/model/Category;)V
    .locals 9
    .parameter "category"

    .prologue
    const/4 v8, 0x0

    .line 205
    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iput-object p1, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    .line 209
    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getUpdateFlag()I

    move-result v6

    invoke-virtual {p0, v6}, Lbbc/mobile/news/view/CategoryView;->setCategoryVisibility(I)V

    .line 211
    iget-object v6, p0, Lbbc/mobile/news/view/CategoryView;->mArticleAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    iget-object v7, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v6, v7}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 212
    iget-object v6, p0, Lbbc/mobile/news/view/CategoryView;->mArticleAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-virtual {v6}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->notifyDataSetChanged()V

    .line 214
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v6

    iget-object v7, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v6, v7}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 216
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v5

    .line 217
    .local v5, selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    invoke-virtual {v5}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v4

    .line 218
    .local v4, selectedCategory:Lbbc/mobile/news/model/Category;
    invoke-virtual {v5}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedArticle()Lbbc/mobile/news/model/Article;

    move-result-object v3

    .line 220
    .local v3, selectedArticle:Lbbc/mobile/news/model/Article;
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 221
    invoke-virtual {v5, p1}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 222
    invoke-virtual {v3}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lbbc/mobile/news/model/Category;->getArticleIndex(Ljava/lang/String;)I

    move-result v1

    .line 223
    .local v1, index:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 224
    :cond_2
    iget-object v6, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v6, v1, v8}, Lbbc/mobile/news/view/LeftAlignedGallery;->setSelection(IZ)V

    .line 232
    .end local v1           #index:I
    .end local v3           #selectedArticle:Lbbc/mobile/news/model/Article;
    .end local v4           #selectedCategory:Lbbc/mobile/news/model/Category;
    .end local v5           #selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v0, catName:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v6}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v6, p0, Lbbc/mobile/news/view/CategoryView;->mCategoryName:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v6, p0, Lbbc/mobile/news/view/CategoryView;->mDateView:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 241
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 242
    .local v2, lastUpdated:Ljava/util/Calendar;
    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {p0}, Lbbc/mobile/news/view/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lbbc/mobile/news/util/GlobalSettings;->getLastCategoryUpdateTime(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 244
    iget-object v6, p0, Lbbc/mobile/news/view/CategoryView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lbbc/mobile/news/view/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2, v8}, Lbbc/mobile/news/helper/DateUtils;->getShortHumanReadableUpdatedTime(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 229
    .end local v0           #catName:Ljava/lang/StringBuilder;
    .end local v2           #lastUpdated:Ljava/util/Calendar;
    :cond_4
    iget-object v6, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v6, v8, v8}, Lbbc/mobile/news/view/LeftAlignedGallery;->setSelection(IZ)V

    goto :goto_1
.end method

.method public setCategoryVisibility(I)V
    .locals 7
    .parameter "updateFlag"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 121
    :pswitch_0
    new-array v0, v3, [Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    aput-object v1, v0, v2

    invoke-direct {p0, v2, v0}, Lbbc/mobile/news/view/CategoryView;->setVisibilityToViews(I[Landroid/view/View;)V

    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedTextView:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedIcon:Landroid/view/View;

    aput-object v1, v0, v3

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mReloadFeedButton:Landroid/view/View;

    aput-object v1, v0, v4

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mSpinner:Landroid/widget/ProgressBar;

    aput-object v1, v0, v5

    invoke-direct {p0, v6, v0}, Lbbc/mobile/news/view/CategoryView;->setVisibilityToViews(I[Landroid/view/View;)V

    goto :goto_0

    .line 128
    :pswitch_1
    new-array v0, v5, [Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    aput-object v1, v0, v2

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedIcon:Landroid/view/View;

    aput-object v1, v0, v3

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mReloadFeedButton:Landroid/view/View;

    aput-object v1, v0, v4

    invoke-direct {p0, v2, v0}, Lbbc/mobile/news/view/CategoryView;->setVisibilityToViews(I[Landroid/view/View;)V

    .line 129
    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mSpinner:Landroid/widget/ProgressBar;

    aput-object v1, v0, v2

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedTextView:Landroid/widget/TextView;

    aput-object v1, v0, v3

    invoke-direct {p0, v6, v0}, Lbbc/mobile/news/view/CategoryView;->setVisibilityToViews(I[Landroid/view/View;)V

    goto :goto_0

    .line 135
    :pswitch_2
    new-array v0, v5, [Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedTextView:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedIcon:Landroid/view/View;

    aput-object v1, v0, v3

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mReloadFeedButton:Landroid/view/View;

    aput-object v1, v0, v4

    invoke-direct {p0, v2, v0}, Lbbc/mobile/news/view/CategoryView;->setVisibilityToViews(I[Landroid/view/View;)V

    .line 136
    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    aput-object v1, v0, v2

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mSpinner:Landroid/widget/ProgressBar;

    aput-object v1, v0, v3

    invoke-direct {p0, v6, v0}, Lbbc/mobile/news/view/CategoryView;->setVisibilityToViews(I[Landroid/view/View;)V

    goto :goto_0

    .line 143
    :pswitch_3
    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mSpinner:Landroid/widget/ProgressBar;

    aput-object v1, v0, v2

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    aput-object v1, v0, v3

    invoke-direct {p0, v2, v0}, Lbbc/mobile/news/view/CategoryView;->setVisibilityToViews(I[Landroid/view/View;)V

    .line 144
    new-array v0, v5, [Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedTextView:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedIcon:Landroid/view/View;

    aput-object v1, v0, v3

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView;->mReloadFeedButton:Landroid/view/View;

    aput-object v1, v0, v4

    invoke-direct {p0, v6, v0}, Lbbc/mobile/news/view/CategoryView;->setVisibilityToViews(I[Landroid/view/View;)V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setColors(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mBackgroundView:Landroid/view/View;

    sget v1, Lbbc/mobile/news/view/CategoryView;->BG_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 405
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mCategoryName:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/CategoryView;->TITLE_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedTextView:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/CategoryView;->TITLE_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    sget v1, Lbbc/mobile/news/view/CategoryView;->BG_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setBackgroundColor(I)V

    .line 415
    :goto_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/CategoryView;->invalidate()V

    .line 416
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mBackgroundView:Landroid/view/View;

    sget v1, Lbbc/mobile/news/view/CategoryView;->BG_UNSELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 410
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mCategoryName:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/CategoryView;->TITLE_UNSELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mFeedFailedTextView:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/CategoryView;->TITLE_UNSELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    sget v1, Lbbc/mobile/news/view/CategoryView;->BG_UNSELECTED_COLOR:I

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 1
    .parameter "imageHandler"

    .prologue
    .line 90
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mArticleAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V

    .line 91
    return-void
.end method

.method public setLastUpdatedDate(Ljava/util/Calendar;)V
    .locals 3
    .parameter "date"

    .prologue
    .line 327
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lbbc/mobile/news/view/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lbbc/mobile/news/helper/DateUtils;->getHumanReadableUpdatedTime(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_0
    return-void
.end method

.method public setOnArticleSelectedListener(Lbbc/mobile/news/OnArticleSelectedListener;)V
    .locals 0
    .parameter "onArticleSelectedListener"

    .prologue
    .line 259
    iput-object p1, p0, Lbbc/mobile/news/view/CategoryView;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

    .line 260
    return-void
.end method

.method public setOnRefreshFeedListener(Lbbc/mobile/news/OnRefreshFeedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 333
    iput-object p1, p0, Lbbc/mobile/news/view/CategoryView;->mRefreshFeedListener:Lbbc/mobile/news/OnRefreshFeedListener;

    .line 334
    return-void
.end method

.method public setSelection(Lbbc/mobile/news/helper/SelectionProvider;Z)V
    .locals 6
    .parameter "selectionProvider"
    .parameter "manualGalleryUpdate"

    .prologue
    .line 365
    iget-boolean v5, p0, Lbbc/mobile/news/view/CategoryView;->mIsPhone:Z

    if-nez v5, :cond_1

    .line 367
    iget-object v5, p0, Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {p1, v5}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;)Z

    move-result v2

    .line 369
    .local v2, selectedCategory:Z
    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/CategoryView;->setColors(Z)V

    .line 373
    if-eqz p2, :cond_0

    .line 374
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    iget-object v5, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v5}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 382
    .end local v4           #x:I
    :cond_0
    if-eqz v2, :cond_1

    .line 383
    invoke-virtual {p1}, Lbbc/mobile/news/helper/SelectionProvider;->getPreviousSelectedArticle()Lbbc/mobile/news/model/Article;

    move-result-object v1

    .line 384
    .local v1, previousSelectedArticle:Lbbc/mobile/news/model/Article;
    invoke-virtual {p1}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 385
    .local v0, newSelectedArticle:Lbbc/mobile/news/model/Article;
    iget-object v5, p0, Lbbc/mobile/news/view/CategoryView;->articleSelectionChecker:Lbbc/mobile/news/view/GallerySelectionVisibleChecker;

    invoke-virtual {v5, v0, v1}, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->checkSelectionVisible(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 388
    .end local v0           #newSelectedArticle:Lbbc/mobile/news/model/Article;
    .end local v1           #previousSelectedArticle:Lbbc/mobile/news/model/Article;
    .end local v2           #selectedCategory:Z
    :cond_1
    return-void

    .line 375
    .restart local v2       #selectedCategory:Z
    .restart local v4       #x:I
    :cond_2
    iget-object v5, p0, Lbbc/mobile/news/view/CategoryView;->mArticleGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v5, v4}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 376
    .local v3, view:Landroid/view/View;
    instance-of v5, v3, Lbbc/mobile/news/view/GalleryView;

    if-eqz v5, :cond_3

    .line 377
    check-cast v3, Lbbc/mobile/news/view/GalleryView;

    .end local v3           #view:Landroid/view/View;
    invoke-virtual {v3, p1, v2}, Lbbc/mobile/news/view/GalleryView;->setSelection(Lbbc/mobile/news/helper/SelectionProvider;Z)V

    .line 374
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public startSpinner()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 252
    return-void
.end method

.method public stopSpinner()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView;->mSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 256
    return-void
.end method

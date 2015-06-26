.class public Lbbc/mobile/news/view/PortraitCategoryWrapper;
.super Landroid/widget/LinearLayout;
.source "PortraitCategoryWrapper.java"

# interfaces
.implements Lbbc/mobile/news/model/AtomCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentArticle:Lbbc/mobile/news/model/Article;

.field private mArticleSelectionChecker:Lbbc/mobile/news/view/GallerySelectionVisibleChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbbc/mobile/news/view/GallerySelectionVisibleChecker",
            "<",
            "Lbbc/mobile/news/model/Article;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

.field private mCategoryGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

.field private mCategorySelectionChecker:Lbbc/mobile/news/view/GallerySelectionVisibleChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbbc/mobile/news/view/GallerySelectionVisibleChecker",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

.field private mIsPhone:Z

.field private mLongClickListener:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

.field private mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

.field private mTabAdapter:Lbbc/mobile/news/adapter/CategoryTabsAdapter;

.field private mTabGallery:Lbbc/mobile/news/view/LeftAlignedGallery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mIsPhone:Z

    .line 95
    new-instance v0, Lbbc/mobile/news/view/PortraitCategoryWrapper$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/PortraitCategoryWrapper$1;-><init>(Lbbc/mobile/news/view/PortraitCategoryWrapper;)V

    iput-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mClickListener:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

    .line 172
    new-instance v0, Lbbc/mobile/news/view/PortraitCategoryWrapper$2;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/PortraitCategoryWrapper$2;-><init>(Lbbc/mobile/news/view/PortraitCategoryWrapper;)V

    iput-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mLongClickListener:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/view/PortraitCategoryWrapper;)Lbbc/mobile/news/adapter/CategoryTabsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabAdapter:Lbbc/mobile/news/adapter/CategoryTabsAdapter;

    return-object v0
.end method


# virtual methods
.method public getCategories()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabAdapter:Lbbc/mobile/news/adapter/CategoryTabsAdapter;

    invoke-virtual {v0}, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->getCategorys()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public notifyChange()V
    .locals 4

    .prologue
    .line 139
    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabAdapter:Lbbc/mobile/news/adapter/CategoryTabsAdapter;

    invoke-virtual {v1}, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->notifyDataSetChanged()V

    .line 141
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 143
    .local v0, category:Lbbc/mobile/news/model/Category;
    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-virtual {v1, v0}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 144
    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-virtual {v1}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->notifyDataSetChanged()V

    .line 146
    const-string v1, "BUG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notifyChange() mCategoryAdapter count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-virtual {v3}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onAtomFailed(Lbbc/mobile/news/model/Feed;II)V
    .locals 0
    .parameter "feed"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 223
    return-void
.end method

.method public onAtomSuccess(Lbbc/mobile/news/model/Category;II)V
    .locals 6
    .parameter "category"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, isSelected:Z
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v2

    .line 207
    .local v2, selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    invoke-virtual {v2, p1}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 210
    invoke-virtual {v2}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedArticle()Lbbc/mobile/news/model/Article;

    move-result-object v1

    .line 212
    .local v1, selectedArticle:Lbbc/mobile/news/model/Article;
    invoke-virtual {p0, p1, v1}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setSelectedCategory(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    .line 214
    .end local v1           #selectedArticle:Lbbc/mobile/news/model/Article;
    :cond_0
    sget-object v3, Lbbc/mobile/news/view/PortraitCategoryWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onAtomSucess(category:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isSelectedCategory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    sget v0, Lbbc/mobile/news/R$id;->portrait_view_category_gallery:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/view/LeftAlignedGallery;

    iput-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    .line 56
    sget v0, Lbbc/mobile/news/R$id;->portrait_view_tab_gallery:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/view/LeftAlignedGallery;

    iput-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    .line 58
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mClickListener:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setOnItemClickListener(Lbbc/mobile/news/view/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mClickListener:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setOnItemClickListener(Lbbc/mobile/news/view/AdapterView$OnItemClickListener;)V

    .line 61
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mLongClickListener:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setOnItemLongClickListener(Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;)V

    .line 62
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mLongClickListener:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setOnItemLongClickListener(Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;)V

    .line 64
    new-instance v0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    iget-boolean v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mIsPhone:Z

    invoke-direct {v0, v1}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;-><init>(Z)V

    iput-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    .line 65
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-virtual {v0, v3}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->setAdjustFontColorOnSelection(Z)V

    .line 67
    new-instance v0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;

    invoke-direct {v0}, Lbbc/mobile/news/adapter/CategoryTabsAdapter;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabAdapter:Lbbc/mobile/news/adapter/CategoryTabsAdapter;

    .line 69
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 70
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabAdapter:Lbbc/mobile/news/adapter/CategoryTabsAdapter;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 72
    new-instance v0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;

    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v2, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabAdapter:Lbbc/mobile/news/adapter/CategoryTabsAdapter;

    invoke-direct {v0, v1, v2}, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;-><init>(Lbbc/mobile/news/view/AbsSpinner;Lbbc/mobile/news/adapter/AdapterSelectionExtension;)V

    iput-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategorySelectionChecker:Lbbc/mobile/news/view/GallerySelectionVisibleChecker;

    .line 73
    new-instance v0, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;

    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v2, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-direct {v0, v1, v2}, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;-><init>(Lbbc/mobile/news/view/AbsSpinner;Lbbc/mobile/news/adapter/AdapterSelectionExtension;)V

    iput-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mArticleSelectionChecker:Lbbc/mobile/news/view/GallerySelectionVisibleChecker;

    .line 76
    invoke-virtual {p0, v3}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setSelectedTabIndex(I)V

    .line 77
    return-void
.end method

.method public setActionModeSelection(Lbbc/mobile/news/helper/ActionModeProvider;)V
    .locals 4
    .parameter "actionModeProvider"

    .prologue
    .line 227
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    iget-object v3, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v3}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 234
    return-void

    .line 228
    :cond_0
    iget-object v3, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryGallery:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v3, v2}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 229
    .local v1, view:Landroid/view/View;
    instance-of v3, v1, Lbbc/mobile/news/view/GalleryView;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 230
    check-cast v0, Lbbc/mobile/news/view/GalleryView;

    .line 231
    .local v0, galleryView:Lbbc/mobile/news/view/GalleryView;
    invoke-virtual {v0}, Lbbc/mobile/news/view/GalleryView;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v3

    invoke-virtual {p1, v3}, Lbbc/mobile/news/helper/ActionModeProvider;->isSelected(Lbbc/mobile/news/model/Article;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lbbc/mobile/news/view/GalleryView;->setActionModeSelection(Z)V

    .line 227
    .end local v0           #galleryView:Lbbc/mobile/news/view/GalleryView;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setCategoryArray(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 123
    .local p1, categories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Category;>;"
    iget-object v1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabAdapter:Lbbc/mobile/news/adapter/CategoryTabsAdapter;

    invoke-virtual {v1, p1}, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->setCategoryArray(Ljava/util/ArrayList;)V

    .line 124
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Category;

    .line 126
    .local v0, category:Lbbc/mobile/news/model/Category;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->notifyChange()V

    .line 130
    .end local v0           #category:Lbbc/mobile/news/model/Category;
    :cond_0
    return-void
.end method

.method public setCategoryFailed(Lbbc/mobile/news/model/Category;)V
    .locals 1
    .parameter "category"

    .prologue
    .line 150
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 151
    return-void
.end method

.method public setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 1
    .parameter "imageHandler"

    .prologue
    .line 80
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategoryAdapter:Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V

    .line 83
    :cond_0
    return-void
.end method

.method public setOnArticleSelectedListener(Lbbc/mobile/news/OnArticleSelectedListener;)V
    .locals 0
    .parameter "onArticleSelectedListener"

    .prologue
    .line 118
    iput-object p1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

    .line 119
    return-void
.end method

.method public setSelectedCategory(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V
    .locals 3
    .parameter "category"
    .parameter "article"

    .prologue
    .line 87
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/helper/SelectionProvider;->getPreviousSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v1

    .line 88
    .local v1, previousSelectedCategory:Lbbc/mobile/news/model/Category;
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/helper/SelectionProvider;->getPreviousSelectedArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 90
    .local v0, previousSelectedArticle:Lbbc/mobile/news/model/Article;
    invoke-virtual {p0}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->notifyChange()V

    .line 91
    iget-object v2, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mCategorySelectionChecker:Lbbc/mobile/news/view/GallerySelectionVisibleChecker;

    invoke-virtual {v2, p1, v1}, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->checkSelectionVisible(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    iget-object v2, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mArticleSelectionChecker:Lbbc/mobile/news/view/GallerySelectionVisibleChecker;

    invoke-virtual {v2, p2, v0}, Lbbc/mobile/news/view/GallerySelectionVisibleChecker;->checkSelectionVisible(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public setSelectedTabIndex(I)V
    .locals 1
    .parameter "selectedIndex"

    .prologue
    .line 168
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabAdapter:Lbbc/mobile/news/adapter/CategoryTabsAdapter;

    invoke-virtual {v0}, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->notifyDataSetChanged()V

    .line 169
    return-void
.end method

.method public viewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V
    .locals 7
    .parameter "context"
    .parameter "category"
    .parameter "article"

    .prologue
    const/4 v4, 0x1

    .line 156
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->currentArticle:Lbbc/mobile/news/model/Article;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->currentArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v0, p3}, Lbbc/mobile/news/model/Article;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iput-object p3, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->currentArticle:Lbbc/mobile/news/model/Article;

    .line 163
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

    invoke-virtual {p0}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x5

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-interface/range {v0 .. v6}, Lbbc/mobile/news/OnArticleSelectedListener;->onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;ZZI)V

    goto :goto_0
.end method

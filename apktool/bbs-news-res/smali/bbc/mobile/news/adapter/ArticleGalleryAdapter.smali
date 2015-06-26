.class public Lbbc/mobile/news/adapter/ArticleGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArticleGalleryAdapter.java"

# interfaces
.implements Lbbc/mobile/news/adapter/AdapterSelectionExtension;


# static fields
.field public static final ARTICLE_GALLERY:I = 0x1

.field public static final AV_GALLERY:I = 0x2

.field public static final TAG:Ljava/lang/String; = null

.field public static final VIEW_TYPE_COUNT:I = 0x1


# instance fields
.field private mAdjustFontColorOnSelection:Z

.field private mCategory:Lbbc/mobile/news/model/Category;

.field private mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

.field private mIsPhone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "isPhone"

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mAdjustFontColorOnSelection:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mIsPhone:Z

    .line 32
    iput-boolean p1, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mIsPhone:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getCategory()Lbbc/mobile/news/model/Category;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 52
    iget-object v0, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    .line 56
    iget-object v0, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 65
    iget-object v0, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->hashCode()I

    move-result v0

    int-to-long v0, v0

    .line 71
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"

    .prologue
    .line 144
    instance-of v1, p1, Lbbc/mobile/news/model/Article;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 145
    check-cast v0, Lbbc/mobile/news/model/Article;

    .line 146
    .local v0, article:Lbbc/mobile/news/model/Article;
    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/model/Category;->getArticleIndex(Ljava/lang/String;)I

    move-result v1

    .line 155
    .end local v0           #article:Lbbc/mobile/news/model/Article;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 77
    const-string v4, "DansGalleryView"

    const-string v5, "GetView() called"

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v2

    .local v2, selectionProvider:Lbbc/mobile/news/helper/SelectionProvider;
    move-object v1, p2

    .line 81
    check-cast v1, Lbbc/mobile/news/view/GalleryView;

    .line 83
    .local v1, galleryView:Lbbc/mobile/news/view/GalleryView;
    if-nez v1, :cond_1

    .line 84
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lbbc/mobile/news/R$layout;->gallery_item_layout:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #galleryView:Lbbc/mobile/news/view/GalleryView;
    check-cast v1, Lbbc/mobile/news/view/GalleryView;

    .line 86
    .restart local v1       #galleryView:Lbbc/mobile/news/view/GalleryView;
    sget v4, Lbbc/mobile/news/R$id;->articleTitleId:I

    invoke-virtual {v1, v4}, Lbbc/mobile/news/view/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 87
    .local v3, textView:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 88
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 90
    :cond_0
    iget-boolean v4, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mIsPhone:Z

    invoke-virtual {v1, v4}, Lbbc/mobile/news/view/GalleryView;->setIsPhone(Z)V

    .line 91
    iget-boolean v4, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mAdjustFontColorOnSelection:Z

    invoke-virtual {v1, v4}, Lbbc/mobile/news/view/GalleryView;->setAdjustFontColorOnSelection(Z)V

    .line 95
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0, p1}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Article;

    .line 97
    .local v0, article:Lbbc/mobile/news/model/Article;
    if-eqz v0, :cond_2

    .line 98
    iget-object v4, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    invoke-virtual {v1, v0, v4}, Lbbc/mobile/news/view/GalleryView;->setArticle(Lbbc/mobile/news/model/Article;Lbbc/mobile/news/feed/ImageHandler;)V

    .line 99
    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v4

    invoke-virtual {v2, v4}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;)Z

    move-result v4

    invoke-virtual {v1, v2, v4}, Lbbc/mobile/news/view/GalleryView;->setSelection(Lbbc/mobile/news/helper/SelectionProvider;Z)V

    .line 104
    :cond_2
    return-object v1
.end method

.method public getViewPosition(Landroid/view/View;)I
    .locals 3
    .parameter "view"

    .prologue
    .line 133
    instance-of v2, p1, Lbbc/mobile/news/view/GalleryView;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 134
    check-cast v1, Lbbc/mobile/news/view/GalleryView;

    .line 135
    .local v1, galleryView:Lbbc/mobile/news/view/GalleryView;
    invoke-virtual {v1}, Lbbc/mobile/news/view/GalleryView;->getArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 136
    .local v0, article:Lbbc/mobile/news/model/Article;
    invoke-virtual {p0, v0}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    .line 139
    .end local v0           #article:Lbbc/mobile/news/model/Article;
    .end local v1           #galleryView:Lbbc/mobile/news/view/GalleryView;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public setAdjustFontColorOnSelection(Z)V
    .locals 0
    .parameter "adjust"

    .prologue
    .line 159
    iput-boolean p1, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mAdjustFontColorOnSelection:Z

    .line 160
    return-void
.end method

.method public setCategory(Lbbc/mobile/news/model/Category;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 113
    iput-object p1, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    .line 114
    invoke-virtual {p0}, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->notifyDataSetChanged()V

    .line 115
    return-void
.end method

.method public setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 0
    .parameter "imageHandler"

    .prologue
    .line 36
    iput-object p1, p0, Lbbc/mobile/news/adapter/ArticleGalleryAdapter;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    .line 37
    return-void
.end method

.class public Lbbc/mobile/news/adapter/CategoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategoryListAdapter.java"

# interfaces
.implements Lbbc/mobile/news/adapter/AdapterSelectionExtension;


# static fields
.field private static final FEATURED_ITEM:I = 0x0

.field private static final NORMAL_ITEM:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field private static final TYPE_COUNT:I = 0x2


# instance fields
.field private volatile mCategoryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

.field private mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

.field private mRefreshFeedListener:Lbbc/mobile/news/OnRefreshFeedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lbbc/mobile/news/adapter/CategoryListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/adapter/CategoryListAdapter;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public addCategory(Lbbc/mobile/news/model/Category;)V
    .locals 3
    .parameter "category"

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    iget-object v1, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 133
    :goto_1
    iget-object v1, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {p0}, Lbbc/mobile/news/adapter/CategoryListAdapter;->notifyDataSetChanged()V

    .line 135
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Category;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 126
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clearCategorys()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    invoke-virtual {p0}, Lbbc/mobile/news/adapter/CategoryListAdapter;->notifyDataSetChanged()V

    .line 145
    return-void
.end method

.method public getCategorys()Ljava/util/ArrayList;
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
    .line 148
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lbbc/mobile/news/model/Category;
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getItem(I)Lbbc/mobile/news/model/Category;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getItem(I)Lbbc/mobile/news/model/Category;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 167
    instance-of v0, p1, Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 170
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getItem(I)Lbbc/mobile/news/model/Category;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 76
    move-object v1, p2

    check-cast v1, Lbbc/mobile/news/view/CategoryView;

    .line 78
    .local v1, categoryView:Lbbc/mobile/news/view/CategoryView;
    if-nez v1, :cond_1

    .line 79
    sget-object v3, Lbbc/mobile/news/adapter/CategoryListAdapter;->TAG:Ljava/lang/String;

    const-string v4, "getView() - convert view null"

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getItemViewType(I)I

    move-result v2

    .line 82
    .local v2, viewType:I
    if-nez v2, :cond_0

    .line 83
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lbbc/mobile/news/R$layout;->category_view_topstories_layout:I

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #categoryView:Lbbc/mobile/news/view/CategoryView;
    check-cast v1, Lbbc/mobile/news/view/CategoryView;

    .line 88
    .restart local v1       #categoryView:Lbbc/mobile/news/view/CategoryView;
    :goto_0
    iget-object v3, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    invoke-virtual {v1, v3}, Lbbc/mobile/news/view/CategoryView;->setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V

    .line 89
    iget-object v3, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mRefreshFeedListener:Lbbc/mobile/news/OnRefreshFeedListener;

    invoke-virtual {v1, v3}, Lbbc/mobile/news/view/CategoryView;->setOnRefreshFeedListener(Lbbc/mobile/news/OnRefreshFeedListener;)V

    .line 90
    iget-object v3, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

    invoke-virtual {v1, v3}, Lbbc/mobile/news/view/CategoryView;->setOnArticleSelectedListener(Lbbc/mobile/news/OnArticleSelectedListener;)V

    .line 95
    .end local v2           #viewType:I
    :goto_1
    iget-object v3, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Category;

    .line 96
    .local v0, arrayCategory:Lbbc/mobile/news/model/Category;
    invoke-virtual {v1, v0}, Lbbc/mobile/news/view/CategoryView;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 98
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Lbbc/mobile/news/view/CategoryView;->setSelection(Lbbc/mobile/news/helper/SelectionProvider;Z)V

    .line 100
    return-object v1

    .line 85
    .end local v0           #arrayCategory:Lbbc/mobile/news/model/Category;
    .restart local v2       #viewType:I
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lbbc/mobile/news/R$layout;->category_view_layout:I

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #categoryView:Lbbc/mobile/news/view/CategoryView;
    check-cast v1, Lbbc/mobile/news/view/CategoryView;

    .restart local v1       #categoryView:Lbbc/mobile/news/view/CategoryView;
    goto :goto_0

    .line 92
    .end local v2           #viewType:I
    :cond_1
    sget-object v3, Lbbc/mobile/news/adapter/CategoryListAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getView() - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getViewPosition(Landroid/view/View;)I
    .locals 3
    .parameter "view"

    .prologue
    .line 157
    instance-of v2, p1, Lbbc/mobile/news/view/CategoryView;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 158
    check-cast v1, Lbbc/mobile/news/view/CategoryView;

    .line 159
    .local v1, categoryView:Lbbc/mobile/news/view/CategoryView;
    invoke-virtual {v1}, Lbbc/mobile/news/view/CategoryView;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 160
    .local v0, category:Lbbc/mobile/news/model/Category;
    invoke-virtual {p0, v0}, Lbbc/mobile/news/adapter/CategoryListAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    .line 162
    .end local v0           #category:Lbbc/mobile/news/model/Category;
    .end local v1           #categoryView:Lbbc/mobile/news/view/CategoryView;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeCategory(Lbbc/mobile/news/model/Category;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 138
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lbbc/mobile/news/adapter/CategoryListAdapter;->notifyDataSetChanged()V

    .line 140
    return-void
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
    .line 115
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Category;>;"
    if-eqz p1, :cond_0

    .line 116
    iput-object p1, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    .line 121
    :goto_0
    invoke-virtual {p0}, Lbbc/mobile/news/adapter/CategoryListAdapter;->notifyDataSetChanged()V

    .line 122
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mCategoryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 0
    .parameter "imageHandler"

    .prologue
    .line 35
    iput-object p1, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    .line 36
    return-void
.end method

.method public setOnArticleSelectedListener(Lbbc/mobile/news/OnArticleSelectedListener;)V
    .locals 0
    .parameter "onArticleSelectedListener"

    .prologue
    .line 105
    iput-object p1, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

    .line 106
    return-void
.end method

.method public setOnRefreshFeedListener(Lbbc/mobile/news/OnRefreshFeedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 70
    iput-object p1, p0, Lbbc/mobile/news/adapter/CategoryListAdapter;->mRefreshFeedListener:Lbbc/mobile/news/OnRefreshFeedListener;

    .line 71
    return-void
.end method

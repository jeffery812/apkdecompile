.class public Lbbc/mobile/news/adapter/CategoryTabsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CategoryTabsAdapter.java"

# interfaces
.implements Lbbc/mobile/news/adapter/AdapterSelectionExtension;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mCategorys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->mCategorys:Ljava/util/ArrayList;

    .line 13
    return-void
.end method


# virtual methods
.method public clearCategorys()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->mCategorys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    invoke-virtual {p0}, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method

.method public getCategory(I)Lbbc/mobile/news/model/Category;
    .locals 1
    .parameter "index"

    .prologue
    .line 52
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->mCategorys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Category;

    return-object v0
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
    .line 91
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->mCategorys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->mCategorys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndexOfCategory(Lbbc/mobile/news/model/Category;)I
    .locals 1
    .parameter "category"

    .prologue
    .line 82
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->mCategorys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 26
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->mCategorys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .parameter "index"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->getCategory(I)Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 34
    .local v0, category:Lbbc/mobile/news/model/Category;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v2, v1

    .line 37
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 110
    instance-of v0, p1, Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->mCategorys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "index"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    move-object v0, p2

    check-cast v0, Lbbc/mobile/news/view/CategoryTabView;

    .line 59
    .local v0, tabView:Lbbc/mobile/news/view/CategoryTabView;
    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 61
    sget v2, Lbbc/mobile/news/R$layout;->category_tab_view_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .end local v0           #tabView:Lbbc/mobile/news/view/CategoryTabView;
    check-cast v0, Lbbc/mobile/news/view/CategoryTabView;

    .line 63
    .restart local v0       #tabView:Lbbc/mobile/news/view/CategoryTabView;
    :cond_0
    invoke-virtual {p0, p1}, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->getCategory(I)Lbbc/mobile/news/model/Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/CategoryTabView;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 64
    return-object v0
.end method

.method public getViewPosition(Landroid/view/View;)I
    .locals 3
    .parameter "view"

    .prologue
    .line 100
    instance-of v2, p1, Lbbc/mobile/news/view/CategoryTabView;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 101
    check-cast v1, Lbbc/mobile/news/view/CategoryTabView;

    .line 102
    .local v1, categoryView:Lbbc/mobile/news/view/CategoryTabView;
    invoke-virtual {v1}, Lbbc/mobile/news/view/CategoryTabView;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 103
    .local v0, category:Lbbc/mobile/news/model/Category;
    invoke-virtual {p0, v0}, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v2

    .line 105
    .end local v0           #category:Lbbc/mobile/news/model/Category;
    .end local v1           #categoryView:Lbbc/mobile/news/view/CategoryTabView;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->mCategorys:Ljava/util/ArrayList;

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

.method public setCategoryArray(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 74
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Category;>;"
    if-eqz p1, :cond_0

    .line 75
    iput-object p1, p0, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->mCategorys:Ljava/util/ArrayList;

    .line 78
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->notifyDataSetChanged()V

    .line 79
    return-void
.end method

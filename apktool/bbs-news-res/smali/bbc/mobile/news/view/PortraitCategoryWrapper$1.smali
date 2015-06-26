.class Lbbc/mobile/news/view/PortraitCategoryWrapper$1;
.super Ljava/lang/Object;
.source "PortraitCategoryWrapper.java"

# interfaces
.implements Lbbc/mobile/news/view/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/PortraitCategoryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbbc/mobile/news/view/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/PortraitCategoryWrapper;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/PortraitCategoryWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper$1;->this$0:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lbbc/mobile/news/view/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/mobile/news/view/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, parent:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<*>;"
    instance-of v2, p2, Lbbc/mobile/news/view/CategoryTabView;

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper$1;->this$0:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    #getter for: Lbbc/mobile/news/view/PortraitCategoryWrapper;->mTabAdapter:Lbbc/mobile/news/adapter/CategoryTabsAdapter;
    invoke-static {v2}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->access$0(Lbbc/mobile/news/view/PortraitCategoryWrapper;)Lbbc/mobile/news/adapter/CategoryTabsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/adapter/CategoryTabsAdapter;->getCategorys()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Category;

    .line 105
    .local v1, category:Lbbc/mobile/news/model/Category;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 111
    .local v0, article:Lbbc/mobile/news/model/Article;
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 112
    iget-object v2, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper$1;->this$0:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    iget-object v3, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper$1;->this$0:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v3}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->viewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    .line 114
    :cond_0
    return-void

    .line 107
    .end local v0           #article:Lbbc/mobile/news/model/Article;
    .end local v1           #category:Lbbc/mobile/news/model/Category;
    :cond_1
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v1

    .line 108
    .restart local v1       #category:Lbbc/mobile/news/model/Category;
    invoke-virtual {v1, p3}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .restart local v0       #article:Lbbc/mobile/news/model/Article;
    goto :goto_0
.end method

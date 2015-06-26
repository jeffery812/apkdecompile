.class Lbbc/mobile/news/view/PortraitCategoryWrapper$2;
.super Ljava/lang/Object;
.source "PortraitCategoryWrapper.java"

# interfaces
.implements Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;


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
        "Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;"
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
    iput-object p1, p0, Lbbc/mobile/news/view/PortraitCategoryWrapper$2;->this$0:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lbbc/mobile/news/view/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<*>;"
    const/4 v5, 0x1

    .line 178
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 180
    .local v2, context:Landroid/content/Context;
    instance-of v4, v2, Lbbc/mobile/news/BaseActivity;

    if-eqz v4, :cond_0

    .line 182
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v3

    .line 184
    .local v3, selectedCategory:Lbbc/mobile/news/model/Category;
    if-eqz v3, :cond_0

    instance-of v4, p2, Lbbc/mobile/news/view/GalleryView;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 186
    check-cast v0, Lbbc/mobile/news/BaseActivity;

    .line 187
    .local v0, activity:Lbbc/mobile/news/BaseActivity;
    invoke-virtual {v3, p3}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v1

    .line 189
    .local v1, article:Lbbc/mobile/news/model/Article;
    if-eqz v1, :cond_0

    .line 190
    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->getActionModeProvider()Lbbc/mobile/news/helper/ActionModeProvider;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v1}, Lbbc/mobile/news/helper/ActionModeProvider;->startActionMode(Landroid/app/Activity;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    .line 195
    .end local v0           #activity:Lbbc/mobile/news/BaseActivity;
    .end local v1           #article:Lbbc/mobile/news/model/Article;
    .end local v3           #selectedCategory:Lbbc/mobile/news/model/Category;
    :cond_0
    return v5
.end method

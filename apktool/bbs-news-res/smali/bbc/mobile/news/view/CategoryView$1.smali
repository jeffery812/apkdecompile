.class Lbbc/mobile/news/view/CategoryView$1;
.super Ljava/lang/Object;
.source "CategoryView.java"

# interfaces
.implements Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/CategoryView;
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
.field final synthetic this$0:Lbbc/mobile/news/view/CategoryView;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/CategoryView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/CategoryView$1;->this$0:Lbbc/mobile/news/view/CategoryView;

    .line 271
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
    .line 276
    .local p1, parent:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<*>;"
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$1;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v3}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    .line 278
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 280
    .local v2, context:Landroid/content/Context;
    instance-of v3, v2, Lbbc/mobile/news/BaseActivity;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 282
    check-cast v0, Lbbc/mobile/news/BaseActivity;

    .line 283
    .local v0, activity:Lbbc/mobile/news/BaseActivity;
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$1;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v3}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v3

    invoke-virtual {v3, p3}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v1

    .line 284
    .local v1, article:Lbbc/mobile/news/model/Article;
    if-eqz v1, :cond_3

    .line 285
    invoke-static {}, Lbbc/mobile/news/util/CompatUtil;->isActionModeSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    instance-of v3, p2, Lbbc/mobile/news/view/GalleryView;

    if-eqz v3, :cond_0

    .line 287
    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->getActionModeProvider()Lbbc/mobile/news/helper/ActionModeProvider;

    move-result-object v3

    iget-object v4, p0, Lbbc/mobile/news/view/CategoryView$1;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v4}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v4

    invoke-virtual {v3, v0, v4, v1}, Lbbc/mobile/news/helper/ActionModeProvider;->startActionMode(Landroid/app/Activity;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    .line 296
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 301
    .end local v0           #activity:Lbbc/mobile/news/BaseActivity;
    .end local v1           #article:Lbbc/mobile/news/model/Article;
    .end local v2           #context:Landroid/content/Context;
    :goto_1
    return v3

    .line 290
    .restart local v0       #activity:Lbbc/mobile/news/BaseActivity;
    .restart local v1       #article:Lbbc/mobile/news/model/Article;
    .restart local v2       #context:Landroid/content/Context;
    :cond_1
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$1;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCarouselDialog:Lbbc/mobile/news/dialog/CarouselDialog;
    invoke-static {v3}, Lbbc/mobile/news/view/CategoryView;->access$1(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/dialog/CarouselDialog;

    move-result-object v3

    if-nez v3, :cond_2

    .line 291
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$1;->this$0:Lbbc/mobile/news/view/CategoryView;

    new-instance v4, Lbbc/mobile/news/dialog/CarouselDialog;

    iget-object v5, p0, Lbbc/mobile/news/view/CategoryView$1;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mDialogClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v5}, Lbbc/mobile/news/view/CategoryView;->access$2(Lbbc/mobile/news/view/CategoryView;)Landroid/view/View$OnClickListener;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lbbc/mobile/news/dialog/CarouselDialog;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    #setter for: Lbbc/mobile/news/view/CategoryView;->mCarouselDialog:Lbbc/mobile/news/dialog/CarouselDialog;
    invoke-static {v3, v4}, Lbbc/mobile/news/view/CategoryView;->access$3(Lbbc/mobile/news/view/CategoryView;Lbbc/mobile/news/dialog/CarouselDialog;)V

    .line 293
    :cond_2
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$1;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCarouselDialog:Lbbc/mobile/news/dialog/CarouselDialog;
    invoke-static {v3}, Lbbc/mobile/news/view/CategoryView;->access$1(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/dialog/CarouselDialog;

    move-result-object v3

    invoke-virtual {v3, v1, p3}, Lbbc/mobile/news/dialog/CarouselDialog;->setArticle(Lbbc/mobile/news/model/Article;I)V

    .line 294
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$1;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCarouselDialog:Lbbc/mobile/news/dialog/CarouselDialog;
    invoke-static {v3}, Lbbc/mobile/news/view/CategoryView;->access$1(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/dialog/CarouselDialog;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/dialog/CarouselDialog;->show()V

    goto :goto_0

    .line 301
    .end local v0           #activity:Lbbc/mobile/news/BaseActivity;
    .end local v1           #article:Lbbc/mobile/news/model/Article;
    .end local v2           #context:Landroid/content/Context;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

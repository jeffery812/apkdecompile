.class Lbbc/mobile/news/view/CategoryView$4;
.super Ljava/lang/Object;
.source "CategoryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/CategoryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/CategoryView;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/CategoryView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/CategoryView$4;->this$0:Lbbc/mobile/news/view/CategoryView;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 425
    .local v2, id:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$4;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v3}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v3

    iget-object v4, p0, Lbbc/mobile/news/view/CategoryView$4;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCarouselDialog:Lbbc/mobile/news/dialog/CarouselDialog;
    invoke-static {v4}, Lbbc/mobile/news/view/CategoryView;->access$1(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/dialog/CarouselDialog;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/dialog/CarouselDialog;->getArticlePosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v1

    .line 428
    .local v1, article:Lbbc/mobile/news/model/Article;
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$4;->this$0:Lbbc/mobile/news/view/CategoryView;

    invoke-virtual {v3}, Lbbc/mobile/news/view/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 430
    .local v0, activity:Landroid/app/Activity;
    sget v3, Lbbc/mobile/news/R$id;->share:I

    if-ne v2, v3, :cond_3

    .line 432
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$4;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mShareHelper:Lbbc/mobile/news/util/ShareHelper;
    invoke-static {v3}, Lbbc/mobile/news/view/CategoryView;->access$5(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/util/ShareHelper;

    move-result-object v3

    if-nez v3, :cond_2

    .line 433
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$4;->this$0:Lbbc/mobile/news/view/CategoryView;

    new-instance v4, Lbbc/mobile/news/util/ShareHelper;

    invoke-direct {v4}, Lbbc/mobile/news/util/ShareHelper;-><init>()V

    #setter for: Lbbc/mobile/news/view/CategoryView;->mShareHelper:Lbbc/mobile/news/util/ShareHelper;
    invoke-static {v3, v4}, Lbbc/mobile/news/view/CategoryView;->access$6(Lbbc/mobile/news/view/CategoryView;Lbbc/mobile/news/util/ShareHelper;)V

    .line 435
    :cond_2
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$4;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mShareHelper:Lbbc/mobile/news/util/ShareHelper;
    invoke-static {v3}, Lbbc/mobile/news/view/CategoryView;->access$5(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/util/ShareHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lbbc/mobile/news/util/ShareHelper;->shareArticle(Lbbc/mobile/news/model/Article;Landroid/app/Activity;)V

    goto :goto_0

    .line 436
    :cond_3
    sget v3, Lbbc/mobile/news/R$id;->view:I

    if-ne v2, v3, :cond_0

    .line 437
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$4;->this$0:Lbbc/mobile/news/view/CategoryView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lbbc/mobile/news/view/CategoryView$4;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v5}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lbbc/mobile/news/view/CategoryView;->onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    .line 438
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$4;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCarouselDialog:Lbbc/mobile/news/dialog/CarouselDialog;
    invoke-static {v3}, Lbbc/mobile/news/view/CategoryView;->access$1(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/dialog/CarouselDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 439
    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$4;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCarouselDialog:Lbbc/mobile/news/dialog/CarouselDialog;
    invoke-static {v3}, Lbbc/mobile/news/view/CategoryView;->access$1(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/dialog/CarouselDialog;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/dialog/CarouselDialog;->dismiss()V

    goto :goto_0
.end method

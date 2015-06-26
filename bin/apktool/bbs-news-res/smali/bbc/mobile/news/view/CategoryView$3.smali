.class Lbbc/mobile/news/view/CategoryView$3;
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
    iput-object p1, p0, Lbbc/mobile/news/view/CategoryView$3;->this$0:Lbbc/mobile/news/view/CategoryView;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbbc/mobile/news/R$id;->feedReloadButton:I

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView$3;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mRefreshFeedListener:Lbbc/mobile/news/OnRefreshFeedListener;
    invoke-static {v0}, Lbbc/mobile/news/view/CategoryView;->access$4(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/OnRefreshFeedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView$3;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v0}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView$3;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v0}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Category;->setUpdateFlag(I)V

    .line 344
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView$3;->this$0:Lbbc/mobile/news/view/CategoryView;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView$3;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v1}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/CategoryView;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 345
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryView$3;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mRefreshFeedListener:Lbbc/mobile/news/OnRefreshFeedListener;
    invoke-static {v0}, Lbbc/mobile/news/view/CategoryView;->access$4(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/OnRefreshFeedListener;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView$3;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v1}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/view/CategoryView$3;->this$0:Lbbc/mobile/news/view/CategoryView;

    invoke-virtual {v2}, Lbbc/mobile/news/view/CategoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/model/Category;->getFeed(Landroid/content/Context;)Lbbc/mobile/news/model/Feed;

    move-result-object v1

    invoke-interface {v0, v1}, Lbbc/mobile/news/OnRefreshFeedListener;->refreshFeed(Lbbc/mobile/news/model/Feed;)V

    .line 348
    :cond_0
    return-void
.end method

.class Lbbc/mobile/news/ArticleFragment$3;
.super Ljava/lang/Object;
.source "ArticleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/ArticleFragment;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/ArticleFragment;


# direct methods
.method constructor <init>(Lbbc/mobile/news/ArticleFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/ArticleFragment$3;->this$0:Lbbc/mobile/news/ArticleFragment;

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment$3;->this$0:Lbbc/mobile/news/ArticleFragment;

    #getter for: Lbbc/mobile/news/ArticleFragment;->mIsWatchListen:Z
    invoke-static {v0}, Lbbc/mobile/news/ArticleFragment;->access$0(Lbbc/mobile/news/ArticleFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment$3;->this$0:Lbbc/mobile/news/ArticleFragment;

    #getter for: Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;
    invoke-static {v0}, Lbbc/mobile/news/ArticleFragment;->access$1(Lbbc/mobile/news/ArticleFragment;)Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment$3;->this$0:Lbbc/mobile/news/ArticleFragment;

    #getter for: Lbbc/mobile/news/ArticleFragment;->mAdapter:Lbbc/mobile/news/adapter/ArticlePagerAdapter;
    invoke-static {v0}, Lbbc/mobile/news/ArticleFragment;->access$1(Lbbc/mobile/news/ArticleFragment;)Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->notifyDataSetChanged()V

    .line 680
    :cond_0
    return-void
.end method

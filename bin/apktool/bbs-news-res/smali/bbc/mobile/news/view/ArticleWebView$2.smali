.class Lbbc/mobile/news/view/ArticleWebView$2;
.super Ljava/lang/Object;
.source "ArticleWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/ArticleWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/ArticleWebView;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/ArticleWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/ArticleWebView$2;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 304
    iget-object v3, p0, Lbbc/mobile/news/view/ArticleWebView$2;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    invoke-virtual {v3}, Lbbc/mobile/news/view/ArticleWebView;->getHeight()I

    move-result v0

    .line 305
    .local v0, height:I
    iget-object v3, p0, Lbbc/mobile/news/view/ArticleWebView$2;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    invoke-virtual {v3}, Lbbc/mobile/news/view/ArticleWebView;->getScrollY()I

    move-result v2

    .line 306
    .local v2, scrollY:I
    if-le v2, v0, :cond_0

    iget-object v3, p0, Lbbc/mobile/news/view/ArticleWebView$2;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    #getter for: Lbbc/mobile/news/view/ArticleWebView;->mScrollHeight:I
    invoke-static {v3}, Lbbc/mobile/news/view/ArticleWebView;->access$3(Lbbc/mobile/news/view/ArticleWebView;)I

    move-result v3

    if-le v3, v0, :cond_0

    add-int v3, v2, v0

    iget-object v4, p0, Lbbc/mobile/news/view/ArticleWebView$2;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    #getter for: Lbbc/mobile/news/view/ArticleWebView;->mScrollHeight:I
    invoke-static {v4}, Lbbc/mobile/news/view/ArticleWebView;->access$3(Lbbc/mobile/news/view/ArticleWebView;)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 307
    iget-object v3, p0, Lbbc/mobile/news/view/ArticleWebView$2;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    #getter for: Lbbc/mobile/news/view/ArticleWebView;->mScrollHeight:I
    invoke-static {v3}, Lbbc/mobile/news/view/ArticleWebView;->access$3(Lbbc/mobile/news/view/ArticleWebView;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 308
    .local v1, newScrollY:I
    iget-object v3, p0, Lbbc/mobile/news/view/ArticleWebView$2;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    invoke-virtual {v3, v5, v1}, Lbbc/mobile/news/view/ArticleWebView;->scrollTo(II)V

    .line 310
    .end local v1           #newScrollY:I
    :cond_0
    return-void
.end method

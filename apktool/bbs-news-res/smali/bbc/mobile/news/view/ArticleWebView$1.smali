.class Lbbc/mobile/news/view/ArticleWebView$1;
.super Landroid/webkit/WebViewClient;
.source "ArticleWebView.java"


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
    iput-object p1, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    .line 236
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 256
    const-string v0, "javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    const/4 v1, 0x1

    #setter for: Lbbc/mobile/news/view/ArticleWebView;->mContentLoaded:Z
    invoke-static {v0, v1}, Lbbc/mobile/news/view/ArticleWebView;->access$2(Lbbc/mobile/news/view/ArticleWebView;Z)V

    .line 258
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    iget-object v1, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    invoke-virtual {v1}, Lbbc/mobile/news/view/ArticleWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/helper/TextSizeHelper;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TextSizeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/helper/TextSizeHelper;->getTextSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/ArticleWebView;->onTextSizeChanged(I)V

    .line 261
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    invoke-virtual {v0}, Lbbc/mobile/news/view/ArticleWebView;->hasArticle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    sget-object v0, Lbbc/mobile/news/view/ArticleWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    #getter for: Lbbc/mobile/news/view/ArticleWebView;->mArticle:Lbbc/mobile/news/model/Article;
    invoke-static {v2}, Lbbc/mobile/news/view/ArticleWebView;->access$0(Lbbc/mobile/news/view/ArticleWebView;)Lbbc/mobile/news/model/Article;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    #getter for: Lbbc/mobile/news/view/ArticleWebView;->mIndex:I
    invoke-static {v2}, Lbbc/mobile/news/view/ArticleWebView;->access$1(Lbbc/mobile/news/view/ArticleWebView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 248
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    invoke-virtual {v0}, Lbbc/mobile/news/view/ArticleWebView;->hasArticle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lbbc/mobile/news/view/ArticleWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    #getter for: Lbbc/mobile/news/view/ArticleWebView;->mArticle:Lbbc/mobile/news/model/Article;
    invoke-static {v2}, Lbbc/mobile/news/view/ArticleWebView;->access$0(Lbbc/mobile/news/view/ArticleWebView;)Lbbc/mobile/news/model/Article;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    #getter for: Lbbc/mobile/news/view/ArticleWebView;->mIndex:I
    invoke-static {v2}, Lbbc/mobile/news/view/ArticleWebView;->access$1(Lbbc/mobile/news/view/ArticleWebView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 269
    sget-object v0, Lbbc/mobile/news/view/ArticleWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    invoke-virtual {v2}, Lbbc/mobile/news/view/ArticleWebView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 240
    sget-object v0, Lbbc/mobile/news/view/ArticleWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "shouldOverrideUrlLoading(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$1;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    invoke-virtual {v0}, Lbbc/mobile/news/view/ArticleWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 242
    const/4 v0, 0x1

    return v0
.end method

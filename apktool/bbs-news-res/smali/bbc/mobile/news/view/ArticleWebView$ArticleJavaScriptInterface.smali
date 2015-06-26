.class final Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;
.super Ljava/lang/Object;
.source "ArticleWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/ArticleWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArticleJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/ArticleWebView;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/ArticleWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)Lbbc/mobile/news/view/ArticleWebView;
    .locals 1
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    return-object v0
.end method


# virtual methods
.method public onClickToPlay(Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    new-instance v1, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;

    invoke-direct {v1, p0, p1}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;-><init>(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/ArticleWebView;->post(Ljava/lang/Runnable;)Z

    .line 369
    return-void
.end method

.method public onLoad()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 318
    sget-object v0, Lbbc/mobile/news/view/ArticleWebView;->TAG:Ljava/lang/String;

    const-string v1, "JavaScriptInterface: onLoad() called"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    new-instance v1, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$1;

    invoke-direct {v1, p0}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$1;-><init>(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/ArticleWebView;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method public onOrientationChanged(Ljava/lang/String;I)V
    .locals 3
    .parameter "viewOrientation"
    .parameter "scrollHeight"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 335
    sget-object v0, Lbbc/mobile/news/view/ArticleWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JavaScriptInterface: onOrientationChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") called"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    #setter for: Lbbc/mobile/news/view/ArticleWebView;->mScrollHeight:I
    invoke-static {v0, p2}, Lbbc/mobile/news/view/ArticleWebView;->access$5(Lbbc/mobile/news/view/ArticleWebView;I)V

    .line 337
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    new-instance v1, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$2;

    invoke-direct {v1, p0}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$2;-><init>(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/ArticleWebView;->post(Ljava/lang/Runnable;)Z

    .line 346
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    iget-object v1, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;

    #getter for: Lbbc/mobile/news/view/ArticleWebView;->mUpdateScrollPos:Ljava/lang/Runnable;
    invoke-static {v1}, Lbbc/mobile/news/view/ArticleWebView;->access$6(Lbbc/mobile/news/view/ArticleWebView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/ArticleWebView;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

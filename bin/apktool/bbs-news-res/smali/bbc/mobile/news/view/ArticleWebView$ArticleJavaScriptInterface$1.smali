.class Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$1;
.super Ljava/lang/Object;
.source "ArticleWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->onLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$1;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$1;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    #getter for: Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;
    invoke-static {v0}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->access$0(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)Lbbc/mobile/news/view/ArticleWebView;

    move-result-object v0

    const-string v1, "newsArticle.updateDomBasedOnOrientation();"

    #calls: Lbbc/mobile/news/view/ArticleWebView;->runJavascript(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lbbc/mobile/news/view/ArticleWebView;->access$4(Lbbc/mobile/news/view/ArticleWebView;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$1;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    #getter for: Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;
    invoke-static {v0}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->access$0(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)Lbbc/mobile/news/view/ArticleWebView;

    move-result-object v0

    const-string v1, "newsArticle.showVideo();"

    #calls: Lbbc/mobile/news/view/ArticleWebView;->runJavascript(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lbbc/mobile/news/view/ArticleWebView;->access$4(Lbbc/mobile/news/view/ArticleWebView;Ljava/lang/String;)V

    .line 328
    return-void
.end method

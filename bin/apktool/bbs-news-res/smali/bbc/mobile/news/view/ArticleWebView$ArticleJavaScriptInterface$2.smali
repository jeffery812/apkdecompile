.class Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$2;
.super Ljava/lang/Object;
.source "ArticleWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->onOrientationChanged(Ljava/lang/String;I)V
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
    iput-object p1, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$2;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$2;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    #getter for: Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;
    invoke-static {v0}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->access$0(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)Lbbc/mobile/news/view/ArticleWebView;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/view/ArticleWebView;->invalidate()V

    .line 343
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$2;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    #getter for: Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;
    invoke-static {v0}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->access$0(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)Lbbc/mobile/news/view/ArticleWebView;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/view/ArticleWebView;->requestLayout()V

    .line 344
    return-void
.end method

.class Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;
.super Ljava/lang/Object;
.source "ArticleWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->onClickToPlay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    iput-object p2, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;->val$url:Ljava/lang/String;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 357
    iget-object v1, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    #getter for: Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;
    invoke-static {v1}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->access$0(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)Lbbc/mobile/news/view/ArticleWebView;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/view/ArticleWebView;->hasArticle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    #getter for: Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;
    invoke-static {v1}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->access$0(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)Lbbc/mobile/news/view/ArticleWebView;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/view/ArticleWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    #getter for: Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;
    invoke-static {v2}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->access$0(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)Lbbc/mobile/news/view/ArticleWebView;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/view/ArticleWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    #getter for: Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;
    invoke-static {v3}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->access$0(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)Lbbc/mobile/news/view/ArticleWebView;

    move-result-object v3

    #getter for: Lbbc/mobile/news/view/ArticleWebView;->mArticle:Lbbc/mobile/news/model/Article;
    invoke-static {v3}, Lbbc/mobile/news/view/ArticleWebView;->access$0(Lbbc/mobile/news/view/ArticleWebView;)Lbbc/mobile/news/model/Article;

    move-result-object v3

    iget-object v4, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    #getter for: Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;
    invoke-static {v5}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->access$0(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)Lbbc/mobile/news/view/ArticleWebView;

    move-result-object v5

    #getter for: Lbbc/mobile/news/view/ArticleWebView;->mVideoStatsCounterName:Ljava/lang/String;
    invoke-static {v5}, Lbbc/mobile/news/view/ArticleWebView;->access$7(Lbbc/mobile/news/view/ArticleWebView;)Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-static {v2, v3, v4, v5}, Lbbc/mobile/news/util/IntentFactory;->getVideoActivityIntent(Landroid/content/Context;Lbbc/mobile/news/model/Article;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 360
    iget-object v1, p0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface$3;->this$1:Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    #getter for: Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->this$0:Lbbc/mobile/news/view/ArticleWebView;
    invoke-static {v1}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;->access$0(Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;)Lbbc/mobile/news/view/ArticleWebView;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/view/ArticleWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 361
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 360
    check-cast v0, Landroid/media/AudioManager;

    .line 362
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 363
    const/4 v1, 0x0

    .line 364
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 363
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 367
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

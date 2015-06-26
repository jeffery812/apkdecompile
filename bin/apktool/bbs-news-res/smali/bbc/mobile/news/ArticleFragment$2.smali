.class Lbbc/mobile/news/ArticleFragment$2;
.super Ljava/lang/Object;
.source "ArticleFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/ArticleFragment;->reloadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/ArticleFragment;

.field private final synthetic val$article:Lbbc/mobile/news/model/Article;


# direct methods
.method constructor <init>(Lbbc/mobile/news/ArticleFragment;Lbbc/mobile/news/model/Article;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/ArticleFragment$2;->this$0:Lbbc/mobile/news/ArticleFragment;

    iput-object p2, p0, Lbbc/mobile/news/ArticleFragment$2;->val$article:Lbbc/mobile/news/model/Article;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .prologue
    .line 448
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment$2;->this$0:Lbbc/mobile/news/ArticleFragment;

    iget-object v0, v0, Lbbc/mobile/news/ArticleFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    invoke-virtual {v0}, Lbbc/mobile/news/adverts/AdManager;->getAdHolderView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 449
    iget-object v0, p0, Lbbc/mobile/news/ArticleFragment$2;->this$0:Lbbc/mobile/news/ArticleFragment;

    iget-object v0, v0, Lbbc/mobile/news/ArticleFragment;->mAdManager:Lbbc/mobile/news/adverts/AdManager;

    iget-object v1, p0, Lbbc/mobile/news/ArticleFragment$2;->this$0:Lbbc/mobile/news/ArticleFragment;

    invoke-virtual {v1}, Lbbc/mobile/news/ArticleFragment;->getBaseActivity()Lbbc/mobile/news/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/ArticleFragment$2;->val$article:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2}, Lbbc/mobile/news/model/Article;->getOriginalCategoryName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbbc/mobile/news/ArticleFragment$2;->val$article:Lbbc/mobile/news/model/Article;

    invoke-virtual {v3}, Lbbc/mobile/news/model/Article;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbbc/mobile/news/ArticleFragment$2;->val$article:Lbbc/mobile/news/model/Article;

    invoke-virtual {v4}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lbbc/mobile/news/adverts/AdManager;->requestAdd(Lbbc/mobile/news/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x0

    return v0
.end method

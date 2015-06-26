.class Lbbc/mobile/news/view/CategoryView$2;
.super Ljava/lang/Object;
.source "CategoryView.java"

# interfaces
.implements Lbbc/mobile/news/view/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/CategoryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbbc/mobile/news/view/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/CategoryView;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/CategoryView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/CategoryView$2;->this$0:Lbbc/mobile/news/view/CategoryView;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lbbc/mobile/news/view/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/mobile/news/view/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, parent:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<*>;"
    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView$2;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v1}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView$2;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v1}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v1

    invoke-virtual {v1, p3}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 313
    .local v0, articleToLoad:Lbbc/mobile/news/model/Article;
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbbc/mobile/news/stats/Stats;->logLoadStoryFromCarousel(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;

    .line 314
    iget-object v1, p0, Lbbc/mobile/news/view/CategoryView$2;->this$0:Lbbc/mobile/news/view/CategoryView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lbbc/mobile/news/view/CategoryView$2;->this$0:Lbbc/mobile/news/view/CategoryView;

    #getter for: Lbbc/mobile/news/view/CategoryView;->mCategory:Lbbc/mobile/news/model/Category;
    invoke-static {v3}, Lbbc/mobile/news/view/CategoryView;->access$0(Lbbc/mobile/news/view/CategoryView;)Lbbc/mobile/news/model/Category;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lbbc/mobile/news/view/CategoryView;->onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V

    .line 316
    .end local v0           #articleToLoad:Lbbc/mobile/news/model/Article;
    :cond_0
    return-void
.end method

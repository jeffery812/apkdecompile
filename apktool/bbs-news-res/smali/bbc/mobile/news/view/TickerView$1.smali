.class Lbbc/mobile/news/view/TickerView$1;
.super Ljava/lang/Object;
.source "TickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/TickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/TickerView;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/TickerView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/TickerView$1;->this$0:Lbbc/mobile/news/view/TickerView;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 212
    iget-object v0, p0, Lbbc/mobile/news/view/TickerView$1;->this$0:Lbbc/mobile/news/view/TickerView;

    #getter for: Lbbc/mobile/news/view/TickerView;->mTicker:Lbbc/mobile/news/model/Ticker;
    invoke-static {v0}, Lbbc/mobile/news/view/TickerView;->access$0(Lbbc/mobile/news/view/TickerView;)Lbbc/mobile/news/model/Ticker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lbbc/mobile/news/view/TickerView$1;->this$0:Lbbc/mobile/news/view/TickerView;

    #getter for: Lbbc/mobile/news/view/TickerView;->mTicker:Lbbc/mobile/news/model/Ticker;
    invoke-static {v0}, Lbbc/mobile/news/view/TickerView;->access$0(Lbbc/mobile/news/view/TickerView;)Lbbc/mobile/news/model/Ticker;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/view/TickerView$1;->this$0:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v1}, Lbbc/mobile/news/view/TickerView;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Ticker;->getItem(I)Lbbc/mobile/news/model/TickerItem;

    move-result-object v7

    .line 214
    .local v7, tickerItem:Lbbc/mobile/news/model/TickerItem;
    if-eqz v7, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/view/TickerView$1;->this$0:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v0}, Lbbc/mobile/news/view/TickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7, v0}, Lbbc/mobile/news/model/TickerItem;->isLive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lbbc/mobile/news/cache/ArticleCache;->getInstance()Lbbc/mobile/news/cache/ArticleCache;

    move-result-object v0

    invoke-virtual {v7}, Lbbc/mobile/news/model/TickerItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/cache/ArticleCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Article;

    move-result-object v3

    .line 216
    .local v3, article:Lbbc/mobile/news/model/Article;
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v0

    invoke-virtual {v3}, Lbbc/mobile/news/model/Article;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/cache/CategoryCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Category;

    move-result-object v2

    .line 217
    .local v2, category:Lbbc/mobile/news/model/Category;
    if-eqz v2, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/view/TickerView$1;->this$0:Lbbc/mobile/news/view/TickerView;

    #getter for: Lbbc/mobile/news/view/TickerView;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;
    invoke-static {v0}, Lbbc/mobile/news/view/TickerView;->access$1(Lbbc/mobile/news/view/TickerView;)Lbbc/mobile/news/OnArticleSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v0

    invoke-virtual {v0, v3}, Lbbc/mobile/news/stats/Stats;->logLoadStoryFromTicker(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;

    .line 219
    iget-object v0, p0, Lbbc/mobile/news/view/TickerView$1;->this$0:Lbbc/mobile/news/view/TickerView;

    #getter for: Lbbc/mobile/news/view/TickerView;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;
    invoke-static {v0}, Lbbc/mobile/news/view/TickerView;->access$1(Lbbc/mobile/news/view/TickerView;)Lbbc/mobile/news/OnArticleSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/view/TickerView$1;->this$0:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v1}, Lbbc/mobile/news/view/TickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 220
    const/4 v6, 0x6

    move v5, v4

    .line 219
    invoke-interface/range {v0 .. v6}, Lbbc/mobile/news/OnArticleSelectedListener;->onViewArticle(Landroid/content/Context;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;ZZI)V

    .line 224
    .end local v2           #category:Lbbc/mobile/news/model/Category;
    .end local v3           #article:Lbbc/mobile/news/model/Article;
    .end local v7           #tickerItem:Lbbc/mobile/news/model/TickerItem;
    :cond_0
    return-void
.end method

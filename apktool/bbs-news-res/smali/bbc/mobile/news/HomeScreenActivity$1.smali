.class Lbbc/mobile/news/HomeScreenActivity$1;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Lbbc/mobile/news/OnRefreshFeedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/HomeScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/HomeScreenActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/HomeScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/HomeScreenActivity$1;->this$0:Lbbc/mobile/news/HomeScreenActivity;

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshFeed(Lbbc/mobile/news/model/Feed;)V
    .locals 4
    .parameter "feed"

    .prologue
    const/4 v3, 0x1

    .line 854
    if-eqz p1, :cond_0

    .line 855
    iget-object v0, p0, Lbbc/mobile/news/HomeScreenActivity$1;->this$0:Lbbc/mobile/news/HomeScreenActivity;

    new-array v1, v3, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, p1, v3, v1}, Lbbc/mobile/news/HomeScreenActivity;->requestNewsFeed(Lbbc/mobile/news/model/Feed;I[I)V

    .line 856
    :cond_0
    return-void
.end method

.method public refreshSelectedCategory()V
    .locals 4

    .prologue
    .line 861
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/helper/SelectionProvider;->getSelectedCategory()Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 863
    .local v0, category:Lbbc/mobile/news/model/Category;
    if-eqz v0, :cond_0

    .line 865
    invoke-static {}, Lbbc/mobile/news/cache/FeedCache;->getInstance()Lbbc/mobile/news/cache/FeedCache;

    move-result-object v2

    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbc/mobile/news/cache/FeedCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Feed;

    move-result-object v1

    .line 867
    .local v1, feed:Lbbc/mobile/news/model/Feed;
    if-eqz v1, :cond_0

    .line 869
    invoke-virtual {p0, v1}, Lbbc/mobile/news/HomeScreenActivity$1;->refreshFeed(Lbbc/mobile/news/model/Feed;)V

    .line 872
    .end local v1           #feed:Lbbc/mobile/news/model/Feed;
    :cond_0
    return-void
.end method

.class public Lbbc/mobile/news/adapter/WidgetConfigAdapter;
.super Landroid/widget/BaseAdapter;
.source "WidgetConfigAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static final HAS_STABLE_IDS:Z = false

.field public static final TAG:Ljava/lang/String; = "WidgetConfigAdapter"

.field private static final TYPE_COUNT:I = 0x1


# instance fields
.field private mFeedSelectedListener:Lbbc/mobile/news/view/OnFeedSelectedListener;

.field private mFeeds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Feed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->mFeeds:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Lbbc/mobile/news/view/OnFeedSelectedListener;

    invoke-direct {v0}, Lbbc/mobile/news/view/OnFeedSelectedListener;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->mFeedSelectedListener:Lbbc/mobile/news/view/OnFeedSelectedListener;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    iget-object v0, p0, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lbbc/mobile/news/model/Feed;
    .locals 1
    .parameter "position"

    .prologue
    .line 39
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    iget-object v0, p0, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Feed;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->getItem(I)Lbbc/mobile/news/model/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 45
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 70
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedFeed()Lbbc/mobile/news/model/Feed;
    .locals 1

    .prologue
    .line 95
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    iget-object v0, p0, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->mFeedSelectedListener:Lbbc/mobile/news/view/OnFeedSelectedListener;

    invoke-virtual {v0}, Lbbc/mobile/news/view/OnFeedSelectedListener;->getSelectedFeed()Lbbc/mobile/news/model/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 51
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 52
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$layout;->widget_feed_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    .line 53
    check-cast v2, Lbbc/mobile/news/view/WidgetFeedView;

    iget-object v3, p0, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->mFeedSelectedListener:Lbbc/mobile/news/view/OnFeedSelectedListener;

    invoke-virtual {v2, v3}, Lbbc/mobile/news/view/WidgetFeedView;->setOnSelectedFeedListener(Lbbc/mobile/news/view/OnFeedSelectedListener;)V

    :cond_0
    move-object v1, p2

    .line 56
    check-cast v1, Lbbc/mobile/news/view/WidgetFeedView;

    .line 57
    .local v1, feedView:Lbbc/mobile/news/view/WidgetFeedView;
    invoke-virtual {p0, p1}, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->getItem(I)Lbbc/mobile/news/model/Feed;

    move-result-object v0

    .line 59
    .local v0, feed:Lbbc/mobile/news/model/Feed;
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->mFeedSelectedListener:Lbbc/mobile/news/view/OnFeedSelectedListener;

    invoke-virtual {v3}, Lbbc/mobile/news/view/OnFeedSelectedListener;->getSelectedFeed()Lbbc/mobile/news/model/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/view/WidgetFeedView;->setChecked(Z)V

    .line 61
    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/view/WidgetFeedView;->setTitle(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Lbbc/mobile/news/view/WidgetFeedView;->setFeed(Lbbc/mobile/news/model/Feed;)V

    .line 65
    :cond_1
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 75
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 80
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 85
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    iget-object v0, p0, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultFeed(Lbbc/mobile/news/model/Feed;)V
    .locals 1
    .parameter "defaultFeed"

    .prologue
    .line 90
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    iget-object v0, p0, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->mFeedSelectedListener:Lbbc/mobile/news/view/OnFeedSelectedListener;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/view/OnFeedSelectedListener;->setSelectedFeed(Lbbc/mobile/news/model/Feed;)V

    .line 91
    return-void
.end method

.method public setFeeds(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Feed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lbbc/mobile/news/adapter/WidgetConfigAdapter;,"Lbbc/mobile/news/adapter/WidgetConfigAdapter<TT;>;"
    .local p1, feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    iput-object p1, p0, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->mFeeds:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

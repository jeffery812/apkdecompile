.class public Lbbc/mobile/news/adapter/PersonalisationAdapter;
.super Landroid/widget/BaseAdapter;
.source "PersonalisationAdapter.java"

# interfaces
.implements Lbbc/mobile/news/view/SortableListView$DropListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lbbc/mobile/news/adapter/PersonalisationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public drop(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 38
    iget-object v1, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Feed;

    .line 47
    .local v0, fromData:Lbbc/mobile/news/model/Feed;
    iget-object v1, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    iget-object v1, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lbbc/mobile/news/adapter/PersonalisationAdapter;->notifyDataSetChanged()V

    .line 52
    .end local v0           #fromData:Lbbc/mobile/news/model/Feed;
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lbbc/mobile/news/model/Feed;
    .locals 1
    .parameter "position"

    .prologue
    .line 75
    iget-object v0, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Feed;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lbbc/mobile/news/adapter/PersonalisationAdapter;->getItem(I)Lbbc/mobile/news/model/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 84
    iget-object v0, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Feed;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v0

    int-to-long v0, v0

    .line 87
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 60
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 61
    sget v2, Lbbc/mobile/news/R$layout;->feed_view_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    check-cast v0, Lbbc/mobile/news/view/FeedView;

    .local v0, feedView:Lbbc/mobile/news/view/FeedView;
    move-object p2, v0

    .line 67
    :goto_0
    invoke-virtual {p0, p1}, Lbbc/mobile/news/adapter/PersonalisationAdapter;->getItem(I)Lbbc/mobile/news/model/Feed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/FeedView;->setFeed(Lbbc/mobile/news/model/Feed;)V

    .line 69
    return-object p2

    .end local v0           #feedView:Lbbc/mobile/news/view/FeedView;
    :cond_0
    move-object v0, p2

    .line 64
    check-cast v0, Lbbc/mobile/news/view/FeedView;

    .restart local v0       #feedView:Lbbc/mobile/news/view/FeedView;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 108
    iget-object v0, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Feed;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->isMoveable()Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
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
    .line 31
    .local p1, feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    iput-object p1, p0, Lbbc/mobile/news/adapter/PersonalisationAdapter;->mFeeds:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p0}, Lbbc/mobile/news/adapter/PersonalisationAdapter;->notifyDataSetChanged()V

    .line 33
    return-void
.end method

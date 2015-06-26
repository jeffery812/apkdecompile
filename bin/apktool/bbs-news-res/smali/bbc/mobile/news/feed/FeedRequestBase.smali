.class public abstract Lbbc/mobile/news/feed/FeedRequestBase;
.super Ljava/lang/Object;
.source "FeedRequestBase.java"


# static fields
.field public static final ARTICLE:I = 0x2

.field public static final AV_DIALOG:I = 0x6

.field public static final BOOTSTRAP:I = 0x0

.field public static final CACHED_DATA:I = 0x5

.field public static final CATEGORY:I = 0x1

.field public static final POLICY:I = 0x7

.field public static final TAG:Ljava/lang/String; = null

.field public static final TEXT:I = 0x4

.field public static final TICKER:I = 0x3


# instance fields
.field protected mFeed:Lbbc/mobile/news/model/Feed;

.field protected mHandler:Landroid/os/Handler;

.field private mMultipleRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/feed/FeedRequestBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mReadStrategy:I

.field protected mRequestMethod:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbbc/mobile/news/feed/FeedRequestBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/feed/FeedRequestBase;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V
    .locals 1
    .parameter "context"
    .parameter "feed"
    .parameter "handler"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mMultipleRequests:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mRequestMethod:I

    .line 33
    iput-object p2, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mFeed:Lbbc/mobile/news/model/Feed;

    .line 34
    iput-object p3, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mHandler:Landroid/os/Handler;

    .line 35
    iput p4, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mReadStrategy:I

    .line 36
    iput p5, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mRequestMethod:I

    .line 37
    return-void
.end method

.method public static final getMessageReadStrategy(Landroid/os/Message;)I
    .locals 1
    .parameter "message"

    .prologue
    .line 73
    iget v0, p0, Landroid/os/Message;->arg1:I

    return v0
.end method

.method public static final getMessageRequestMethod(Landroid/os/Message;)I
    .locals 1
    .parameter "message"

    .prologue
    .line 84
    iget v0, p0, Landroid/os/Message;->arg2:I

    return v0
.end method

.method public static final setMessageReadStrategy(Landroid/os/Message;I)Landroid/os/Message;
    .locals 0
    .parameter "message"
    .parameter "strategy"

    .prologue
    .line 66
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 68
    return-object p0
.end method

.method public static final setMessageRequestMethod(Landroid/os/Message;I)Landroid/os/Message;
    .locals 0
    .parameter "message"
    .parameter "requestMethod"

    .prologue
    .line 78
    iput p1, p0, Landroid/os/Message;->arg2:I

    .line 79
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v2, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 118
    .end local p1
    :cond_0
    :goto_0
    return v2

    .line 97
    .restart local p1
    :cond_1
    if-ne p0, p1, :cond_2

    .line 98
    const/4 v2, 0x1

    goto :goto_0

    .line 101
    :cond_2
    instance-of v3, p1, Lbbc/mobile/news/feed/FeedRequestBase;

    if-eqz v3, :cond_3

    .line 103
    check-cast p1, Lbbc/mobile/news/feed/FeedRequestBase;

    .end local p1
    invoke-virtual {p1}, Lbbc/mobile/news/feed/FeedRequestBase;->getFeed()Lbbc/mobile/news/model/Feed;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, feedUri:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mFeed:Lbbc/mobile/news/model/Feed;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v3}, Lbbc/mobile/news/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 106
    iget-object v2, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v2}, Lbbc/mobile/news/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 112
    .end local v0           #feedUri:Ljava/lang/String;
    .restart local p1
    :cond_3
    instance-of v3, p1, Ljava/net/URI;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 114
    check-cast v1, Ljava/net/URI;

    .line 115
    .local v1, objectUri:Ljava/net/URI;
    iget-object v2, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v2}, Lbbc/mobile/news/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public abstract fetch()V
.end method

.method protected abstract getFailedFlag()I
.end method

.method public getFeed()Lbbc/mobile/news/model/Feed;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mFeed:Lbbc/mobile/news/model/Feed;

    return-object v0
.end method

.method public getMultipleRequests()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/feed/FeedRequestBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mMultipleRequests:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract getSucessFlag()I
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMutilpleRequests()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mMultipleRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mFeed:Lbbc/mobile/news/model/Feed;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, uri:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 132
    .end local v0           #uri:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendMessage(ILjava/lang/Object;Landroid/os/Handler;II)V
    .locals 2
    .parameter "result"
    .parameter "object"
    .parameter "handler"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 57
    invoke-virtual {p3, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 59
    .local v0, message:Landroid/os/Message;
    invoke-static {v0, p4}, Lbbc/mobile/news/feed/FeedRequestBase;->setMessageReadStrategy(Landroid/os/Message;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1, p5}, Lbbc/mobile/news/feed/FeedRequestBase;->setMessageRequestMethod(Landroid/os/Message;I)Landroid/os/Message;

    .line 61
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 62
    return-void
.end method

.method protected sendResult(Ljava/lang/Object;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lbbc/mobile/news/feed/FeedRequestBase;->getSucessFlag()I

    move-result v1

    iget-object v3, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mReadStrategy:I

    iget v5, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mRequestMethod:I

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/FeedRequestBase;->sendMessage(ILjava/lang/Object;Landroid/os/Handler;II)V

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/feed/FeedRequestBase;->getFailedFlag()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mReadStrategy:I

    iget v5, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mRequestMethod:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/FeedRequestBase;->sendMessage(ILjava/lang/Object;Landroid/os/Handler;II)V

    goto :goto_0
.end method

.method public setMultipleRequests(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/feed/FeedRequestBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, multipleRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/feed/FeedRequestBase;>;"
    if-eqz p1, :cond_0

    .line 147
    iput-object p1, p0, Lbbc/mobile/news/feed/FeedRequestBase;->mMultipleRequests:Ljava/util/ArrayList;

    .line 149
    :cond_0
    return-void
.end method

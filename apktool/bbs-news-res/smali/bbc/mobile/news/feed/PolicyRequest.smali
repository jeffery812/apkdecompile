.class public Lbbc/mobile/news/feed/PolicyRequest;
.super Lbbc/mobile/news/feed/FeedRequestBase;
.source "PolicyRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V
    .locals 0
    .parameter "context"
    .parameter "feed"
    .parameter "handler"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p5}, Lbbc/mobile/news/feed/FeedRequestBase;-><init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 13
    return-void
.end method


# virtual methods
.method public fetch()V
    .locals 4

    .prologue
    .line 18
    iget-object v1, p0, Lbbc/mobile/news/feed/PolicyRequest;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/webclient/PolicyManager;->loadPolicy(Ljava/lang/String;)Lbbc/mobile/news/model/Policy;

    move-result-object v0

    .line 20
    .local v0, policy:Lbbc/mobile/news/model/Policy;
    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lbbc/mobile/news/model/Policy;->setLastRefreshed(J)V

    .line 23
    :cond_0
    invoke-virtual {p0, v0}, Lbbc/mobile/news/feed/PolicyRequest;->sendResult(Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method protected getFailedFlag()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x11

    return v0
.end method

.method protected getSucessFlag()I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x10

    return v0
.end method

.class public Lbbc/mobile/news/feed/TextRequest;
.super Lbbc/mobile/news/feed/FeedRequestBase;
.source "TextRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V
    .locals 0
    .parameter "context"
    .parameter "feed"
    .parameter "handler"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p5}, Lbbc/mobile/news/feed/FeedRequestBase;-><init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 12
    return-void
.end method


# virtual methods
.method public fetch()V
    .locals 2

    .prologue
    .line 17
    iget-object v0, p0, Lbbc/mobile/news/feed/TextRequest;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lbbc/mobile/news/feed/TextRequest;->mReadStrategy:I

    invoke-static {v0, v1}, Lbbc/mobile/news/webclient/MoiraPlaylistManager;->read(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/feed/TextRequest;->sendResult(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method protected getFailedFlag()I
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0xb

    return v0
.end method

.method protected getSucessFlag()I
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xa

    return v0
.end method

.class public Lbbc/mobile/news/feed/AVDialogRequest;
.super Lbbc/mobile/news/feed/FeedRequestBase;
.source "AVDialogRequest.java"


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
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 17
    const/4 v0, 0x0

    iget v1, p0, Lbbc/mobile/news/feed/AVDialogRequest;->mReadStrategy:I

    new-array v2, v5, [Lbbc/mobile/news/model/Feed;

    const/4 v3, 0x0

    iget-object v4, p0, Lbbc/mobile/news/feed/AVDialogRequest;->mFeed:Lbbc/mobile/news/model/Feed;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v5, v2}, Lbbc/mobile/news/webclient/CategoryManager;->get(Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;IZ[Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/feed/AVDialogRequest;->sendResult(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method protected getFailedFlag()I
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0xd

    return v0
.end method

.method protected getSucessFlag()I
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xd

    return v0
.end method

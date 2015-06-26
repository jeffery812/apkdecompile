.class public Lbbc/mobile/news/feed/ConfigRequest;
.super Lbbc/mobile/news/feed/FeedRequestBase;
.source "ConfigRequest.java"


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
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lbbc/mobile/news/feed/ConfigRequest;->mReadStrategy:I

    invoke-static {v0, v1}, Lbbc/mobile/news/webclient/BootstrapManager;->getPersonalised(Landroid/content/Context;I)Lbbc/mobile/news/model/Config;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/feed/ConfigRequest;->sendResult(Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method protected getFailedFlag()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    return v0
.end method

.method protected getSucessFlag()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.class public Lbbc/mobile/news/feed/CategoryRequest;
.super Lbbc/mobile/news/feed/FeedRequestBase;
.source "CategoryRequest.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbbc/mobile/news/feed/CategoryRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/feed/CategoryRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V
    .locals 0
    .parameter "context"
    .parameter "feed"
    .parameter "handler"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p5}, Lbbc/mobile/news/feed/FeedRequestBase;-><init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 17
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/feed/CategoryRequest;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/feed/CategoryRequest;->sendResult(ILjava/lang/Object;)V

    return-void
.end method

.method private sendResult(ILjava/lang/Object;)V
    .locals 6
    .parameter "result"
    .parameter "data"

    .prologue
    .line 68
    iget-object v3, p0, Lbbc/mobile/news/feed/CategoryRequest;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lbbc/mobile/news/feed/CategoryRequest;->mReadStrategy:I

    iget v5, p0, Lbbc/mobile/news/feed/CategoryRequest;->mRequestMethod:I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/CategoryRequest;->sendMessage(ILjava/lang/Object;Landroid/os/Handler;II)V

    .line 69
    return-void
.end method


# virtual methods
.method public fetch()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 22
    invoke-virtual {p0}, Lbbc/mobile/news/feed/CategoryRequest;->hasMutilpleRequests()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 24
    invoke-virtual {p0}, Lbbc/mobile/news/feed/CategoryRequest;->getMultipleRequests()Ljava/util/ArrayList;

    move-result-object v3

    .line 25
    .local v3, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/feed/FeedRequestBase;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Lbbc/mobile/news/model/Feed;

    .line 27
    .local v2, feeds:[Lbbc/mobile/news/model/Feed;
    const/4 v4, 0x0

    .local v4, x:I
    :goto_0
    array-length v5, v2

    if-lt v4, v5, :cond_0

    .line 31
    new-instance v0, Lbbc/mobile/news/feed/CategoryRequest$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/feed/CategoryRequest$1;-><init>(Lbbc/mobile/news/feed/CategoryRequest;)V

    .line 44
    .local v0, callback:Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;
    iget v5, p0, Lbbc/mobile/news/feed/CategoryRequest;->mReadStrategy:I

    invoke-static {v0, v5, v9, v2}, Lbbc/mobile/news/webclient/CategoryManager;->get(Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;IZ[Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    .line 54
    .end local v0           #callback:Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;
    .end local v2           #feeds:[Lbbc/mobile/news/model/Feed;
    .end local v3           #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/feed/FeedRequestBase;>;"
    .end local v4           #x:I
    :goto_1
    return-void

    .line 28
    .restart local v2       #feeds:[Lbbc/mobile/news/model/Feed;
    .restart local v3       #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/feed/FeedRequestBase;>;"
    .restart local v4       #x:I
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbbc/mobile/news/feed/FeedRequestBase;

    invoke-virtual {v5}, Lbbc/mobile/news/feed/FeedRequestBase;->getFeed()Lbbc/mobile/news/model/Feed;

    move-result-object v5

    aput-object v5, v2, v4

    .line 27
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 47
    .end local v2           #feeds:[Lbbc/mobile/news/model/Feed;
    .end local v3           #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/feed/FeedRequestBase;>;"
    .end local v4           #x:I
    :cond_1
    const/4 v5, 0x0

    iget v6, p0, Lbbc/mobile/news/feed/CategoryRequest;->mReadStrategy:I

    const/4 v7, 0x1

    new-array v7, v7, [Lbbc/mobile/news/model/Feed;

    iget-object v8, p0, Lbbc/mobile/news/feed/CategoryRequest;->mFeed:Lbbc/mobile/news/model/Feed;

    aput-object v8, v7, v9

    invoke-static {v5, v6, v9, v7}, Lbbc/mobile/news/webclient/CategoryManager;->get(Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;IZ[Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v1

    .line 49
    .local v1, category:Lbbc/mobile/news/model/Category;
    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {p0}, Lbbc/mobile/news/feed/CategoryRequest;->getSucessFlag()I

    move-result v5

    invoke-direct {p0, v5, v1}, Lbbc/mobile/news/feed/CategoryRequest;->sendResult(ILjava/lang/Object;)V

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {p0}, Lbbc/mobile/news/feed/CategoryRequest;->getFailedFlag()I

    move-result v5

    iget-object v6, p0, Lbbc/mobile/news/feed/CategoryRequest;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-direct {p0, v5, v6}, Lbbc/mobile/news/feed/CategoryRequest;->sendResult(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method protected getFailedFlag()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x5

    return v0
.end method

.method protected getSucessFlag()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x4

    return v0
.end method

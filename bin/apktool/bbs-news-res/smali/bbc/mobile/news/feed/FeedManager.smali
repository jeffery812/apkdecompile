.class public Lbbc/mobile/news/feed/FeedManager;
.super Lbbc/mobile/news/feed/BackendHandler;
.source "FeedManager.java"


# static fields
.field public static final ARTICLE_LOAD:I = 0x2

.field public static final ARTICLE_REFRESH:I = 0x3

.field public static final ATOM_FEED_FAILED:I = 0x5

.field public static final ATOM_FEED_REQUEST:I = 0x3

.field public static final ATOM_FEED_SUCCESS:I = 0x4

.field public static final AV_DIALOG_FEED_FAILED:I = 0xe

.field public static final AV_DIALOG_FEED_REQUEST:I = 0xc

.field public static final AV_DIALOG_FEED_SUCCESS:I = 0xd

.field public static final CONFIG_FEED_FAILED:I = 0x2

.field public static final CONFIG_FEED_REQUEST:I = 0x0

.field public static final CONFIG_FEED_SUCCESS:I = 0x1

.field private static final GET_FEED:I = 0x2

.field public static final LOAD:I = 0x0

.field public static final NO_REPLY:I = -0x1

.field public static final POLICY_FEED_FAILED:I = 0x11

.field public static final POLICY_FEED_REQUEST:I = 0xf

.field public static final POLICY_FEED_SUCESS:I = 0x10

.field public static final REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FeedManager"

.field public static final TEXT_FEED_FAILED:I = 0xb

.field public static final TEXT_FEED_REQUEST:I = 0x9

.field public static final TEXT_FEED_SUCCESS:I = 0xa

.field public static final TICKER_FEED_FAILED:I = 0x8

.field public static final TICKER_FEED_REQUEST:I = 0x6

.field public static final TICKER_FEED_SUCCESS:I = 0x7


# instance fields
.field private mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/feed/FeedRequestBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lbbc/mobile/news/feed/BackendHandler;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/feed/FeedManager;->mRequests:Ljava/util/ArrayList;

    .line 52
    return-void
.end method


# virtual methods
.method public declared-synchronized addAvDialogFeed(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;II)V
    .locals 7
    .parameter "uri"
    .parameter "context"
    .parameter "handler"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    new-instance v2, Lbbc/mobile/news/model/Feed;

    const-string v0, "AVDialog"

    const/16 v1, -0x9

    invoke-direct {v2, v0, v1, p1}, Lbbc/mobile/news/model/Feed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    .local v2, dialogFeed:Lbbc/mobile/news/model/Feed;
    iget-object v6, p0, Lbbc/mobile/news/feed/FeedManager;->mRequests:Ljava/util/ArrayList;

    new-instance v0, Lbbc/mobile/news/feed/AVDialogRequest;

    move-object v1, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 65
    invoke-direct/range {v0 .. v5}, Lbbc/mobile/news/feed/AVDialogRequest;-><init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 64
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 63
    .end local v2           #dialogFeed:Lbbc/mobile/news/model/Feed;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addCategoryFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V
    .locals 7
    .parameter "context"
    .parameter "feed"
    .parameter "handler"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    const-string v0, "DoubleFeed"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addCategoryFeed... Feed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v6, p0, Lbbc/mobile/news/feed/FeedManager;->mRequests:Ljava/util/ArrayList;

    new-instance v0, Lbbc/mobile/news/feed/CategoryRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 87
    invoke-direct/range {v0 .. v5}, Lbbc/mobile/news/feed/CategoryRequest;-><init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 86
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addCategoryFeeds(Landroid/content/Context;Landroid/os/Handler;IILjava/util/ArrayList;)V
    .locals 9
    .parameter "context"
    .parameter "handler"
    .parameter "readStategy"
    .parameter "requestMethod"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Feed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p5, feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    monitor-enter p0

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v7, categoryRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/feed/FeedRequestBase;>;"
    new-instance v0, Lbbc/mobile/news/feed/CategoryRequest;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbbc/mobile/news/feed/CategoryRequest;-><init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 73
    .local v0, wrapperRequest:Lbbc/mobile/news/feed/CategoryRequest;
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {v0, v7}, Lbbc/mobile/news/feed/CategoryRequest;->setMultipleRequests(Ljava/util/ArrayList;)V

    .line 78
    iget-object v1, p0, Lbbc/mobile/news/feed/FeedManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 73
    :cond_0
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbbc/mobile/news/model/Feed;

    .line 74
    .local v3, feed:Lbbc/mobile/news/model/Feed;
    new-instance v1, Lbbc/mobile/news/feed/CategoryRequest;

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lbbc/mobile/news/feed/CategoryRequest;-><init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v0           #wrapperRequest:Lbbc/mobile/news/feed/CategoryRequest;
    .end local v3           #feed:Lbbc/mobile/news/model/Feed;
    .end local v7           #categoryRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/feed/FeedRequestBase;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addConfigFeed(Landroid/content/Context;Landroid/os/Handler;II)V
    .locals 7
    .parameter "context"
    .parameter "handler"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    new-instance v2, Lbbc/mobile/news/model/Feed;

    const-string v0, "Bootstrap"

    const/16 v1, -0xb

    invoke-static {p1}, Lbbc/mobile/news/util/GlobalSettings;->getBootstrapUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lbbc/mobile/news/model/Feed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .local v2, configFeed:Lbbc/mobile/news/model/Feed;
    iget-object v6, p0, Lbbc/mobile/news/feed/FeedManager;->mRequests:Ljava/util/ArrayList;

    new-instance v0, Lbbc/mobile/news/feed/ConfigRequest;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbbc/mobile/news/feed/ConfigRequest;-><init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 56
    .end local v2           #configFeed:Lbbc/mobile/news/model/Feed;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPolicyFeed(Landroid/content/Context;Landroid/os/Handler;II)V
    .locals 8
    .parameter "context"
    .parameter "handler"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lbbc/mobile/app/NewsApplication;

    .line 101
    .local v6, newsApp:Lbbc/mobile/app/NewsApplication;
    new-instance v2, Lbbc/mobile/news/model/Feed;

    const-string v0, "Policy Feed"

    const/4 v1, -0x8

    invoke-virtual {v6}, Lbbc/mobile/app/NewsApplication;->getPolicyUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lbbc/mobile/news/model/Feed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    .local v2, feed:Lbbc/mobile/news/model/Feed;
    iget-object v7, p0, Lbbc/mobile/news/feed/FeedManager;->mRequests:Ljava/util/ArrayList;

    new-instance v0, Lbbc/mobile/news/feed/PolicyRequest;

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbbc/mobile/news/feed/PolicyRequest;-><init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 99
    .end local v2           #feed:Lbbc/mobile/news/model/Feed;
    .end local v6           #newsApp:Lbbc/mobile/app/NewsApplication;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addTextFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V
    .locals 6
    .parameter "context"
    .parameter "feed"
    .parameter "handler"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    new-instance v0, Lbbc/mobile/news/feed/TextRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lbbc/mobile/news/feed/TextRequest;-><init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 111
    .local v0, textFeed:Lbbc/mobile/news/feed/FeedRequestBase;
    iget-object v1, p0, Lbbc/mobile/news/feed/FeedManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lbbc/mobile/news/feed/FeedManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    monitor-exit p0

    return-void

    .line 108
    .end local v0           #textFeed:Lbbc/mobile/news/feed/FeedRequestBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addTickerFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V
    .locals 7
    .parameter "context"
    .parameter "feed"
    .parameter "handler"
    .parameter "readStrategy"
    .parameter "requestMethod"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lbbc/mobile/news/feed/FeedManager;->mRequests:Ljava/util/ArrayList;

    new-instance v0, Lbbc/mobile/news/feed/TickerRequest;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 94
    invoke-direct/range {v0 .. v5}, Lbbc/mobile/news/feed/TickerRequest;-><init>(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 93
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/feed/FeedManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v0, p0, Lbbc/mobile/news/feed/FeedManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetch()V
    .locals 5

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/feed/FeedManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object v1, p0, Lbbc/mobile/news/feed/FeedManager;->mRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 154
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/feed/FeedRequestBase;

    .line 152
    .local v0, feedRequest:Lbbc/mobile/news/feed/FeedRequestBase;
    iget-object v2, p0, Lbbc/mobile/news/feed/FeedManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lbbc/mobile/news/feed/FeedManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    .end local v0           #feedRequest:Lbbc/mobile/news/feed/FeedRequestBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 164
    const-string v1, "FeedManager"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbbc/mobile/news/feed/FeedManager;->mName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " finalize() called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    .line 119
    const-string v2, "FeedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbbc/mobile/news/feed/FeedManager;->mName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " handleMessage called what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 145
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 126
    :pswitch_0
    const-string v2, "FeedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbbc/mobile/news/feed/FeedManager;->mName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " Started..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :pswitch_1
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbbc/mobile/news/feed/FeedRequestBase;

    .line 134
    .local v1, feedRequest:Lbbc/mobile/news/feed/FeedRequestBase;
    invoke-virtual {v1}, Lbbc/mobile/news/feed/FeedRequestBase;->fetch()V

    .line 135
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 137
    .end local v1           #feedRequest:Lbbc/mobile/news/feed/FeedRequestBase;
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "FeedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR caught when processing feed requests "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "FeedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ERROR caught when processing feed requests "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

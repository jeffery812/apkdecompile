.class Lbbc/mobile/news/BaseActivity$InnerActivityHandler;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerActivityHandler"
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbbc/mobile/news/BaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbbc/mobile/news/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lbbc/mobile/news/BaseActivity$InnerActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 116
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    const/16 v6, 0x66

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    iget-object v3, p0, Lbbc/mobile/news/BaseActivity$InnerActivityHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/BaseActivity;

    .line 122
    .local v0, activity:Lbbc/mobile/news/BaseActivity;
    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-static {p1}, Lbbc/mobile/news/feed/FeedRequestBase;->getMessageReadStrategy(Landroid/os/Message;)I

    move-result v1

    .line 126
    .local v1, readStrategy:I
    invoke-static {p1}, Lbbc/mobile/news/feed/FeedRequestBase;->getMessageRequestMethod(Landroid/os/Message;)I

    move-result v2

    .line 127
    .local v2, requestMethod:I
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 129
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lbbc/mobile/news/model/Config;

    invoke-virtual {v0, v3, v1, v2}, Lbbc/mobile/news/BaseActivity;->onConfigSuccess(Lbbc/mobile/news/model/Config;II)V

    goto :goto_0

    .line 133
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lbbc/mobile/news/model/Config;

    invoke-virtual {v0, v3, v1, v2}, Lbbc/mobile/news/BaseActivity;->onConfigFailed(Lbbc/mobile/news/model/Config;II)V

    goto :goto_0

    .line 137
    :sswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lbbc/mobile/news/model/Category;

    invoke-virtual {v0, v3, v1, v2}, Lbbc/mobile/news/BaseActivity;->onAtomSuccess(Lbbc/mobile/news/model/Category;II)V

    goto :goto_0

    .line 141
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lbbc/mobile/news/model/Feed;

    invoke-virtual {v0, v3, v1, v2}, Lbbc/mobile/news/BaseActivity;->onAtomFailed(Lbbc/mobile/news/model/Feed;II)V

    goto :goto_0

    .line 145
    :sswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lbbc/mobile/news/model/Ticker;

    invoke-virtual {v0, v3, v1, v2}, Lbbc/mobile/news/BaseActivity;->onTickerSuccess(Lbbc/mobile/news/model/Ticker;II)V

    goto :goto_0

    .line 149
    :sswitch_5
    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->onTickerFailed()V

    goto :goto_0

    .line 153
    :sswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lbbc/mobile/news/BaseActivity;->onTextSuccess(Ljava/lang/String;II)V

    goto :goto_0

    .line 157
    :sswitch_7
    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->onTextFailed()V

    goto :goto_0

    .line 161
    :sswitch_8
    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v0, v4, v3}, Lbbc/mobile/news/BaseActivity;->requestTickerFeed(I[I)V

    .line 162
    invoke-virtual {p0, v6}, Lbbc/mobile/news/BaseActivity$InnerActivityHandler;->removeMessages(I)V

    .line 163
    iget-boolean v3, v0, Lbbc/mobile/news/BaseActivity;->mSchedualTicker:Z

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {p0, v6}, Lbbc/mobile/news/BaseActivity$InnerActivityHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    #getter for: Lbbc/mobile/news/BaseActivity;->mTickerUpdateDelay:I
    invoke-static {v0}, Lbbc/mobile/news/BaseActivity;->access$1(Lbbc/mobile/news/BaseActivity;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v3, v4, v5}, Lbbc/mobile/news/BaseActivity$InnerActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 169
    :sswitch_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lbbc/mobile/news/model/AVCategory;

    invoke-virtual {v0, v3, v1, v2}, Lbbc/mobile/news/BaseActivity;->onAvDialogSuccess(Lbbc/mobile/news/model/AVCategory;II)V

    goto :goto_0

    .line 173
    :sswitch_a
    invoke-virtual {v0}, Lbbc/mobile/news/BaseActivity;->onAvDialogFailed()V

    goto :goto_0

    .line 177
    :sswitch_b
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lbbc/mobile/news/model/Policy;

    invoke-virtual {v0, v3, v1, v2}, Lbbc/mobile/news/BaseActivity;->onPolicySuccess(Lbbc/mobile/news/model/Policy;II)V

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_7
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0x10 -> :sswitch_b
        0x66 -> :sswitch_8
    .end sparse-switch
.end method

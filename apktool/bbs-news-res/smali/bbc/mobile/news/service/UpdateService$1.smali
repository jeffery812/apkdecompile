.class Lbbc/mobile/news/service/UpdateService$1;
.super Landroid/os/Handler;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/service/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/service/UpdateService;


# direct methods
.method constructor <init>(Lbbc/mobile/news/service/UpdateService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/service/UpdateService$1;->this$0:Lbbc/mobile/news/service/UpdateService;

    .line 311
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 317
    invoke-static {p1}, Lbbc/mobile/news/feed/FeedRequestBase;->getMessageReadStrategy(Landroid/os/Message;)I

    move-result v0

    .line 318
    .local v0, readStrategy:I
    invoke-static {p1}, Lbbc/mobile/news/feed/FeedRequestBase;->getMessageRequestMethod(Landroid/os/Message;)I

    move-result v1

    .line 320
    .local v1, requestMethod:I
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 365
    :goto_0
    :pswitch_0
    return-void

    .line 323
    :pswitch_1
    iget-object v3, p0, Lbbc/mobile/news/service/UpdateService$1;->this$0:Lbbc/mobile/news/service/UpdateService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lbbc/mobile/news/model/Config;

    invoke-virtual {v3, v2, v0, v1}, Lbbc/mobile/news/service/UpdateService;->onConfigSuccess(Lbbc/mobile/news/model/Config;II)V

    goto :goto_0

    .line 327
    :pswitch_2
    iget-object v3, p0, Lbbc/mobile/news/service/UpdateService$1;->this$0:Lbbc/mobile/news/service/UpdateService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lbbc/mobile/news/model/Config;

    invoke-virtual {v3, v2, v0, v1}, Lbbc/mobile/news/service/UpdateService;->onConfigFailed(Lbbc/mobile/news/model/Config;II)V

    goto :goto_0

    .line 331
    :pswitch_3
    iget-object v3, p0, Lbbc/mobile/news/service/UpdateService$1;->this$0:Lbbc/mobile/news/service/UpdateService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lbbc/mobile/news/model/Category;

    invoke-virtual {v3, v2, v0, v1}, Lbbc/mobile/news/service/UpdateService;->onAtomSuccess(Lbbc/mobile/news/model/Category;II)V

    goto :goto_0

    .line 335
    :pswitch_4
    iget-object v3, p0, Lbbc/mobile/news/service/UpdateService$1;->this$0:Lbbc/mobile/news/service/UpdateService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lbbc/mobile/news/model/Feed;

    invoke-virtual {v3, v2, v0, v1}, Lbbc/mobile/news/service/UpdateService;->onAtomFailed(Lbbc/mobile/news/model/Feed;II)V

    goto :goto_0

    .line 339
    :pswitch_5
    iget-object v3, p0, Lbbc/mobile/news/service/UpdateService$1;->this$0:Lbbc/mobile/news/service/UpdateService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lbbc/mobile/news/model/Ticker;

    invoke-virtual {v3, v2, v0, v1}, Lbbc/mobile/news/service/UpdateService;->onTickerSuccess(Lbbc/mobile/news/model/Ticker;II)V

    goto :goto_0

    .line 343
    :pswitch_6
    iget-object v2, p0, Lbbc/mobile/news/service/UpdateService$1;->this$0:Lbbc/mobile/news/service/UpdateService;

    invoke-virtual {v2}, Lbbc/mobile/news/service/UpdateService;->onTickerFailed()V

    goto :goto_0

    .line 347
    :pswitch_7
    iget-object v3, p0, Lbbc/mobile/news/service/UpdateService$1;->this$0:Lbbc/mobile/news/service/UpdateService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v1}, Lbbc/mobile/news/service/UpdateService;->onTextSuccess(Ljava/lang/String;II)V

    goto :goto_0

    .line 351
    :pswitch_8
    iget-object v2, p0, Lbbc/mobile/news/service/UpdateService$1;->this$0:Lbbc/mobile/news/service/UpdateService;

    invoke-virtual {v2}, Lbbc/mobile/news/service/UpdateService;->onTextFailed()V

    goto :goto_0

    .line 355
    :pswitch_9
    iget-object v3, p0, Lbbc/mobile/news/service/UpdateService$1;->this$0:Lbbc/mobile/news/service/UpdateService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lbbc/mobile/news/model/AVCategory;

    invoke-virtual {v3, v2, v0, v1}, Lbbc/mobile/news/service/UpdateService;->onAvDialogSuccess(Lbbc/mobile/news/model/AVCategory;II)V

    goto :goto_0

    .line 359
    :pswitch_a
    iget-object v2, p0, Lbbc/mobile/news/service/UpdateService$1;->this$0:Lbbc/mobile/news/service/UpdateService;

    invoke-virtual {v2}, Lbbc/mobile/news/service/UpdateService;->onAvDialogFailed()V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

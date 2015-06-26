.class Lbbc/mobile/news/view/NewsImageView$1;
.super Landroid/os/Handler;
.source "NewsImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/NewsImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lbbc/mobile/news/view/NewsImageView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbbc/mobile/news/view/NewsImageView;

    .line 128
    invoke-static {}, Lbbc/mobile/news/view/NewsImageView;->access$0()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/NewsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lbbc/mobile/news/view/NewsImageView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbbc/mobile/news/view/NewsImageView;

    .line 135
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lbbc/mobile/news/view/NewsImageView;

    #getter for: Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lbbc/mobile/news/view/NewsImageView;->access$1(Lbbc/mobile/news/view/NewsImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/NewsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

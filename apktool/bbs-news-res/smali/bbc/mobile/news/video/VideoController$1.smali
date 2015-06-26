.class Lbbc/mobile/news/video/VideoController$1;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/video/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/video/VideoController;


# direct methods
.method constructor <init>(Lbbc/mobile/news/video/VideoController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 140
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v5, :cond_5

    .line 141
    iget-object v7, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    iget-object v8, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;
    invoke-static {v8}, Lbbc/mobile/news/video/VideoController;->access$0(Lbbc/mobile/news/video/VideoController;)Landroid/media/MediaPlayer;

    move-result-object v8

    #calls: Lbbc/mobile/news/video/VideoController;->updateElapsed(Landroid/media/MediaPlayer;)I
    invoke-static {v7, v8}, Lbbc/mobile/news/video/VideoController;->access$1(Lbbc/mobile/news/video/VideoController;Landroid/media/MediaPlayer;)I

    move-result v2

    .line 142
    .local v2, pos:I
    iget-object v7, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mDragging:Z
    invoke-static {v7}, Lbbc/mobile/news/video/VideoController;->access$2(Lbbc/mobile/news/video/VideoController;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 143
    iget-object v7, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mLoading:Landroid/widget/ProgressBar;
    invoke-static {v7}, Lbbc/mobile/news/video/VideoController;->access$3(Lbbc/mobile/news/video/VideoController;)Landroid/widget/ProgressBar;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mUpdatesAfterSeek:I
    invoke-static {v7}, Lbbc/mobile/news/video/VideoController;->access$4(Lbbc/mobile/news/video/VideoController;)I

    move-result v7

    if-gtz v7, :cond_0

    .line 144
    iget-object v7, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mLastPos:I
    invoke-static {v7}, Lbbc/mobile/news/video/VideoController;->access$5(Lbbc/mobile/news/video/VideoController;)I

    move-result v7

    sub-int v7, v2, v7

    add-int/lit16 v1, v7, -0x1f4

    .line 145
    .local v1, pDelta:I
    invoke-static {}, Lbbc/mobile/news/video/VideoController;->access$6()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Progress delta: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lbbc/mobile/news/helper/BBCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/16 v7, -0x20d

    if-lt v1, v7, :cond_3

    const/16 v7, 0x20d

    if-gt v1, v7, :cond_3

    move v3, v4

    .line 147
    .local v3, showLoading:Z
    :goto_0
    iget-object v7, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mLoading:Landroid/widget/ProgressBar;
    invoke-static {v7}, Lbbc/mobile/news/video/VideoController;->access$3(Lbbc/mobile/news/video/VideoController;)Landroid/widget/ProgressBar;

    move-result-object v7

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    .end local v1           #pDelta:I
    .end local v3           #showLoading:Z
    :cond_0
    iget-object v4, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mUpdatesAfterSeek:I
    invoke-static {v4}, Lbbc/mobile/news/video/VideoController;->access$4(Lbbc/mobile/news/video/VideoController;)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mUpdatesAfterSeek:I
    invoke-static {v4}, Lbbc/mobile/news/video/VideoController;->access$4(Lbbc/mobile/news/video/VideoController;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    #setter for: Lbbc/mobile/news/video/VideoController;->mUpdatesAfterSeek:I
    invoke-static {v4, v7}, Lbbc/mobile/news/video/VideoController;->access$7(Lbbc/mobile/news/video/VideoController;I)V

    .line 150
    :cond_1
    iget-object v4, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #setter for: Lbbc/mobile/news/video/VideoController;->mLastPos:I
    invoke-static {v4, v2}, Lbbc/mobile/news/video/VideoController;->access$8(Lbbc/mobile/news/video/VideoController;I)V

    .line 152
    :try_start_0
    iget-object v4, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mCurrentPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lbbc/mobile/news/video/VideoController;->access$0(Lbbc/mobile/news/video/VideoController;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ltz v2, :cond_2

    .line 153
    iget-object v4, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lbbc/mobile/news/video/VideoController;->access$9(Lbbc/mobile/news/video/VideoController;)Landroid/os/Handler;

    move-result-object v4

    iget-object v7, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lbbc/mobile/news/video/VideoController;->access$9(Lbbc/mobile/news/video/VideoController;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 154
    rem-int/lit16 v8, v2, 0x1f4

    rsub-int v8, v8, 0x1f4

    int-to-long v8, v8

    .line 153
    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v2           #pos:I
    :cond_2
    :goto_2
    return v5

    .restart local v1       #pDelta:I
    .restart local v2       #pos:I
    :cond_3
    move v3, v5

    .line 146
    goto :goto_0

    .restart local v3       #showLoading:Z
    :cond_4
    move v4, v6

    .line 147
    goto :goto_1

    .line 157
    .end local v1           #pDelta:I
    .end local v3           #showLoading:Z
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-static {}, Lbbc/mobile/news/video/VideoController;->access$6()Ljava/lang/String;

    move-result-object v4

    const-string v7, "IllegalStateException whilst updating progress."

    invoke-static {v4, v7, v0}, Lbbc/mobile/news/helper/BBCLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    iget-object v4, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    #getter for: Lbbc/mobile/news/video/VideoController;->mLoading:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lbbc/mobile/news/video/VideoController;->access$3(Lbbc/mobile/news/video/VideoController;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v4, p0, Lbbc/mobile/news/video/VideoController$1;->this$0:Lbbc/mobile/news/video/VideoController;

    invoke-virtual {v4}, Lbbc/mobile/news/video/VideoController;->removeUpdates()V

    goto :goto_2

    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v2           #pos:I
    :cond_5
    move v5, v4

    .line 165
    goto :goto_2
.end method

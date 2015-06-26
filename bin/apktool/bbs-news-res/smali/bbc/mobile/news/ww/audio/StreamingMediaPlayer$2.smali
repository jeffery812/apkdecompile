.class Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;
.super Ljava/lang/Object;
.source "StreamingMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->testMediaBuffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;


# direct methods
.method constructor <init>(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$3(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_2

    .line 237
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->totalKbRead:I
    invoke-static {v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$6(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)I

    move-result v1

    const/16 v2, 0x78

    if-lt v1, v2, :cond_1

    .line 239
    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #calls: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->startMediaPlayer()V
    invoke-static {v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$7(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error copying buffered conent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 244
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$2()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Don\'t create player, not enough data : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->totalKbRead:I
    invoke-static {v3}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$6(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_2
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->isInterrupted:Z
    invoke-static {v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$8(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$3(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 250
    :try_start_1
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$3(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iget-object v2, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$3(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x3e8

    if-gt v1, v2, :cond_0

    .line 254
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$2;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #calls: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->transferBufferToMediaPlayer()V
    invoke-static {v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$9(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-static {}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$2()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Strange, ex in testMediaBuffer : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$2()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Strange, mediaPlayer null in testMediaBuffer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;
.super Ljava/lang/Object;
.source "StreamingMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->startStreaming(Ljava/lang/String;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

.field private final synthetic val$mediaUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    iput-object p2, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->val$mediaUrl:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    const/4 v2, 0x0

    #setter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->isInterrupted:Z
    invoke-static {v1, v2}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$0(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;Z)V

    .line 100
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    const/4 v2, 0x0

    #setter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->failureCounter:I
    invoke-static {v1, v2}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$1(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;I)V

    .line 101
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    iget-object v2, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->val$mediaUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->downloadAudioIncrement(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, ex:Ljava/io/IOException;
    invoke-static {}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$2()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to init the player : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to initialize the MediaPlayer for fileUrl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->val$mediaUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$3(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$3(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 108
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$4(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v1}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$4(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, -0x3421

    iget-object v4, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$1;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->failureCounter:I
    invoke-static {v4}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$5(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0
.end method

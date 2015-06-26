.class Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$3;
.super Ljava/lang/Object;
.source "StreamingMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->createMediaPlayer(Ljava/io/File;)Landroid/media/MediaPlayer;
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
    iput-object p1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$3;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in MediaPlayer: ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with extra ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$3;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$4(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$3;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$4(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 335
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.class Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$5;
.super Ljava/lang/Object;
.source "StreamingMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->fireDataFullyLoaded()V
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
    iput-object p1, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$5;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$5;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #calls: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->transferBufferToMediaPlayer()V
    invoke-static {v0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$9(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)V

    .line 442
    iget-object v0, p0, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer$5;->this$0:Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;

    #getter for: Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->downloadingMediaFile:Ljava/io/File;
    invoke-static {v0}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$10(Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 444
    invoke-static {}, Lbbc/mobile/news/ww/audio/StreamingMediaPlayer;->access$2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Audio fully loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void
.end method

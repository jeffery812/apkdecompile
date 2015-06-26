.class Lbbc/mobile/news/video/VideoFragment$3;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/video/VideoFragment;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/video/VideoFragment;


# direct methods
.method constructor <init>(Lbbc/mobile/news/video/VideoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/video/VideoFragment$3;->this$0:Lbbc/mobile/news/video/VideoFragment;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment$3;->this$0:Lbbc/mobile/news/video/VideoFragment;

    #getter for: Lbbc/mobile/news/video/VideoFragment;->mVideoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoFragment;->access$2(Lbbc/mobile/news/video/VideoFragment;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    goto :goto_0
.end method

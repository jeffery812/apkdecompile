.class Lbbc/mobile/news/video/VideoFragment$2;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/video/VideoFragment;
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
    iput-object p1, p0, Lbbc/mobile/news/video/VideoFragment$2;->this$0:Lbbc/mobile/news/video/VideoFragment;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 384
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment$2;->this$0:Lbbc/mobile/news/video/VideoFragment;

    invoke-virtual {v0}, Lbbc/mobile/news/video/VideoFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment$2;->this$0:Lbbc/mobile/news/video/VideoFragment;

    #getter for: Lbbc/mobile/news/video/VideoFragment;->mPlayingContent:Z
    invoke-static {v0}, Lbbc/mobile/news/video/VideoFragment;->access$1(Lbbc/mobile/news/video/VideoFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment$2;->this$0:Lbbc/mobile/news/video/VideoFragment;

    #calls: Lbbc/mobile/news/video/VideoFragment;->playContent()V
    invoke-static {v0}, Lbbc/mobile/news/video/VideoFragment;->access$0(Lbbc/mobile/news/video/VideoFragment;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment$2;->this$0:Lbbc/mobile/news/video/VideoFragment;

    invoke-virtual {v0}, Lbbc/mobile/news/video/VideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.class Lbbc/mobile/news/service/AudioService$1;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/service/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDucking:Z

.field final synthetic this$0:Lbbc/mobile/news/service/AudioService;


# direct methods
.method constructor <init>(Lbbc/mobile/news/service/AudioService;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/service/AudioService$1;->mDucking:Z

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 7
    .parameter "focusChange"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const v4, 0x3dcccccd

    .line 425
    invoke-static {}, Lbbc/mobile/news/service/AudioService;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAudioFocusChange: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    packed-switch p1, :pswitch_data_0

    .line 465
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 429
    :pswitch_1
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    invoke-virtual {v1}, Lbbc/mobile/news/service/AudioService;->stop()V

    goto :goto_0

    .line 433
    :pswitch_2
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/service/AudioService;->access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/service/AudioService;->access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/service/AudioService;->access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 439
    :pswitch_3
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/service/AudioService;->access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/service/AudioService;->access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-static {}, Lbbc/mobile/news/service/AudioService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting volume to 0.20"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/service/AudioService;->access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 442
    iput-boolean v6, p0, Lbbc/mobile/news/service/AudioService$1;->mDucking:Z

    goto :goto_0

    .line 447
    :pswitch_4
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/service/AudioService;->access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 448
    iget-boolean v1, p0, Lbbc/mobile/news/service/AudioService$1;->mDucking:Z

    if-eqz v1, :cond_2

    .line 449
    invoke-static {}, Lbbc/mobile/news/service/AudioService;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting volume to 1.0"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/service/AudioService;->access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 462
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbbc/mobile/news/service/AudioService$1;->mDucking:Z

    goto :goto_0

    .line 452
    :cond_2
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/service/AudioService;->access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 454
    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/service/AudioService;->access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lbbc/mobile/news/service/AudioService;->access$1(Lbbc/mobile/news/service/AudioService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 458
    iget-object v1, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    iget-object v2, p0, Lbbc/mobile/news/service/AudioService$1;->this$0:Lbbc/mobile/news/service/AudioService;

    #getter for: Lbbc/mobile/news/service/AudioService;->mSelectionProvider:Lbbc/mobile/news/service/AudioService$AudioStateProvider;
    invoke-static {v2}, Lbbc/mobile/news/service/AudioService;->access$2(Lbbc/mobile/news/service/AudioService;)Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getPlayingArticle()Lbbc/mobile/news/model/Article;

    move-result-object v2

    #calls: Lbbc/mobile/news/service/AudioService;->onStop(Lbbc/mobile/news/model/Article;Z)V
    invoke-static {v1, v2, v6}, Lbbc/mobile/news/service/AudioService;->access$3(Lbbc/mobile/news/service/AudioService;Lbbc/mobile/news/model/Article;Z)V

    goto :goto_1

    .line 427
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

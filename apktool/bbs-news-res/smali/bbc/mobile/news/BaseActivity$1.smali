.class Lbbc/mobile/news/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/BaseActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/BaseActivity$1;->this$0:Lbbc/mobile/news/BaseActivity;

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 665
    invoke-static {}, Lbbc/mobile/news/BaseActivity;->access$0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onServiceConnected()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 666
    check-cast v0, Lbbc/mobile/news/service/AudioService$AudioBinder;

    .line 667
    .local v0, audioBinder:Lbbc/mobile/news/service/AudioService$AudioBinder;
    iget-object v1, p0, Lbbc/mobile/news/BaseActivity$1;->this$0:Lbbc/mobile/news/BaseActivity;

    invoke-virtual {v0}, Lbbc/mobile/news/service/AudioService$AudioBinder;->getAudioControl()Lbbc/mobile/news/service/AudioControl;

    move-result-object v2

    iput-object v2, v1, Lbbc/mobile/news/BaseActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    .line 668
    iget-object v1, p0, Lbbc/mobile/news/BaseActivity$1;->this$0:Lbbc/mobile/news/BaseActivity;

    iget-object v2, p0, Lbbc/mobile/news/BaseActivity$1;->this$0:Lbbc/mobile/news/BaseActivity;

    iget-object v2, v2, Lbbc/mobile/news/BaseActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    iget-object v3, p0, Lbbc/mobile/news/BaseActivity$1;->this$0:Lbbc/mobile/news/BaseActivity;

    iget-object v3, v3, Lbbc/mobile/news/BaseActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    invoke-interface {v3}, Lbbc/mobile/news/service/AudioControl;->getCallback()Lbbc/mobile/news/service/AudioCallback;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbbc/mobile/news/BaseActivity;->setAudioControl(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V

    .line 669
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 674
    invoke-static {}, Lbbc/mobile/news/BaseActivity;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity$1;->this$0:Lbbc/mobile/news/BaseActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lbbc/mobile/news/BaseActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    .line 676
    iget-object v0, p0, Lbbc/mobile/news/BaseActivity$1;->this$0:Lbbc/mobile/news/BaseActivity;

    iget-object v1, p0, Lbbc/mobile/news/BaseActivity$1;->this$0:Lbbc/mobile/news/BaseActivity;

    iget-object v1, v1, Lbbc/mobile/news/BaseActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    iget-object v2, p0, Lbbc/mobile/news/BaseActivity$1;->this$0:Lbbc/mobile/news/BaseActivity;

    iget-object v2, v2, Lbbc/mobile/news/BaseActivity;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    invoke-interface {v2}, Lbbc/mobile/news/service/AudioControl;->getCallback()Lbbc/mobile/news/service/AudioCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbbc/mobile/news/BaseActivity;->setAudioControl(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V

    .line 677
    return-void
.end method

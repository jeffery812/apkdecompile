.class final Lio/boxcar/push/BXCFacade$6;
.super Landroid/content/BroadcastReceiver;
.source "BXCFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/boxcar/push/BXCFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/BXCFacade;


# direct methods
.method constructor <init>(Lio/boxcar/push/BXCFacade;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$6;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handle Messages receiver: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 633
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/model/BXCNotification;

    .line 637
    .local v0, notification:Lio/boxcar/push/model/BXCNotification;
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$6;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1, v0}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Lio/boxcar/push/model/BXCNotification;)V

    .line 639
    invoke-static {}, Lio/boxcar/push/BXCFacade;->a()Lio/boxcar/push/BXCFacade;

    move-result-object v1

    invoke-static {v1}, Lio/boxcar/push/BXCFacade;->h(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCConfig;

    move-result-object v1

    .line 640
    invoke-virtual {v1}, Lio/boxcar/push/BXCConfig;->getNotificationStrategy()Lio/boxcar/push/ui/BXCNotificationStrategy;

    move-result-object v1

    .line 642
    invoke-interface {v1, p1, v0}, Lio/boxcar/push/ui/BXCNotificationStrategy;->handleNotification(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)V

    .line 644
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$6;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/boxcar/push/BXCCallback;->notificationReceived(Lio/boxcar/push/model/BXCNotification;)V
    :try_end_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v1

    goto :goto_0
.end method

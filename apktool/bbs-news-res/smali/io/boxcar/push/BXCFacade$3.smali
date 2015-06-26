.class final Lio/boxcar/push/BXCFacade$3;
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
    .line 567
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$3;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 570
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "registrationId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, registrationId:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received intent from GCM: id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was unregistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$3;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1}, Lio/boxcar/push/BXCFacade;->b(Lio/boxcar/push/BXCFacade;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$3;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1, v3}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$3;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1, p1}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Landroid/content/Context;)V

    .line 583
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$3;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1, v3}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Ljava/lang/String;)V

    goto :goto_0
.end method

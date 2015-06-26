.class final Lio/boxcar/push/BXCFacade$4;
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
    .line 587
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$4;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 590
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "errorId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, errorId:Ljava/lang/String;
    const-string v3, "BXCF"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Received intent from GCM: ERROR. Id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$4;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->c(Lio/boxcar/push/BXCFacade;)Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, registrationId:Ljava/lang/String;
    new-instance v1, Lio/boxcar/push/BXCException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received intent from GCM: ERROR. Id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    .line 599
    .local v1, exception:Ljava/lang/Exception;
    if-nez v2, :cond_0

    .line 600
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$4;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v3

    invoke-interface {v3, v1}, Lio/boxcar/push/BXCCallback;->registrationFailed(Ljava/lang/Throwable;)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade$4;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v3}, Lio/boxcar/push/BXCFacade;->d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;

    move-result-object v3

    invoke-interface {v3, v1}, Lio/boxcar/push/BXCCallback;->unregisterFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

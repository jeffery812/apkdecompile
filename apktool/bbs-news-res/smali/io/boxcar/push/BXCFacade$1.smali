.class final Lio/boxcar/push/BXCFacade$1;
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
    .line 552
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$1;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 555
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "registrationId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, registrationId:Ljava/lang/String;
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$1;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1, v0}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Ljava/lang/String;)V

    .line 561
    iget-object v1, p0, Lio/boxcar/push/BXCFacade$1;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v1}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;)V

    .line 563
    return-void
.end method

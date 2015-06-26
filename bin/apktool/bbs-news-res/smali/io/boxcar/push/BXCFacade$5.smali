.class final Lio/boxcar/push/BXCFacade$5;
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
    .line 608
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$5;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 611
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$5;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->e(Lio/boxcar/push/BXCFacade;)Ljava/util/Date;

    move-result-object v0

    .line 613
    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/boxcar/push/BXCFacade$5;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->b(Lio/boxcar/push/BXCFacade;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 615
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$5;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->f(Lio/boxcar/push/BXCFacade;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$5;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->g(Lio/boxcar/push/BXCFacade;)V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$5;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0, p1}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Landroid/content/Context;)V

    goto :goto_0
.end method

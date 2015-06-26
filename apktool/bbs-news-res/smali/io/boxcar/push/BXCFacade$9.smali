.class final Lio/boxcar/push/BXCFacade$9;
.super Ljava/lang/Object;
.source "BXCFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/boxcar/push/BXCFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lio/boxcar/push/BXCFacade;


# direct methods
.method constructor <init>(Lio/boxcar/push/BXCFacade;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1550
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$9;->b:Lio/boxcar/push/BXCFacade;

    iput-object p2, p0, Lio/boxcar/push/BXCFacade$9;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1554
    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$9;->b:Lio/boxcar/push/BXCFacade;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCFacade;Z)Z

    .line 1555
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$9;->b:Lio/boxcar/push/BXCFacade;

    iget-object v1, p0, Lio/boxcar/push/BXCFacade$9;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/boxcar/push/BXCFacade;->b(Lio/boxcar/push/BXCFacade;Landroid/content/Context;)V
    :try_end_0
    .catch Lio/boxcar/push/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    :goto_0
    return-void

    .line 1557
    :catch_0
    move-exception v0

    goto :goto_0
.end method

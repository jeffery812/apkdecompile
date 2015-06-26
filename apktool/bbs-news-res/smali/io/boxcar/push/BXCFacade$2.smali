.class final Lio/boxcar/push/BXCFacade$2;
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
.field final synthetic a:Lio/boxcar/push/BXCFacade;


# direct methods
.method constructor <init>(Lio/boxcar/push/BXCFacade;)V
    .locals 0
    .parameter

    .prologue
    .line 1593
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$2;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1595
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$2;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {v0}, Lio/boxcar/push/BXCFacade;->o(Lio/boxcar/push/BXCFacade;)V

    .line 1596
    return-void
.end method

.class final Lio/boxcar/push/BXCFacade$7$4;
.super Ljava/lang/Object;
.source "BXCFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/BXCFacade$7;->registrationSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/BXCCallback;

.field final synthetic b:Lio/boxcar/push/BXCFacade$7;


# direct methods
.method constructor <init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$7$4;->b:Lio/boxcar/push/BXCFacade$7;

    iput-object p2, p0, Lio/boxcar/push/BXCFacade$7$4;->a:Lio/boxcar/push/BXCCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$7$4;->a:Lio/boxcar/push/BXCCallback;

    invoke-interface {v0}, Lio/boxcar/push/BXCCallback;->registrationSuccess()V

    .line 678
    return-void
.end method

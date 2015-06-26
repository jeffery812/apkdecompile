.class final Lio/boxcar/push/BXCFacade$7$6;
.super Ljava/lang/Object;
.source "BXCFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/BXCFacade$7;->trackNotificationSuccess(Lio/boxcar/push/model/BXCNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/BXCCallback;

.field final synthetic b:Lio/boxcar/push/model/BXCNotification;

.field final synthetic c:Lio/boxcar/push/BXCFacade$7;


# direct methods
.method constructor <init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;Lio/boxcar/push/model/BXCNotification;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$7$6;->c:Lio/boxcar/push/BXCFacade$7;

    iput-object p2, p0, Lio/boxcar/push/BXCFacade$7$6;->a:Lio/boxcar/push/BXCCallback;

    iput-object p3, p0, Lio/boxcar/push/BXCFacade$7$6;->b:Lio/boxcar/push/model/BXCNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$7$6;->a:Lio/boxcar/push/BXCCallback;

    iget-object v1, p0, Lio/boxcar/push/BXCFacade$7$6;->b:Lio/boxcar/push/model/BXCNotification;

    invoke-interface {v0, v1}, Lio/boxcar/push/BXCCallback;->trackNotificationSuccess(Lio/boxcar/push/model/BXCNotification;)V

    .line 712
    return-void
.end method

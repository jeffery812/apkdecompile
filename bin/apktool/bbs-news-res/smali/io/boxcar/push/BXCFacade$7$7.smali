.class final Lio/boxcar/push/BXCFacade$7$7;
.super Ljava/lang/Object;
.source "BXCFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/BXCFacade$7;->trackNotificationFailed(Lio/boxcar/push/model/BXCNotification;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/BXCCallback;

.field final synthetic b:Lio/boxcar/push/model/BXCNotification;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lio/boxcar/push/BXCFacade$7;


# direct methods
.method constructor <init>(Lio/boxcar/push/BXCFacade$7;Lio/boxcar/push/BXCCallback;Lio/boxcar/push/model/BXCNotification;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 728
    iput-object p1, p0, Lio/boxcar/push/BXCFacade$7$7;->d:Lio/boxcar/push/BXCFacade$7;

    iput-object p2, p0, Lio/boxcar/push/BXCFacade$7$7;->a:Lio/boxcar/push/BXCCallback;

    iput-object p3, p0, Lio/boxcar/push/BXCFacade$7$7;->b:Lio/boxcar/push/model/BXCNotification;

    iput-object p4, p0, Lio/boxcar/push/BXCFacade$7$7;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 730
    iget-object v0, p0, Lio/boxcar/push/BXCFacade$7$7;->a:Lio/boxcar/push/BXCCallback;

    iget-object v1, p0, Lio/boxcar/push/BXCFacade$7$7;->b:Lio/boxcar/push/model/BXCNotification;

    iget-object v2, p0, Lio/boxcar/push/BXCFacade$7$7;->c:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lio/boxcar/push/BXCCallback;->trackNotificationFailed(Lio/boxcar/push/model/BXCNotification;Ljava/lang/Throwable;)V

    .line 731
    return-void
.end method

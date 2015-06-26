.class Lio/boxcar/push/rest/BXCRESTServiceProxy$7;
.super Landroid/os/ResultReceiver;
.source "BXCRESTServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/rest/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/boxcar/push/rest/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/rest/a$a;

.field final synthetic b:Lio/boxcar/push/rest/a;


# direct methods
.method constructor <init>(Lio/boxcar/push/rest/a;Landroid/os/Handler;Lio/boxcar/push/rest/a$a;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lio/boxcar/push/rest/BXCRESTServiceProxy$7;->b:Lio/boxcar/push/rest/a;

    iput-object p3, p0, Lio/boxcar/push/rest/BXCRESTServiceProxy$7;->a:Lio/boxcar/push/rest/a$a;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 334
    const-string v0, "restResponse"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 336
    const-string v0, "restException"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/rest/b;

    .line 338
    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lio/boxcar/push/rest/BXCRESTServiceProxy$7;->a:Lio/boxcar/push/rest/a$a;

    invoke-interface {v0}, Lio/boxcar/push/rest/a$a;->b()V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lio/boxcar/push/rest/BXCRESTServiceProxy$7;->a:Lio/boxcar/push/rest/a$a;

    invoke-interface {v0}, Lio/boxcar/push/rest/a$a;->a()V

    goto :goto_0
.end method

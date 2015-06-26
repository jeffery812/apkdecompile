.class final Lio/boxcar/push/rest/e$7;
.super Ljava/lang/Object;
.source "VolleyServerProxy.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/rest/e;->a(Landroid/content/Context;Lio/boxcar/push/model/BXCRegistration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/model/BXCRegistration;

.field final synthetic b:Lio/boxcar/push/rest/e;


# direct methods
.method constructor <init>(Lio/boxcar/push/rest/e;Lio/boxcar/push/model/BXCRegistration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lio/boxcar/push/rest/e$7;->b:Lio/boxcar/push/rest/e;

    iput-object p2, p0, Lio/boxcar/push/rest/e$7;->a:Lio/boxcar/push/model/BXCRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lio/boxcar/push/rest/e$7;->b:Lio/boxcar/push/rest/e;

    invoke-static {v0}, Lio/boxcar/push/rest/e;->d(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;

    move-result-object v0

    iget-object v1, p0, Lio/boxcar/push/rest/e$7;->a:Lio/boxcar/push/model/BXCRegistration;

    invoke-interface {v0, v1, p1}, Lio/boxcar/push/rest/c$a;->a(Lio/boxcar/push/model/BXCRegistration;Ljava/lang/Throwable;)V

    .line 357
    return-void
.end method

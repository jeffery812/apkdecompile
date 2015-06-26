.class final Lio/boxcar/push/rest/e$5;
.super Ljava/lang/Object;
.source "VolleyServerProxy.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/rest/e;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/rest/e;


# direct methods
.method constructor <init>(Lio/boxcar/push/rest/e;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lio/boxcar/push/rest/e$5;->a:Lio/boxcar/push/rest/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 493
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lio/boxcar/push/rest/e$5;->a:Lio/boxcar/push/rest/e;

    invoke-static {v0}, Lio/boxcar/push/rest/e;->d(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/boxcar/push/rest/c$a;->b(Ljava/lang/Throwable;)V

    .line 495
    return-void
.end method

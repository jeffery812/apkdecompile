.class final Lio/boxcar/push/rest/e$1$3;
.super Ljava/lang/Object;
.source "VolleyServerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/rest/e$1;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/rest/e$1;


# direct methods
.method constructor <init>(Lio/boxcar/push/rest/e$1;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lio/boxcar/push/rest/e$1$3;->a:Lio/boxcar/push/rest/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lio/boxcar/push/rest/e$1$3;->a:Lio/boxcar/push/rest/e$1;

    iget-object v0, v0, Lio/boxcar/push/rest/e$1;->a:Lio/boxcar/push/rest/e;

    invoke-static {v0}, Lio/boxcar/push/rest/e;->b(Lio/boxcar/push/rest/e;)Lio/boxcar/push/rest/c$a;

    move-result-object v0

    invoke-interface {v0}, Lio/boxcar/push/rest/c$a;->c()V

    .line 221
    return-void
.end method

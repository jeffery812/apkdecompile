.class final Lio/boxcar/push/a/a$2;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/a/a;


# direct methods
.method constructor <init>(Lio/boxcar/push/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lio/boxcar/push/a/a$2;->a:Lio/boxcar/push/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 122
    iget-object v0, p0, Lio/boxcar/push/a/a$2;->a:Lio/boxcar/push/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/boxcar/push/a/a;->a(Lio/boxcar/push/a/a;Z)Z

    .line 123
    iget-object v0, p0, Lio/boxcar/push/a/a$2;->a:Lio/boxcar/push/a/a;

    invoke-static {v0}, Lio/boxcar/push/a/a;->a(Lio/boxcar/push/a/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 124
    return-void
.end method

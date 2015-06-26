.class final Lio/boxcar/push/a/a$1;
.super Ljava/lang/Thread;
.source "TaskQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/boxcar/push/a/a;
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
    .line 29
    iput-object p1, p0, Lio/boxcar/push/a/a$1;->a:Lio/boxcar/push/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 35
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 40
    iget-object v1, p0, Lio/boxcar/push/a/a$1;->a:Lio/boxcar/push/a/a;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Lio/boxcar/push/a/a;->a(Lio/boxcar/push/a/a;Landroid/os/Handler;)Landroid/os/Handler;

    .line 42
    iget-object v1, p0, Lio/boxcar/push/a/a$1;->a:Lio/boxcar/push/a/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/boxcar/push/a/a;->a(Lio/boxcar/push/a/a;Z)Z

    .line 43
    iget-object v1, p0, Lio/boxcar/push/a/a$1;->a:Lio/boxcar/push/a/a;

    invoke-static {v1}, Lio/boxcar/push/a/a;->a(Lio/boxcar/push/a/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 48
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BXCF"

    const-string v2, "Worker thread halted due to an error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

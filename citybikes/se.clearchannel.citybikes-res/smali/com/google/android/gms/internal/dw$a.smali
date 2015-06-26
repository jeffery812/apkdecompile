.class final Lcom/google/android/gms/internal/dw$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic pl:Lcom/google/android/gms/internal/dw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dw;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dw$a;->pl:Lcom/google/android/gms/internal/dw;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .local p0, this:Lcom/google/android/gms/internal/dw$a;,"Lcom/google/android/gms/internal/dw<TT;>.a;"
    const/4 v4, 0x2

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$a;->pl:Lcom/google/android/gms/internal/dw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/dw$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw$b;->aL()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw$b;->unregister()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw$a;->pl:Lcom/google/android/gms/internal/dw;

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->b(Lcom/google/android/gms/internal/dw;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dw$a;->pl:Lcom/google/android/gms/internal/dw;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/dw;->pi:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$a;->pl:Lcom/google/android/gms/internal/dw;

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->a(Lcom/google/android/gms/internal/dw;)Lcom/google/android/gms/internal/dx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/dx;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$a;->pl:Lcom/google/android/gms/internal/dw;

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->a(Lcom/google/android/gms/internal/dw;)Lcom/google/android/gms/internal/dx;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/dx;->J(I)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$a;->pl:Lcom/google/android/gms/internal/dw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/dw$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw$b;->aL()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw$b;->unregister()V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v4, :cond_4

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_5

    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/dw$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dw$b;->bR()V

    goto :goto_0

    :cond_5
    const-string v0, "GmsClient"

    const-string v1, "Don\'t know how to handle this message."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.class Lcom/google/android/gms/internal/dg$1;
.super Lcom/google/android/gms/internal/dj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dg;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lS:Lcom/google/android/gms/internal/dg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/dj$a;-><init>()V

    return-void
.end method

.method private b(JI)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->g(Lcom/google/android/gms/internal/dg;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->g(Lcom/google/android/gms/internal/dg;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private x(I)Z
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/dg;->ba()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->h(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->h(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/dg;->b(Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$c;

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/ApplicationMetadata;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/dg;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/dg;->b(Lcom/google/android/gms/internal/dg;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/dg;->aZ()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->b(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->b(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/dg$a;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dg$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$c;

    :cond_0
    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/gms/internal/dg$1;->b(JI)V

    return-void
.end method

.method public a(Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/internal/dg$1;->b(JI)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/dg;->aY()Lcom/google/android/gms/internal/dk;

    move-result-object v0

    const-string v1, "Receive (type=text, ns=%s) %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dk;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->d(Lcom/google/android/gms/internal/dg;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/dg$1$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/dg$1$3;-><init>(Lcom/google/android/gms/internal/dg$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;DZ)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->d(Lcom/google/android/gms/internal/dg;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/dg$1$2;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dg$1$2;-><init>(Lcom/google/android/gms/internal/dg$1;Ljava/lang/String;DZ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;[B)V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/dg;->aY()Lcom/google/android/gms/internal/dk;

    move-result-object v0

    const-string v1, "IGNORING: Receive (type=binary, ns=%s) <%d bytes>"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dk;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onApplicationDisconnected(I)V
    .locals 2
    .parameter "statusCode"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/dg;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dg;->b(Lcom/google/android/gms/internal/dg;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dg$1;->x(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->c(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/cast/Cast$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->d(Lcom/google/android/gms/internal/dg;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/dg$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dg$1$1;-><init>(Lcom/google/android/gms/internal/dg$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public t(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/dg;->aY()Lcom/google/android/gms/internal/dk;

    move-result-object v0

    const-string v1, "ICastDeviceControllerListener.onDisconnected"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dk;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/dg;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dg;->I(I)V

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/dg;->aZ()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->b(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    invoke-static {v0}, Lcom/google/android/gms/internal/dg;->b(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/dg$a;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/dg$a;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg$1;->lS:Lcom/google/android/gms/internal/dg;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/dg;->a(Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$c;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public v(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dg$1;->x(I)Z

    return-void
.end method

.method public w(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dg$1;->x(I)Z

    return-void
.end method

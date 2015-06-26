.class Lcom/google/android/gms/common/api/GoogleApiClient$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nq:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic nr:Lcom/google/android/gms/common/api/Api$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$4;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$4;->nr:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .parameter "result"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$4;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$4;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->h(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$4;->nr:Lcom/google/android/gms/common/api/Api$b;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$b;->getPriority()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$4;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->i(Lcom/google/android/gms/common/api/GoogleApiClient;)I

    move-result v2

    if-ge v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$4;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$4;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$4;->nr:Lcom/google/android/gms/common/api/Api$b;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$b;->getPriority()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/GoogleApiClient;I)I

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$4;->nq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->f(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

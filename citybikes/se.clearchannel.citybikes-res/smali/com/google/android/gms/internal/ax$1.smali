.class Lcom/google/android/gms/internal/ax$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ax;->b(JJ)Lcom/google/android/gms/internal/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fY:Lcom/google/android/gms/internal/aw;

.field final synthetic fZ:Lcom/google/android/gms/internal/ax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ax$1;->fZ:Lcom/google/android/gms/internal/ax;

    iput-object p2, p0, Lcom/google/android/gms/internal/ax$1;->fY:Lcom/google/android/gms/internal/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ax$1;->fZ:Lcom/google/android/gms/internal/ax;

    invoke-static {v0}, Lcom/google/android/gms/internal/ax;->a(Lcom/google/android/gms/internal/ax;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ax$1;->fZ:Lcom/google/android/gms/internal/ax;

    invoke-static {v0}, Lcom/google/android/gms/internal/ax;->b(Lcom/google/android/gms/internal/ax;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ax$1;->fZ:Lcom/google/android/gms/internal/ax;

    iget-object v2, p0, Lcom/google/android/gms/internal/ax$1;->fZ:Lcom/google/android/gms/internal/ax;

    invoke-static {v2}, Lcom/google/android/gms/internal/ax;->c(Lcom/google/android/gms/internal/ax;)Lcom/google/android/gms/internal/bc;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ax;->a(Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/bc;)Lcom/google/android/gms/internal/bc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ax$1;->fZ:Lcom/google/android/gms/internal/ax;

    invoke-static {v0}, Lcom/google/android/gms/internal/ax;->d(Lcom/google/android/gms/internal/ax;)Lcom/google/android/gms/internal/bc;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ax$1;->fZ:Lcom/google/android/gms/internal/ax;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ax;->f(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ax$1;->fY:Lcom/google/android/gms/internal/aw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ax$1;->fZ:Lcom/google/android/gms/internal/ax;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/internal/ay$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ax$1;->fZ:Lcom/google/android/gms/internal/ax;

    iget-object v2, p0, Lcom/google/android/gms/internal/ax$1;->fY:Lcom/google/android/gms/internal/aw;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ax;->a(Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/aw;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

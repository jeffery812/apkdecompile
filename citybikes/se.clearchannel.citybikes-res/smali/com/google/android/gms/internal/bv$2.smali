.class Lcom/google/android/gms/internal/bv$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bv;->ai()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic hk:Lcom/google/android/gms/internal/bv;

.field final synthetic hl:Lcom/google/android/gms/internal/cj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bv;Lcom/google/android/gms/internal/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bv$2;->hk:Lcom/google/android/gms/internal/bv;

    iput-object p2, p0, Lcom/google/android/gms/internal/bv$2;->hl:Lcom/google/android/gms/internal/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bv$2;->hk:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->a(Lcom/google/android/gms/internal/bv;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bv$2;->hk:Lcom/google/android/gms/internal/bv;

    invoke-static {v0}, Lcom/google/android/gms/internal/bv;->b(Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/internal/bu$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/bv$2;->hl:Lcom/google/android/gms/internal/cj;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/bu$a;->a(Lcom/google/android/gms/internal/cj;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

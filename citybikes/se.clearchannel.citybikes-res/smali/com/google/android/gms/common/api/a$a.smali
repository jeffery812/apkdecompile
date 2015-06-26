.class public abstract Lcom/google/android/gms/common/api/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$b;
.implements Lcom/google/android/gms/common/api/PendingResult;
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        "A::",
        "Lcom/google/android/gms/common/api/Api$a;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$b",
        "<TA;>;",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TR;>;",
        "Lcom/google/android/gms/common/api/a$c",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final mU:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final mV:Ljava/lang/Object;

.field private final mW:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final mX:Ljava/util/concurrent/CountDownLatch;

.field private final mY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/PendingResult$a;",
            ">;"
        }
    .end annotation
.end field

.field private mZ:Lcom/google/android/gms/common/api/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;"
        }
    .end annotation
.end field

.field private na:Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private nb:Z

.field private nc:Lcom/google/android/gms/common/api/GoogleApiClient$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<TA;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mV:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mX:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mY:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->mU:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/a$a$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/a$a$1;-><init>(Lcom/google/android/gms/common/api/a$a;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mW:Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method private bl()Lcom/google/android/gms/common/api/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->mV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->nb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    const-string v2, "Result is not ready."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->na:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->bm()V

    monitor-exit v1

    return-object v0

    :cond_0
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
.method protected abstract a(Lcom/google/android/gms/common/api/Api$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->nc:Lcom/google/android/gms/common/api/GoogleApiClient$a;

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Results have already been set"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->nb:Z

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "Result has already been consumed"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->mV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->na:Lcom/google/android/gms/common/api/Result;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mX:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->na:Lcom/google/android/gms/common/api/Result;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Result;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mZ:Lcom/google/android/gms/common/api/ResultCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mW:Lcom/google/android/gms/common/api/a$b;

    iget-object v3, p0, Lcom/google/android/gms/common/api/a$a;->mZ:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->bl()Lcom/google/android/gms/common/api/Result;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/api/a$b;->b(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/PendingResult$a;

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/PendingResult$a;->l(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final await()Lcom/google/android/gms/common/api/Result;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->nb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Results has already been consumed"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mX:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->bl()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->nB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .locals 2
    .parameter "time"
    .parameter "units"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/gms/common/api/a$a;,"Lcom/google/android/gms/common/api/a$a<TR;TA;>;"
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->nb:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mX:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->nC:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->bl()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->nB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/a$a;->a(Lcom/google/android/gms/common/api/Api$a;)V

    return-void
.end method

.method public final bj()Lcom/google/android/gms/common/api/Api$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api$b",
            "<TA;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mU:Lcom/google/android/gms/common/api/Api$b;

    return-object v0
.end method

.method bm()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->nb:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/a$a;->na:Lcom/google/android/gms/common/api/Result;

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->nc:Lcom/google/android/gms/common/api/GoogleApiClient$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->nc:Lcom/google/android/gms/common/api/GoogleApiClient$a;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient$b;)V

    :cond_0
    return-void
.end method

.method public final isReady()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mX:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/gms/common/api/a$a;,"Lcom/google/android/gms/common/api/a$a<TR;TA;>;"
    .local p1, callback:Lcom/google/android/gms/common/api/ResultCallback;,"Lcom/google/android/gms/common/api/ResultCallback<TR;>;"
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/a$a;->nb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Result has already been consumed."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/a$a;->mV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a$a;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/a$a;->mW:Lcom/google/android/gms/common/api/a$b;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;->bl()Lcom/google/android/gms/common/api/Result;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/common/api/a$b;->b(Lcom/google/android/gms/common/api/ResultCallback;Lcom/google/android/gms/common/api/Result;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/common/api/a$a;->mZ:Lcom/google/android/gms/common/api/ResultCallback;

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

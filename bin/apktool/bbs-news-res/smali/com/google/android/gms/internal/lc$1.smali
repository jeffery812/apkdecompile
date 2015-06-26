.class Lcom/google/android/gms/internal/lc$1;
.super Lcom/google/android/gms/internal/kj$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lc;->startSession(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TN:Lcom/google/android/gms/fitness/data/Session;

.field final synthetic TO:Lcom/google/android/gms/internal/lc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lc;Lcom/google/android/gms/fitness/data/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lc$1;->TO:Lcom/google/android/gms/internal/lc;

    iput-object p2, p0, Lcom/google/android/gms/internal/lc$1;->TN:Lcom/google/android/gms/fitness/data/Session;

    invoke-direct {p0}, Lcom/google/android/gms/internal/kj$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/kj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lc$1;->a(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/kj;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/kj$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kj$b;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/kj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/kj;->iT()Lcom/google/android/gms/internal/ko;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/fitness/request/v$a;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/request/v$a;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/lc$1;->TN:Lcom/google/android/gms/fitness/data/Session;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/fitness/request/v$a;->b(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/request/v$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/request/v$a;->jx()Lcom/google/android/gms/fitness/request/v;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ko;->a(Lcom/google/android/gms/fitness/request/v;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    return-void
.end method

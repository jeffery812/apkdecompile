.class Lcom/google/android/gms/internal/ky$3;
.super Lcom/google/android/gms/internal/kj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ky;->readData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kj$a",
        "<",
        "Lcom/google/android/gms/fitness/result/DataReadResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic TA:Lcom/google/android/gms/fitness/request/DataReadRequest;

.field final synthetic Ty:Lcom/google/android/gms/internal/ky;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ky;Lcom/google/android/gms/fitness/request/DataReadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ky$3;->Ty:Lcom/google/android/gms/internal/ky;

    iput-object p2, p0, Lcom/google/android/gms/internal/ky$3;->TA:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-direct {p0}, Lcom/google/android/gms/internal/kj$a;-><init>()V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ky$3;->a(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/kj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ky$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ky$a;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/internal/ky$1;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/kj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/kj;->iT()Lcom/google/android/gms/internal/ko;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ky$3;->TA:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ko;->a(Lcom/google/android/gms/fitness/request/DataReadRequest;Lcom/google/android/gms/internal/kl;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ky$3;->y(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    return-object v0
.end method

.method protected y(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/fitness/result/DataReadResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ky$3;->TA:Lcom/google/android/gms/fitness/request/DataReadRequest;

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/result/DataReadResult;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/fitness/result/DataReadResult;

    move-result-object v0

    return-object v0
.end method

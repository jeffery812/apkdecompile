.class Lcom/google/android/gms/internal/kw$5;
.super Lcom/google/android/gms/internal/kj$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kw;->unclaimBleDevice(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Tq:Lcom/google/android/gms/internal/kw;

.field final synthetic Ts:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kw$5;->Tq:Lcom/google/android/gms/internal/kw;

    iput-object p2, p0, Lcom/google/android/gms/internal/kw$5;->Ts:Ljava/lang/String;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kw$5;->a(Lcom/google/android/gms/internal/kj;)V

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

    new-instance v3, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;

    iget-object v4, p0, Lcom/google/android/gms/internal/kw$5;->Ts:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ko;->a(Lcom/google/android/gms/fitness/request/UnclaimBleDeviceRequest;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/google/android/gms/internal/lt$5;
.super Lcom/google/android/gms/internal/lt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lt;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeu:Lcom/google/android/gms/location/LocationListener;

.field final synthetic aev:Lcom/google/android/gms/internal/lt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lt;Lcom/google/android/gms/location/LocationListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/lt$5;->aev:Lcom/google/android/gms/internal/lt;

    iput-object p2, p0, Lcom/google/android/gms/internal/lt$5;->aeu:Lcom/google/android/gms/location/LocationListener;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/lt$a;-><init>(Lcom/google/android/gms/internal/lt$1;)V

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

    check-cast p1, Lcom/google/android/gms/internal/ly;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lt$5;->a(Lcom/google/android/gms/internal/ly;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ly;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/lt$5;->aeu:Lcom/google/android/gms/location/LocationListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Jo:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lt$5;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

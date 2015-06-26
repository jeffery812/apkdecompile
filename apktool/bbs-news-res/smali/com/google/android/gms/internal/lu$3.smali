.class Lcom/google/android/gms/internal/lu$3;
.super Lcom/google/android/gms/internal/lu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lu;->removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeB:Lcom/google/android/gms/internal/lu;

.field final synthetic aeE:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lu;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/lu$3;->aeB:Lcom/google/android/gms/internal/lu;

    iput-object p2, p0, Lcom/google/android/gms/internal/lu$3;->aeE:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/lu$a;-><init>(Lcom/google/android/gms/internal/lu$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lu$3;->a(Lcom/google/android/gms/internal/ly;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ly;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/lu$3$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/lu$3$1;-><init>(Lcom/google/android/gms/internal/lu$3;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/lu$3;->aeE:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ly;->removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V

    return-void
.end method

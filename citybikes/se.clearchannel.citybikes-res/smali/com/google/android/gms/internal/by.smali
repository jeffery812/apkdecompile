.class public Lcom/google/android/gms/internal/by;
.super Lcom/google/android/gms/internal/dw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/cd;",
        ">;"
    }
.end annotation


# instance fields
.field private final hp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/dw;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput p4, p0, Lcom/google/android/gms/internal/by;->hp:I

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/dw$e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/by;->hp:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/by;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/ec;->g(Lcom/google/android/gms/internal/eb;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected am()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.service.START"

    return-object v0
.end method

.method protected an()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.request.IAdRequestService"

    return-object v0
.end method

.method public ao()Lcom/google/android/gms/internal/cd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/dw;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cd;

    return-object v0
.end method

.method protected o(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cd;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/cd$a;->q(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cd;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/by;->o(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cd;

    move-result-object v0

    return-object v0
.end method

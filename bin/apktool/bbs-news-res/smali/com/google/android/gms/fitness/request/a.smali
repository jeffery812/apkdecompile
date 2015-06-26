.class public Lcom/google/android/gms/fitness/request/a;
.super Lcom/google/android/gms/fitness/request/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/fitness/request/a$1;,
        Lcom/google/android/gms/fitness/request/a$a;
    }
.end annotation


# instance fields
.field private final TU:Lcom/google/android/gms/fitness/request/BleScanCallback;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/request/BleScanCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/fitness/request/k$a;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/request/BleScanCallback;

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/a;->TU:Lcom/google/android/gms/fitness/request/BleScanCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/request/BleScanCallback;Lcom/google/android/gms/fitness/request/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/request/a;-><init>(Lcom/google/android/gms/fitness/request/BleScanCallback;)V

    return-void
.end method


# virtual methods
.method public onDeviceFound(Lcom/google/android/gms/fitness/data/BleDevice;)V
    .locals 1
    .parameter "device"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/fitness/request/a;->TU:Lcom/google/android/gms/fitness/request/BleScanCallback;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/request/BleScanCallback;->onDeviceFound(Lcom/google/android/gms/fitness/data/BleDevice;)V

    return-void
.end method

.method public onScanStopped()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/a;->TU:Lcom/google/android/gms/fitness/request/BleScanCallback;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/BleScanCallback;->onScanStopped()V

    return-void
.end method

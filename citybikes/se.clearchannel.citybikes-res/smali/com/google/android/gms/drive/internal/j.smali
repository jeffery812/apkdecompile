.class public Lcom/google/android/gms/drive/internal/j;
.super Lcom/google/android/gms/internal/dw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/drive/internal/o;",
        ">;"
    }
.end annotation


# instance fields
.field private final jG:Ljava/lang/String;

.field private rg:Lcom/google/android/gms/drive/DriveId;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/dw;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/dt;->bF()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Must call Api.ClientBuilder.setAccountName()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/j;->jG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected B(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/o;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/drive/internal/o$a;->C(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/o;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "com.google.android.gms.drive.root_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/j;->rg:Lcom/google/android/gms/drive/DriveId;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/dw;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/dw$e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/gms/internal/eg;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/android/gms/internal/eg;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/j;->bO()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/eg;->f(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x40ba50

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/j;->bO()[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/drive/internal/j;->jG:Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ec;->a(Lcom/google/android/gms/internal/eb;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected am()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.drive.ApiService.START"

    return-object v0
.end method

.method protected an()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.drive.internal.IDriveService"

    return-object v0
.end method

.method public cN()Lcom/google/android/gms/drive/internal/o;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/j;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/o;

    return-object v0
.end method

.method public cO()Lcom/google/android/gms/drive/DriveId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/j;->rg:Lcom/google/android/gms/drive/DriveId;

    return-object v0
.end method

.method protected synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/j;->B(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/o;

    move-result-object v0

    return-object v0
.end method

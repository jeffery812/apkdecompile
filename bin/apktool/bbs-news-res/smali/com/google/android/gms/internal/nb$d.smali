.class abstract Lcom/google/android/gms/internal/nb$d;
.super Lcom/google/android/gms/common/api/BaseImplementation$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/nb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/BaseImplementation$a",
        "<TR;",
        "Lcom/google/android/gms/internal/nc;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/panorama/Panorama;->CU:Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/BaseImplementation$a;-><init>(Lcom/google/android/gms/common/api/Api$c;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/na;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/nc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nb$d;->a(Lcom/google/android/gms/internal/nc;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/nc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nc;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/na;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/nb$d;->a(Landroid/content/Context;Lcom/google/android/gms/internal/na;)V

    return-void
.end method

.class Lcom/google/android/gms/internal/nb$2;
.super Lcom/google/android/gms/internal/nb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nb;->loadPanoramaInfo(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic akn:Landroid/net/Uri;

.field final synthetic akp:Lcom/google/android/gms/internal/nb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nb;Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/nb$2;->akp:Lcom/google/android/gms/internal/nb;

    iput-object p2, p0, Lcom/google/android/gms/internal/nb$2;->akn:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nb$b;-><init>(Lcom/google/android/gms/internal/nb$1;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/google/android/gms/internal/na;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/nb$c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/nb$c;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nb$2;->akn:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/na;->a(Lcom/google/android/gms/internal/mz;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void
.end method

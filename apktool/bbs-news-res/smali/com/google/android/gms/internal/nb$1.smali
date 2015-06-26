.class Lcom/google/android/gms/internal/nb$1;
.super Lcom/google/android/gms/internal/nb$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/nb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/nb$d",
        "<",
        "Lcom/google/android/gms/panorama/PanoramaApi$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic akn:Landroid/net/Uri;

.field final synthetic ako:Landroid/os/Bundle;


# virtual methods
.method protected a(Landroid/content/Context;Lcom/google/android/gms/internal/na;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/nb$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/nb$a;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nb$1;->akn:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/nb$1;->ako:Landroid/os/Bundle;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/android/gms/internal/nb;->b(Landroid/content/Context;Lcom/google/android/gms/internal/na;Lcom/google/android/gms/internal/mz;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method protected ay(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$a;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/my;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/my;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;I)V

    return-object v0
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nb$1;->ay(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/panorama/PanoramaApi$a;

    move-result-object v0

    return-object v0
.end method

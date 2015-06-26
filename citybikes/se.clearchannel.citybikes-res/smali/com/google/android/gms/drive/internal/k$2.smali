.class Lcom/google/android/gms/drive/internal/k$2;
.super Lcom/google/android/gms/drive/internal/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/k;->commitAndCloseContents(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rd:Lcom/google/android/gms/drive/Contents;

.field final synthetic rj:Lcom/google/android/gms/drive/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/k;Lcom/google/android/gms/drive/Contents;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/k$2;->rj:Lcom/google/android/gms/drive/internal/k;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/k$2;->rd:Lcom/google/android/gms/drive/Contents;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/k$a;-><init>(Lcom/google/android/gms/drive/internal/k;Lcom/google/android/gms/drive/internal/k$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/j;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/k$2;->a(Lcom/google/android/gms/drive/internal/j;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/j;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/k$2;->rd:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/j;->cN()Lcom/google/android/gms/drive/internal/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CloseContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/k$2;->rd:Lcom/google/android/gms/drive/Contents;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(Lcom/google/android/gms/drive/Contents;Z)V

    new-instance v2, Lcom/google/android/gms/drive/internal/z;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/z;-><init>(Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/o;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Lcom/google/android/gms/drive/internal/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/drive/internal/k$2;->a(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method

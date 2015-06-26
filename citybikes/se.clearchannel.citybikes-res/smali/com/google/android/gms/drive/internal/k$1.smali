.class Lcom/google/android/gms/drive/internal/k$1;
.super Lcom/google/android/gms/drive/internal/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/k;->openContents(Lcom/google/android/gms/common/api/GoogleApiClient;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rh:I

.field final synthetic ri:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

.field final synthetic rj:Lcom/google/android/gms/drive/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/k;ILcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/k$1;->rj:Lcom/google/android/gms/drive/internal/k;

    iput p2, p0, Lcom/google/android/gms/drive/internal/k$1;->rh:I

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/k$1;->ri:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/drive/internal/k$c;-><init>(Lcom/google/android/gms/drive/internal/k;Lcom/google/android/gms/drive/internal/k$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/j;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/k$1;->a(Lcom/google/android/gms/drive/internal/j;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/j;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/j;->cN()Lcom/google/android/gms/drive/internal/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/OpenContentsRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/k$1;->rj:Lcom/google/android/gms/drive/internal/k;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/k;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/drive/internal/k$1;->rh:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/internal/OpenContentsRequest;-><init>(Lcom/google/android/gms/drive/DriveId;I)V

    new-instance v2, Lcom/google/android/gms/drive/internal/k$b;

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/k$1;->ri:Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/drive/internal/k$b;-><init>(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/drive/DriveFile$DownloadProgressListener;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/o;->a(Lcom/google/android/gms/drive/internal/OpenContentsRequest;Lcom/google/android/gms/drive/internal/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/drive/internal/h$a;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/drive/internal/h$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/Contents;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/drive/internal/k$1;->a(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method

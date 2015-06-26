.class Lcom/google/android/gms/drive/internal/l$1;
.super Lcom/google/android/gms/drive/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/drive/internal/l;->createFile(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/MetadataChangeSet;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/internal/i",
        "<",
        "Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic rd:Lcom/google/android/gms/drive/Contents;

.field final synthetic rl:Lcom/google/android/gms/drive/MetadataChangeSet;

.field final synthetic rm:Lcom/google/android/gms/drive/internal/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/drive/internal/l;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/MetadataChangeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/drive/internal/l$1;->rm:Lcom/google/android/gms/drive/internal/l;

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/l$1;->rd:Lcom/google/android/gms/drive/Contents;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/l$1;->rl:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-direct {p0}, Lcom/google/android/gms/drive/internal/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/drive/internal/j;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/l$1;->a(Lcom/google/android/gms/drive/internal/j;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/drive/internal/j;)V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/l$1;->rd:Lcom/google/android/gms/drive/Contents;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/Contents;->close()V

    invoke-virtual {p1}, Lcom/google/android/gms/drive/internal/j;->cN()Lcom/google/android/gms/drive/internal/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/drive/internal/CreateFileRequest;

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/l$1;->rm:Lcom/google/android/gms/drive/internal/l;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/internal/l;->getDriveId()Lcom/google/android/gms/drive/DriveId;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/drive/internal/l$1;->rl:Lcom/google/android/gms/drive/MetadataChangeSet;

    invoke-virtual {v3}, Lcom/google/android/gms/drive/MetadataChangeSet;->cM()Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/drive/internal/l$1;->rd:Lcom/google/android/gms/drive/Contents;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/drive/internal/CreateFileRequest;-><init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;)V

    new-instance v2, Lcom/google/android/gms/drive/internal/l$a;

    invoke-direct {v2, p0}, Lcom/google/android/gms/drive/internal/l$a;-><init>(Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/drive/internal/o;->a(Lcom/google/android/gms/drive/internal/CreateFileRequest;Lcom/google/android/gms/drive/internal/p;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/drive/internal/l$d;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/drive/internal/l$d;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFile;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/drive/internal/l$1;->a(Lcom/google/android/gms/common/api/Result;)V

    goto :goto_0
.end method

.method public synthetic e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/l$1;->q(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;

    move-result-object v0

    return-object v0
.end method

.method public q(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/drive/DriveFolder$DriveFileResult;
    .locals 2

    new-instance v0, Lcom/google/android/gms/drive/internal/l$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/drive/internal/l$d;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/drive/DriveFile;)V

    return-object v0
.end method

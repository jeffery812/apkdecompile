.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/SnapshotsImpl;->resolveConflict(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZA:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

.field final synthetic ZE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

.field final synthetic ZG:Ljava/lang/String;

.field final synthetic ZH:Ljava/lang/String;

.field final synthetic ZI:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->ZA:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->ZG:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->ZH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->ZE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iput-object p5, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->ZI:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$OpenImpl;-><init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->ZG:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->ZH:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->ZE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$5;->ZI:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    return-void
.end method

.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadMetadataImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->loadLeaderboardMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XU:Z

.field final synthetic Yy:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;->Yy:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;->XU:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadMetadataImpl;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;->XU:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/BaseImplementation$b;Z)V

    return-void
.end method

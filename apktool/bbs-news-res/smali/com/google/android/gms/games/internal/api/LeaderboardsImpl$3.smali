.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->loadCurrentPlayerLeaderboardScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic YA:I

.field final synthetic YB:I

.field final synthetic Yy:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic Yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->Yy:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->Yz:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->YA:I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->YB:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadPlayerScoreImpl;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->Yz:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->YA:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$3;->YB:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

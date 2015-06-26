.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XU:Z

.field final synthetic YA:I

.field final synthetic YB:I

.field final synthetic YC:I

.field final synthetic Yy:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic Yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Ljava/lang/String;IIIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->Yy:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->Yz:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->YA:I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->YB:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->YC:I

    iput-boolean p6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->XU:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->Yz:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->YA:I

    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->YB:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->YC:I

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$5;->XU:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IIIZ)V

    return-void
.end method

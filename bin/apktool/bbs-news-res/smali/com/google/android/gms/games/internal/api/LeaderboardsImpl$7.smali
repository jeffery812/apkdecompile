.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic YF:J

.field final synthetic YG:Ljava/lang/String;

.field final synthetic Yy:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic Yz:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->Yy:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->Yz:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->YF:J

    iput-object p5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->YG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$SubmitScoreImpl;-><init>()V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->Yz:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->YF:J

    iget-object v6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$7;->YG:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

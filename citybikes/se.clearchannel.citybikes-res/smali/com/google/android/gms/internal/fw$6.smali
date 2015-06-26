.class Lcom/google/android/gms/internal/fw$6;
.super Lcom/google/android/gms/internal/fw$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fw;->loadMoreScores(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uY:Lcom/google/android/gms/internal/fw;

.field final synthetic vc:I

.field final synthetic vd:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

.field final synthetic ve:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fw$6;->uY:Lcom/google/android/gms/internal/fw;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw$6;->vd:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iput p3, p0, Lcom/google/android/gms/internal/fw$6;->vc:I

    iput p4, p0, Lcom/google/android/gms/internal/fw$6;->ve:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fw$c;-><init>(Lcom/google/android/gms/internal/fw$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fw$6;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fw$6;->vd:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/fw$6;->vc:I

    iget v2, p0, Lcom/google/android/gms/internal/fw$6;->ve:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V

    return-void
.end method

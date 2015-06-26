.class Lcom/google/android/gms/games/GamesClient$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/GamesClient;->submitScoreImmediate(Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic tg:Lcom/google/android/gms/games/GamesClient;

.field final synthetic ti:Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/GamesClient;Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/GamesClient$6;->tg:Lcom/google/android/gms/games/GamesClient;

    iput-object p2, p0, Lcom/google/android/gms/games/GamesClient$6;->ti:Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;->getScoreData()Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->dx()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;

    invoke-direct {v2, v1}, Lcom/google/android/gms/games/leaderboard/SubmitScoreResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iget-object v1, p0, Lcom/google/android/gms/games/GamesClient$6;->ti:Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/games/leaderboard/OnScoreSubmittedListener;->onScoreSubmitted(ILcom/google/android/gms/games/leaderboard/SubmitScoreResult;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GamesClient$6;->a(Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;)V

    return-void
.end method

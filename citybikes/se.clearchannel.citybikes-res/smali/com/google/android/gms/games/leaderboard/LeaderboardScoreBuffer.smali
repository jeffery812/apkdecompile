.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
        ">;"
    }
.end annotation


# instance fields
.field private final vI:Lcom/google/android/gms/games/leaderboard/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2
    .parameter "dataHolder"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/leaderboard/c;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/leaderboard/c;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->vI:Lcom/google/android/gms/games/leaderboard/c;

    return-void
.end method


# virtual methods
.method public dq()Lcom/google/android/gms/games/leaderboard/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->vI:Lcom/google/android/gms/games/leaderboard/c;

    return-object v0
.end method

.method public get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    .locals 2
    .parameter "position"

    .prologue
    new-instance v0, Lcom/google/android/gms/games/leaderboard/e;

    iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->nE:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/leaderboard/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    move-result-object v0

    return-object v0
.end method

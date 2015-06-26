.class Lcom/google/android/gms/games/GamesClient$34;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/GamesClient;->loadLeaderboardMetadata(Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;Ljava/lang/String;Z)V
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
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic tg:Lcom/google/android/gms/games/GamesClient;

.field final synthetic tv:Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/GamesClient;Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/GamesClient$34;->tg:Lcom/google/android/gms/games/GamesClient;

    iput-object p2, p0, Lcom/google/android/gms/games/GamesClient$34;->tv:Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/games/GamesClient$34;->tv:Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;->getLeaderboards()Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/games/leaderboard/OnLeaderboardMetadataLoadedListener;->onLeaderboardMetadataLoaded(ILcom/google/android/gms/games/leaderboard/LeaderboardBuffer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GamesClient$34;->a(Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;)V

    return-void
.end method

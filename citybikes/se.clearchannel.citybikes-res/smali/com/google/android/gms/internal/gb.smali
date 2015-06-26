.class public final Lcom/google/android/gms/internal/gb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gb$d;,
        Lcom/google/android/gms/internal/gb$e;,
        Lcom/google/android/gms/internal/gb$a;,
        Lcom/google/android/gms/internal/gb$c;,
        Lcom/google/android/gms/internal/gb$f;,
        Lcom/google/android/gms/internal/gb$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "invitationId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gb$4;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gb$4;-><init>(Lcom/google/android/gms/internal/gb;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public cancelMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "matchId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gb$9;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/internal/gb$9;-><init>(Lcom/google/android/gms/internal/gb;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public createMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gb$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gb$1;-><init>(Lcom/google/android/gms/internal/gb;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public declineInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 2
    .parameter "apiClient"
    .parameter "invitationId"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/fl;->j(Ljava/lang/String;I)V

    return-void
.end method

.method public dismissInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 2
    .parameter "apiClient"
    .parameter "invitationId"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/fl;->i(Ljava/lang/String;I)V

    return-void
.end method

.method public dismissMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1
    .parameter "apiClient"
    .parameter "matchId"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fl;->dismissTurnBasedMatch(Ljava/lang/String;)V

    return-void
.end method

.method public finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "apiClient"
    .parameter "matchId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/gb;->finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "matchId"
    .parameter "matchData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/games/multiplayer/ParticipantResult;>;"
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/gb;->finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    goto :goto_0
.end method

.method public varargs finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "matchId"
    .parameter "matchData"
    .parameter "results"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gb$6;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/gb$6;-><init>(Lcom/google/android/gms/internal/gb;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public getInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .locals 1
    .parameter "apiClient"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fl;->getMatchInboxIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMaxMatchDataSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .locals 1
    .parameter "apiClient"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fl;->getMaxTurnBasedMatchDataSize()I

    move-result v0

    return v0
.end method

.method public getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;II)Landroid/content/Intent;
    .locals 2
    .parameter "apiClient"
    .parameter "minPlayers"
    .parameter "maxPlayers"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/gms/internal/fl;->getTurnBasedSelectOpponentsIntent(IIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;IIZ)Landroid/content/Intent;
    .locals 1
    .parameter "apiClient"
    .parameter "minPlayers"
    .parameter "maxPlayers"
    .parameter "allowAutomatch"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/internal/fl;->getTurnBasedSelectOpponentsIntent(IIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public leaveMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "matchId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gb$7;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gb$7;-><init>(Lcom/google/android/gms/internal/gb;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public leaveMatchDuringTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "matchId"
    .parameter "pendingParticipantId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gb$8;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/gb$8;-><init>(Lcom/google/android/gms/internal/gb;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public loadMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "matchId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gb$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gb$2;-><init>(Lcom/google/android/gms/internal/gb;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public varargs loadMatchesByStatus(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "matchTurnStatuses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gb$10;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gb$10;-><init>(Lcom/google/android/gms/internal/gb;[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public registerMatchUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
    .locals 1
    .parameter "apiClient"
    .parameter "listener"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fl;->registerMatchUpdateListener(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V

    return-void
.end method

.method public rematch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "matchId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gb$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gb$3;-><init>(Lcom/google/android/gms/internal/gb;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .parameter "apiClient"
    .parameter "matchId"
    .parameter "matchData"
    .parameter "pendingParticipantId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    check-cast v5, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gb;->takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .parameter "apiClient"
    .parameter "matchId"
    .parameter "matchData"
    .parameter "pendingParticipantId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .local p5, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/games/multiplayer/ParticipantResult;>;"
    if-nez p5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gb;->takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-interface {p5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    move-object v5, v0

    goto :goto_0
.end method

.method public varargs takeTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .parameter "apiClient"
    .parameter "matchId"
    .parameter "matchData"
    .parameter "pendingParticipantId"
    .parameter "results"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gb$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gb$5;-><init>(Lcom/google/android/gms/internal/gb;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public unregisterMatchUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1
    .parameter "apiClient"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fl;->unregisterMatchUpdateListener()V

    return-void
.end method

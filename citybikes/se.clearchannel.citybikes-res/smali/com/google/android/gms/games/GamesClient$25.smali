.class Lcom/google/android/gms/games/GamesClient$25;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/GamesClient;->leaveTurnBasedMatch(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchLeftListener;Ljava/lang/String;)V
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
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic tg:Lcom/google/android/gms/games/GamesClient;

.field final synthetic tp:Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchLeftListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/GamesClient;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchLeftListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/GamesClient$25;->tg:Lcom/google/android/gms/games/GamesClient;

    iput-object p2, p0, Lcom/google/android/gms/games/GamesClient$25;->tp:Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchLeftListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/games/GamesClient$25;->tp:Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchLeftListener;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;->getMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchLeftListener;->onTurnBasedMatchLeft(ILcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GamesClient$25;->a(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;)V

    return-void
.end method

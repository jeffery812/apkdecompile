.class final Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedCallback;
.super Lcom/google/android/gms/common/internal/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MatchUpdateReceivedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/d",
        "<",
        "Lcom/google/android/gms/games/internal/IGamesService;",
        ">.b<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final WY:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

.field final synthetic Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V
    .locals 0
    .parameter
    .parameter "listener"
    .parameter "match"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedCallback;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/d$b;-><init>(Lcom/google/android/gms/common/internal/d;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedCallback;->WY:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedCallback;->WY:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;->onTurnBasedMatchReceived(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;)V

    return-void
.end method

.method protected synthetic g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedCallback;->b(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V

    return-void
.end method

.method protected gT()V
    .locals 0

    return-void
.end method

.class public final Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
.super Ljava/lang/Object;


# instance fields
.field private final wO:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

.field private final wP:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

.field private final wQ:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

.field private final wR:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .parameter "matchData"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wO:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wP:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    :goto_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wQ:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    :goto_2
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wR:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    :goto_3
    return-void

    :cond_0
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wO:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wP:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wQ:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    goto :goto_2

    :cond_3
    iput-object v2, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wR:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    goto :goto_3
.end method

.method private static a(Landroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/gf;->aG(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wO:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wO:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/InvitationBuffer;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wP:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wP:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wQ:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wQ:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wR:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wR:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;->close()V

    :cond_3
    return-void
.end method

.method public getCompletedMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wR:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

.method public getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wO:Lcom/google/android/gms/games/multiplayer/InvitationBuffer;

    return-object v0
.end method

.method public getMyTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wP:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

.method public getTheirTurnMatches()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->wQ:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchBuffer;

    return-object v0
.end method

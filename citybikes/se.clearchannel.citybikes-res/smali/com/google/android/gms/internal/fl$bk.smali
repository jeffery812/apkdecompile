.class final Lcom/google/android/gms/internal/fl$bk;
.super Lcom/google/android/gms/internal/dw$b;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "bk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/fp;",
        ">.b<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
        ">;>;",
        "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;"
    }
.end annotation


# instance fields
.field private final jY:Lcom/google/android/gms/common/api/Status;

.field final synthetic tZ:Lcom/google/android/gms/internal/fl;

.field private final uG:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$bk;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dw$b;-><init>(Lcom/google/android/gms/internal/dw;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/fl$bk;->jY:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-direct {v0, p4}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl$bk;->uG:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    return-void
.end method


# virtual methods
.method protected aL()V
    .locals 0

    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fl$bk;->c(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method protected c(Lcom/google/android/gms/common/api/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public getMatches()Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$bk;->uG:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$bk;->jY:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$bk;->uG:Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/games/multiplayer/turnbased/LoadMatchesResponse;->close()V

    return-void
.end method

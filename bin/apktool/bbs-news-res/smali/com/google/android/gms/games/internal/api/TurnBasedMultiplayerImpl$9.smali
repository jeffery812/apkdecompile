.class Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;
.super Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LoadMatchesImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;->loadMatchesByStatus(Lcom/google/android/gms/common/api/GoogleApiClient;I[I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZO:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

.field final synthetic ZQ:I

.field final synthetic ZR:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;I[I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->ZO:Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

    iput p2, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->ZQ:I

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->ZR:[I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$LoadMatchesImpl;-><init>(Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->ZQ:I

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl$9;->ZR:[I

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;I[I)V

    return-void
.end method

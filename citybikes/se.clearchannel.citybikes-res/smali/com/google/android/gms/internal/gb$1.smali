.class Lcom/google/android/gms/internal/gb$1;
.super Lcom/google/android/gms/internal/gb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gb;->createMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vp:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;

.field final synthetic vq:Lcom/google/android/gms/internal/gb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gb;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gb$1;->vq:Lcom/google/android/gms/internal/gb;

    iput-object p2, p0, Lcom/google/android/gms/internal/gb$1;->vp:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gb$b;-><init>(Lcom/google/android/gms/internal/gb$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gb$1;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$1;->vp:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V

    return-void
.end method

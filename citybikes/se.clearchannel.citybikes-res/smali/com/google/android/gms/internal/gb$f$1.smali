.class Lcom/google/android/gms/internal/gb$f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gb$f;->H(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jP:Lcom/google/android/gms/common/api/Status;

.field final synthetic vC:Lcom/google/android/gms/internal/gb$f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gb$f;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gb$f$1;->vC:Lcom/google/android/gms/internal/gb$f;

    iput-object p2, p0, Lcom/google/android/gms/internal/gb$f$1;->jP:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatch()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatch;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$f$1;->jP:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

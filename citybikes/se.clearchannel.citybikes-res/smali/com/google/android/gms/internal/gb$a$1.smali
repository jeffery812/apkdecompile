.class Lcom/google/android/gms/internal/gb$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gb$a;->C(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jP:Lcom/google/android/gms/common/api/Status;

.field final synthetic vx:Lcom/google/android/gms/internal/gb$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gb$a;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gb$a$1;->vx:Lcom/google/android/gms/internal/gb$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/gb$a$1;->jP:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatchId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$a$1;->vx:Lcom/google/android/gms/internal/gb$a;

    invoke-static {v0}, Lcom/google/android/gms/internal/gb$a;->a(Lcom/google/android/gms/internal/gb$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$a$1;->jP:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

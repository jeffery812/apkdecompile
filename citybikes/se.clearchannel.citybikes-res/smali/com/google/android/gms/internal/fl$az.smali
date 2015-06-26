.class final Lcom/google/android/gms/internal/fl$az;
.super Lcom/google/android/gms/internal/fk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "az"
.end annotation


# instance fields
.field final synthetic tZ:Lcom/google/android/gms/internal/fl;

.field private final uz:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$az;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fk;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    iput-object v0, p0, Lcom/google/android/gms/internal/fl$az;->uz:Lcom/google/android/gms/common/api/a$c;

    return-void
.end method


# virtual methods
.method public onTurnBasedMatchCanceled(ILjava/lang/String;)V
    .locals 5
    .parameter "statusCode"
    .parameter "matchId"

    .prologue
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fl$az;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v2, Lcom/google/android/gms/internal/fl$ba;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$az;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v4, p0, Lcom/google/android/gms/internal/fl$az;->uz:Lcom/google/android/gms/common/api/a$c;

    invoke-direct {v2, v3, v4, v0, p2}, Lcom/google/android/gms/internal/fl$ba;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

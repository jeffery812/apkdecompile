.class public final Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$1;,
        Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;
    }
.end annotation


# instance fields
.field private final abS:I

.field private final acg:[Ljava/lang/String;

.field private final ach:Landroid/os/Bundle;

.field private final acs:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->abS:I

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->abS:I

    iget v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->acs:I

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->acs:I

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->ach:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->ach:Landroid/os/Bundle;

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->ack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;->ack:Ljava/util/ArrayList;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->acg:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$Builder;-><init>(Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig$1;)V

    return-object v0
.end method

.method public static createAutoMatchCriteria(IIJ)Landroid/os/Bundle;
    .locals 2
    .parameter "minAutoMatchPlayers"
    .parameter "maxAutoMatchPlayers"
    .parameter "exclusiveBitMask"

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "min_automatch_players"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "max_automatch_players"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "exclusive_bit_mask"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public getAutoMatchCriteria()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->ach:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInvitedPlayerIds()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->acg:[Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->abS:I

    return v0
.end method

.method public lF()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->acs:I

    return v0
.end method

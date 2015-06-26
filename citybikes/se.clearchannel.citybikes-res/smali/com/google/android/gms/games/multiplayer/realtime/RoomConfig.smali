.class public final Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$1;,
        Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    }
.end annotation


# instance fields
.field private final uf:Ljava/lang/String;

.field private final wD:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

.field private final wE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

.field private final wF:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

.field private final wG:[Ljava/lang/String;

.field private final wH:Landroid/os/Bundle;

.field private final wI:Z

.field private final wo:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->wD:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wD:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->wE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->wF:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wF:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->wJ:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->uf:Ljava/lang/String;

    iget v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->wo:I

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wo:I

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->wH:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wH:Landroid/os/Bundle;

    iget-boolean v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->wI:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wI:Z

    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->wK:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->wK:Ljava/util/ArrayList;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wG:[Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wF:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wI:Z

    const-string v1, "Must either enable sockets OR specify a message listener"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;)V

    return-void
.end method

.method public static builder(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 2
    .parameter "listener"

    .prologue
    new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$1;)V

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

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wH:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->uf:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitedPlayerIds()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wG:[Ljava/lang/String;

    return-object v0
.end method

.method public getMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wF:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-object v0
.end method

.method public getRoomStatusUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wE:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    return-object v0
.end method

.method public getRoomUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wD:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    return-object v0
.end method

.method public getVariant()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wo:I

    return v0
.end method

.method public isSocketEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->wI:Z

    return v0
.end method

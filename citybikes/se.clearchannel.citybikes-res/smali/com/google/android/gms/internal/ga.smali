.class public final Lcom/google/android/gms/internal/ga;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 1
    .parameter "apiClient"
    .parameter "config"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fl;->createRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    return-void
.end method

.method public declineInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 2
    .parameter "apiClient"
    .parameter "invitationId"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/fl;->j(Ljava/lang/String;I)V

    return-void
.end method

.method public dismissInvitation(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 2
    .parameter "apiClient"
    .parameter "invitationId"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/fl;->i(Ljava/lang/String;I)V

    return-void
.end method

.method public getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;II)Landroid/content/Intent;
    .locals 2
    .parameter "apiClient"
    .parameter "minPlayers"
    .parameter "maxPlayers"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/gms/internal/fl;->getRealTimeSelectOpponentsIntent(IIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSelectOpponentsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;IIZ)Landroid/content/Intent;
    .locals 1
    .parameter "apiClient"
    .parameter "minPlayers"
    .parameter "maxPlayers"
    .parameter "allowAutomatch"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/internal/fl;->getRealTimeSelectOpponentsIntent(IIZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSocketForParticipant(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
    .locals 1
    .parameter "apiClient"
    .parameter "roomId"
    .parameter "participantId"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/fl;->getRealTimeSocketForParticipant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    move-result-object v0

    return-object v0
.end method

.method public getWaitingRoomIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
    .locals 1
    .parameter "apiClient"
    .parameter "room"
    .parameter "minParticipantsToStart"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/fl;->getRealTimeWaitingRoomIntent(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public join(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 1
    .parameter "apiClient"
    .parameter "config"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fl;->joinRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V

    return-void
.end method

.method public leave(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V
    .locals 1
    .parameter "apiClient"
    .parameter "listener"
    .parameter "roomId"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/fl;->leaveRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V

    return-void
.end method

.method public sendReliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "apiClient"
    .parameter "callback"
    .parameter "messageData"
    .parameter "roomId"
    .parameter "recipientParticipantId"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "apiClient"
    .parameter "messageData"
    .parameter "roomId"
    .parameter "recipientParticipantId"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/gms/internal/fl;->a([BLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendUnreliableMessage(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;Ljava/util/List;)I
    .locals 2
    .parameter "apiClient"
    .parameter "messageData"
    .parameter "roomId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p4, recipientParticipantIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/gms/internal/fl;->a([BLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendUnreliableMessageToAll(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;)I
    .locals 1
    .parameter "apiClient"
    .parameter "messageData"
    .parameter "roomId"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/fl;->sendUnreliableRealTimeMessageToAll([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

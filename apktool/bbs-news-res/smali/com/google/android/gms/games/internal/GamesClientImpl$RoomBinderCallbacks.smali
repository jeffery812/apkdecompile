.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RoomBinderCallbacks"
.end annotation


# instance fields
.field final synthetic Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final Xw:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

.field private final Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

.field private final Xy:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
    .locals 2
    .parameter
    .parameter "roomCallbacks"

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xw:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xy:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
    .locals 1
    .parameter
    .parameter "roomCallbacks"
    .parameter "roomStatusCallbacks"
    .parameter "realTimeMessageReceivedCallbacks"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xw:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xy:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-void
.end method


# virtual methods
.method public A(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public d(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public e(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public f(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public onLeftRoom(ILjava/lang/String;)V
    .locals 4
    .parameter "statusCode"
    .parameter "externalRoomId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xw:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public onP2PConnected(Ljava/lang/String;)V
    .locals 4
    .parameter "participantId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public onP2PDisconnected(Ljava/lang/String;)V
    .locals 4
    .parameter "participantId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .locals 4
    .parameter "message"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xy:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public u(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xw:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public v(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xw:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public w(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public x(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public y(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xw:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

.method public z(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomCallback;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->Xx:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

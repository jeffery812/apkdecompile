.class final Lcom/google/android/gms/internal/fl$aq;
.super Lcom/google/android/gms/internal/fk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "aq"
.end annotation


# instance fields
.field final synthetic tZ:Lcom/google/android/gms/internal/fl;

.field private final uv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

.field private final uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

.field private final ux:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fk;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->uv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v1, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iput-object v1, p0, Lcom/google/android/gms/internal/fl$aq;->ux:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fk;-><init>()V

    const-string v0, "Callbacks must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->uv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iput-object p4, p0, Lcom/google/android/gms/internal/fl$aq;->ux:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$af;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fl$af;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$ag;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fl$ag;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$ah;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fl$ah;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public d(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$ad;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fl$ad;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public e(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$ac;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fl$ac;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public f(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$ae;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fl$ae;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public onLeftRoom(ILjava/lang/String;)V
    .locals 4
    .parameter "statusCode"
    .parameter "externalRoomId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$v;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fl$v;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public onP2PConnected(Ljava/lang/String;)V
    .locals 4
    .parameter "participantId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$aa;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fl$aa;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public onP2PDisconnected(Ljava/lang/String;)V
    .locals 4
    .parameter "participantId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fl$ab;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .locals 4
    .parameter "message"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$z;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->ux:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fl$z;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public t(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$at;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fl$at;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public u(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$q;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fl$q;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public v(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$as;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fl$as;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public w(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$ap;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fl$ap;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public x(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$ar;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fl$ar;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public y(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$h;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fl$h;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.method public z(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$i;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$aq;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$aq;->uw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fl$i;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.class public final Lcom/google/android/gms/internal/fl;
.super Lcom/google/android/gms/internal/dw;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fl$av;,
        Lcom/google/android/gms/internal/fl$am;,
        Lcom/google/android/gms/internal/fl$z;,
        Lcom/google/android/gms/internal/fl$ab;,
        Lcom/google/android/gms/internal/fl$aa;,
        Lcom/google/android/gms/internal/fl$ae;,
        Lcom/google/android/gms/internal/fl$ac;,
        Lcom/google/android/gms/internal/fl$ad;,
        Lcom/google/android/gms/internal/fl$ah;,
        Lcom/google/android/gms/internal/fl$ag;,
        Lcom/google/android/gms/internal/fl$af;,
        Lcom/google/android/gms/internal/fl$i;,
        Lcom/google/android/gms/internal/fl$h;,
        Lcom/google/android/gms/internal/fl$ap;,
        Lcom/google/android/gms/internal/fl$as;,
        Lcom/google/android/gms/internal/fl$ar;,
        Lcom/google/android/gms/internal/fl$v;,
        Lcom/google/android/gms/internal/fl$q;,
        Lcom/google/android/gms/internal/fl$at;,
        Lcom/google/android/gms/internal/fl$a;,
        Lcom/google/android/gms/internal/fl$c;,
        Lcom/google/android/gms/internal/fl$b;,
        Lcom/google/android/gms/internal/fl$ba;,
        Lcom/google/android/gms/internal/fl$be;,
        Lcom/google/android/gms/internal/fl$bi;,
        Lcom/google/android/gms/internal/fl$bc;,
        Lcom/google/android/gms/internal/fl$bg;,
        Lcom/google/android/gms/internal/fl$ay;,
        Lcom/google/android/gms/internal/fl$ax;,
        Lcom/google/android/gms/internal/fl$al;,
        Lcom/google/android/gms/internal/fl$bk;,
        Lcom/google/android/gms/internal/fl$w;,
        Lcom/google/android/gms/internal/fl$y;,
        Lcom/google/android/gms/internal/fl$n;,
        Lcom/google/android/gms/internal/fl$m;,
        Lcom/google/android/gms/internal/fl$p;,
        Lcom/google/android/gms/internal/fl$aj;,
        Lcom/google/android/gms/internal/fl$s;,
        Lcom/google/android/gms/internal/fl$u;,
        Lcom/google/android/gms/internal/fl$k;,
        Lcom/google/android/gms/internal/fl$e;,
        Lcom/google/android/gms/internal/fl$g;,
        Lcom/google/android/gms/internal/fl$ao;,
        Lcom/google/android/gms/internal/fl$au;,
        Lcom/google/android/gms/internal/fl$an;,
        Lcom/google/android/gms/internal/fl$aq;,
        Lcom/google/android/gms/internal/fl$az;,
        Lcom/google/android/gms/internal/fl$bd;,
        Lcom/google/android/gms/internal/fl$bh;,
        Lcom/google/android/gms/internal/fl$bb;,
        Lcom/google/android/gms/internal/fl$bf;,
        Lcom/google/android/gms/internal/fl$bj;,
        Lcom/google/android/gms/internal/fl$aw;,
        Lcom/google/android/gms/internal/fl$ak;,
        Lcom/google/android/gms/internal/fl$x;,
        Lcom/google/android/gms/internal/fl$l;,
        Lcom/google/android/gms/internal/fl$o;,
        Lcom/google/android/gms/internal/fl$ai;,
        Lcom/google/android/gms/internal/fl$r;,
        Lcom/google/android/gms/internal/fl$t;,
        Lcom/google/android/gms/internal/fl$j;,
        Lcom/google/android/gms/internal/fl$d;,
        Lcom/google/android/gms/internal/fl$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/fp;",
        ">;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
    }
.end annotation


# instance fields
.field private final jG:Ljava/lang/String;

.field private tA:Z

.field private tB:I

.field private final tO:Ljava/lang/String;

.field private final tP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;",
            ">;"
        }
    .end annotation
.end field

.field private tQ:Lcom/google/android/gms/games/PlayerEntity;

.field private tR:Lcom/google/android/gms/games/GameEntity;

.field private final tS:Lcom/google/android/gms/internal/fq;

.field private tT:Z

.field private final tU:Landroid/os/Binder;

.field private final tV:J

.field private final tW:Z

.field private final tX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;ZZI)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v5, Lcom/google/android/gms/internal/dw$c;

    move-object/from16 v0, p4

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/dw$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    new-instance v6, Lcom/google/android/gms/internal/dw$g;

    move-object/from16 v0, p5

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/dw$g;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    const/16 v13, 0x1110

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/fl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;ZZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;ZZII)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/google/android/gms/internal/dw;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->tT:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->tA:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/fl;->tO:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/eg;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->jG:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->tU:Landroid/os/Binder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->tP:Ljava/util/Map;

    invoke-static {p0, p7}, Lcom/google/android/gms/internal/fq;->a(Lcom/google/android/gms/internal/fl;I)Lcom/google/android/gms/internal/fq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {p0, p8}, Lcom/google/android/gms/internal/fl;->setViewForPopups(Landroid/view/View;)V

    iput-boolean p10, p0, Lcom/google/android/gms/internal/fl;->tA:Z

    iput p11, p0, Lcom/google/android/gms/internal/fl;->tB:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/fl;->tV:J

    iput-boolean p9, p0, Lcom/google/android/gms/internal/fl;->tW:Z

    iput p12, p0, Lcom/google/android/gms/internal/fl;->tX:I

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/fl;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/fl;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method private E(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .locals 3

    new-instance v1, Lcom/google/android/gms/games/multiplayer/realtime/a;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/realtime/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/a;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/a;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/a;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/a;->close()V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fl;->E(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;

    move-result-object v0

    return-object v0
.end method

.method private ae(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/fp;->ag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Landroid/net/LocalSocketAddress;

    invoke-direct {v3, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/fr;

    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/fr;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->tP:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v2, "Unable to create socket. Service died."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/fn;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "GamesClientImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect() call failed on socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/fn;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method private dc()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->tQ:Lcom/google/android/gms/games/PlayerEntity;

    return-void
.end method

.method private de()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->tP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GamesClientImpl"

    const-string v3, "IOException:"

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/fn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->tP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method protected F(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fp;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/fp$a;->H(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fp;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$an;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$an;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a([BLjava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const-string v0, "Participant IDs must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/fp;->b([BLjava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "show_welcome_popup"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->tT:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/dw;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/fp;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$ak;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$ak;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;",
            "II)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$r;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$r;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->dq()Lcom/google/android/gms/games/leaderboard/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/c;->dr()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;Landroid/os/Bundle;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$bb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$bb;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getVariant()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getMinPlayers()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getInvitedPlayerIds()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;II[Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$ak;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$ak;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fp;->c(Lcom/google/android/gms/internal/fo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fq;->dn()Landroid/os/IBinder;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fq;->dm()Landroid/os/Bundle;

    move-result-object v5

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/fl$d;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$d;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;IIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$r;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$r;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;IZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    const-string v0, "playedWith"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid player collection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$ak;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$ak;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/fp;->d(Lcom/google/android/gms/internal/fo;Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;Ljava/lang/String;JLjava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/fl$aw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$aw;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$bd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$bd;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/fp;->d(Lcom/google/android/gms/internal/fo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$ai;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$ai;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$t;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$t;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/fp;->c(Lcom/google/android/gms/internal/fo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$bh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$bh;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "[B[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$bh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$bh;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$t;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$t;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fp;->b(Lcom/google/android/gms/internal/fo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;[I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$bj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$bj;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/dw$e;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.google.android.gms.games.key.isHeadless"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fl;->tW:Z

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.games.key.showConnectingPopup"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fl;->tA:Z

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.games.key.connectingPopupGravity"

    iget v1, p0, Lcom/google/android/gms/internal/fl;->tB:I

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.google.android.gms.games.key.sdkVariant"

    iget v1, p0, Lcom/google/android/gms/internal/fl;->tX:I

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const v2, 0x40ba50

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/fl;->jG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bO()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/fl;->tO:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fq;->dn()Landroid/os/IBinder;

    move-result-object v7

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/ec;->a(Lcom/google/android/gms/internal/eb;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_2

    aget-object v5, p1, v0

    const-string v6, "https://www.googleapis.com/auth/games"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "https://www.googleapis.com/auth/games.firstparty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    move v0, v4

    :goto_2
    const-string v2, "Cannot have both %s and %s!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "https://www.googleapis.com/auth/games"

    aput-object v5, v3, v1

    const-string v1, "https://www.googleapis.com/auth/games.firstparty"

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    :goto_3
    return-void

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const-string v0, "Games APIs requires %s to function."

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "https://www.googleapis.com/auth/games"

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    goto :goto_3
.end method

.method public aU()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->aU()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected am()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.service.START"

    return-object v0
.end method

.method protected an()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$au;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$au;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fq;->dn()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/fq;->dm()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/fl$d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fl$d;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fq;->dn()Landroid/os/IBinder;

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fq;->dm()Landroid/os/Bundle;

    move-result-object v5

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/fp;->b(Lcom/google/android/gms/internal/fo;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/fl$d;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$d;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;IIIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$r;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$r;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/fp;->b(Lcom/google/android/gms/internal/fo;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/a$c;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$f;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fq;->dn()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/fq;->dm()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/internal/fp;->b(Lcom/google/android/gms/internal/fo;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/fl$d;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fl$d;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public clearNotifications(I)V
    .locals 2
    .parameter "notificationTypes"

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/fp;->clearNotifications(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connect()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fl;->dc()V

    invoke-super {p0}, Lcom/google/android/gms/internal/dw;->connect()V

    return-void
.end method

.method public createRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 9
    .parameter "config"

    .prologue
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/fl$aq;

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomStatusUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/gms/internal/fl$aq;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->tU:Landroid/os/Binder;

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getVariant()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitedPlayerIds()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getAutoMatchCriteria()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->isSocketEnabled()Z

    move-result v6

    iget-wide v7, p0, Lcom/google/android/gms/internal/fl;->tV:J

    invoke-interface/range {v0 .. v8}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;Landroid/os/IBinder;I[Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$bb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$bb;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fp;->n(Lcom/google/android/gms/internal/fo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dd()I
    .locals 3

    const/16 v1, 0x1110

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->dd()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v2, "service died"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public df()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->df()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->tT:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->df()V

    iget-wide v1, p0, Lcom/google/android/gms/internal/fl;->tV:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/fp;->j(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/fl;->de()V

    invoke-super {p0}, Lcom/google/android/gms/internal/dw;->disconnect()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "Failed to notify client disconnect."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dismissTurnBasedMatch(Ljava/lang/String;)V
    .locals 2
    .parameter "matchId"

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/fp;->ak(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public e(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$bb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$bb;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fp;->o(Lcom/google/android/gms/internal/fo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$bd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$bd;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fp;->q(Lcom/google/android/gms/internal/fo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g(Lcom/google/android/gms/common/api/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$j;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$j;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fp;->d(Lcom/google/android/gms/internal/fo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public g(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$az;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$az;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fp;->p(Lcom/google/android/gms/internal/fo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAchievementsIntent()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->getAchievementsIntent()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllLeaderboardsIntent()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->getAllLeaderboardsIntent()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->getAppId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentAccountName()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->getCurrentAccountName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentGame()Lcom/google/android/gms/games/Game;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bP()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->tR:Lcom/google/android/gms/games/GameEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :try_start_1
    new-instance v1, Lcom/google/android/gms/games/GameBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->di()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/GameBuffer;->get(I)Lcom/google/android/gms/games/Game;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/Game;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->tR:Lcom/google/android/gms/games/GameEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->tR:Lcom/google/android/gms/games/GameEntity;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public getCurrentPlayer()Lcom/google/android/gms/games/Player;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bP()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->tQ:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :try_start_1
    new-instance v1, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->dg()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Lcom/google/android/gms/games/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/internal/fl;->tQ:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->tQ:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public getCurrentPlayerId()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->getCurrentPlayerId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInvitationInboxIntent()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->getInvitationInboxIntent()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeaderboardIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "leaderboardId"

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/fp;->getLeaderboardIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMatchInboxIntent()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->getMatchInboxIntent()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxTurnBasedMatchDataSize()I
    .locals 3

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->getMaxTurnBasedMatchDataSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v2, "service died"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public getPlayerSearchIntent()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->getPlayerSearchIntent()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRealTimeSelectOpponentsIntent(IIZ)Landroid/content/Intent;
    .locals 2
    .parameter "minPlayers"
    .parameter "maxPlayers"
    .parameter "allowAutomatch"

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/fp;->getRealTimeSelectOpponentsIntent(IIZ)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRealTimeSocketForParticipant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
    .locals 2
    .parameter "roomId"
    .parameter "participantId"

    .prologue
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/games/multiplayer/ParticipantUtils;->am(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad participant ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->tP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fl;->ae(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public getRealTimeWaitingRoomIntent(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
    .locals 2
    .parameter "room"
    .parameter "minParticipantsToStart"

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fp;->getSettingsIntent()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTurnBasedSelectOpponentsIntent(IIZ)Landroid/content/Intent;
    .locals 2
    .parameter "minPlayers"
    .parameter "maxPlayers"
    .parameter "allowAutomatch"

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/fp;->getTurnBasedSelectOpponentsIntent(IIZ)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(Lcom/google/android/gms/common/api/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$o;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/fp;->e(Lcom/google/android/gms/internal/fo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$bf;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$bf;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fp;->r(Lcom/google/android/gms/internal/fo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/fp;->i(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public j(Ljava/lang/String;I)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/fp;->j(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public joinRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .locals 7
    .parameter "config"

    .prologue
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/fl$aq;

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomStatusUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/google/android/gms/internal/fl$aq;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl;->tU:Landroid/os/Binder;

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->isSocketEnabled()Z

    move-result v4

    iget-wide v5, p0, Lcom/google/android/gms/internal/fl;->tV:J

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;Landroid/os/IBinder;Ljava/lang/String;ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public leaveRoom(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V
    .locals 2
    .parameter "listener"
    .parameter "roomId"

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    new-instance v1, Lcom/google/android/gms/internal/fl$aq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$aq;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/fp;->e(Lcom/google/android/gms/internal/fo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/fl;->de()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .parameter "connectionHint"

    .prologue
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fl;->tT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fq;->dl()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->tT:Z

    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fl;->tT:Z

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .parameter "cause"

    .prologue
    return-void
.end method

.method protected synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fl;->F(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fp;

    move-result-object v0

    return-object v0
.end method

.method public registerInvitationListener(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/fl$l;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$l;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    iget-wide v2, p0, Lcom/google/android/gms/internal/fl;->tV:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fo;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerMatchUpdateListener(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/fl$x;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/fl$x;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    iget-wide v2, p0, Lcom/google/android/gms/internal/fl;->tV:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/fp;->b(Lcom/google/android/gms/internal/fo;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendUnreliableRealTimeMessageToAll([BLjava/lang/String;)I
    .locals 2
    .parameter "messageData"
    .parameter "roomId"

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/fp;->b([BLjava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setGravityForPopups(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fq;->setGravity(I)V

    return-void
.end method

.method public setViewForPopups(Landroid/view/View;)V
    .locals 1
    .parameter "gamesContentView"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->tS:Lcom/google/android/gms/internal/fq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/fq;->e(Landroid/view/View;)V

    return-void
.end method

.method public unregisterInvitationListener()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    iget-wide v1, p0, Lcom/google/android/gms/internal/fl;->tV:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/fp;->k(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterMatchUpdateListener()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/fp;

    iget-wide v1, p0, Lcom/google/android/gms/internal/fl;->tV:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/fp;->l(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClientImpl"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/fn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

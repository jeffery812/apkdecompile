.class public final Lcom/google/android/gms/internal/dg;
.super Lcom/google/android/gms/internal/dw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/di;",
        ">;"
    }
.end annotation


# static fields
.field private static final lA:Lcom/google/android/gms/internal/dk;

.field private static final lQ:Ljava/lang/Object;

.field private static final lR:Ljava/lang/Object;


# instance fields
.field private final kw:Lcom/google/android/gms/cast/Cast$Listener;

.field private lB:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private final lC:Lcom/google/android/gms/cast/CastDevice;

.field private final lD:Lcom/google/android/gms/internal/dj;

.field private final lE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final lF:J

.field private lG:Ljava/lang/String;

.field private lH:Z

.field private lI:Z

.field private final lJ:Ljava/util/concurrent/atomic/AtomicLong;

.field private lK:Ljava/lang/String;

.field private lL:Ljava/lang/String;

.field private lM:Landroid/os/Bundle;

.field private lN:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;"
        }
    .end annotation
.end field

.field private lO:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private lP:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private lb:D

.field private lc:Z

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/dk;

    const-string v1, "CastClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/dg;->lA:Lcom/google/android/gms/internal/dk;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dg;->lQ:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/dg;->lR:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p6, p7, v0}, Lcom/google/android/gms/internal/dw;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/dg;->lC:Lcom/google/android/gms/cast/CastDevice;

    iput-object p5, p0, Lcom/google/android/gms/internal/dg;->kw:Lcom/google/android/gms/cast/Cast$Listener;

    iput-wide p3, p0, Lcom/google/android/gms/internal/dg;->lF:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dg;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dg;->lE:Ljava/util/Map;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/dg;->lI:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/dg;->lB:Lcom/google/android/gms/cast/ApplicationMetadata;

    iput-object v1, p0, Lcom/google/android/gms/internal/dg;->lG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/dg;->lb:D

    iput-boolean v3, p0, Lcom/google/android/gms/internal/dg;->lc:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dg;->lJ:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dg;->lN:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/dg$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dg$1;-><init>(Lcom/google/android/gms/internal/dg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dg;->lD:Lcom/google/android/gms/internal/dj;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dg;->lB:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dg;->lO:Lcom/google/android/gms/common/api/a$c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dg;->lK:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dg;Ljava/lang/String;DZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/dg;->a(Ljava/lang/String;DZ)V

    return-void
.end method

.method private a(Ljava/lang/String;DZ)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/dh;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iput-object p1, p0, Lcom/google/android/gms/internal/dg;->lG:Ljava/lang/String;

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/dg;->kw:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dg;->lH:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->kw:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/dg;->lb:D

    cmpl-double v0, p2, v3

    if-eqz v0, :cond_5

    iput-wide p2, p0, Lcom/google/android/gms/internal/dg;->lb:D

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/google/android/gms/internal/dg;->lc:Z

    if-eq p4, v3, :cond_2

    iput-boolean p4, p0, Lcom/google/android/gms/internal/dg;->lc:Z

    move v0, v1

    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/dg;->lA:Lcom/google/android/gms/internal/dk;

    const-string v4, "hasChange=%b, mFirstStatusUpdate=%b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    iget-boolean v6, p0, Lcom/google/android/gms/internal/dg;->lH:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/dk;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->kw:Lcom/google/android/gms/cast/Cast$Listener;

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dg;->lH:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->kw:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    :cond_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/dg;->lH:Z

    return-void

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/dg;->lI:Z

    return p1
.end method

.method private aX()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dg;->lI:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not connected to a device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic aY()Lcom/google/android/gms/internal/dk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/dg;->lA:Lcom/google/android/gms/internal/dk;

    return-object v0
.end method

.method static synthetic aZ()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/dg;->lQ:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/common/api/a$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lO:Lcom/google/android/gms/common/api/a$c;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dg;Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dg;->lP:Lcom/google/android/gms/common/api/a$c;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dg;->lL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic ba()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/dg;->lR:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/cast/Cast$Listener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->kw:Lcom/google/android/gms/cast/Cast$Listener;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/dg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private d(Lcom/google/android/gms/common/api/a$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/dg;->lQ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lO:Lcom/google/android/gms/common/api/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lO:Lcom/google/android/gms/common/api/a$c;

    new-instance v2, Lcom/google/android/gms/internal/dg$a;

    new-instance v3, Lcom/google/android/gms/common/api/Status;

    const/16 v4, 0x7d2

    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/dg$a;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/dg;->lO:Lcom/google/android/gms/common/api/a$c;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/dg;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lE:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lC:Lcom/google/android/gms/cast/CastDevice;

    return-object v0
.end method

.method private f(Lcom/google/android/gms/common/api/a$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/dg;->lR:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lP:Lcom/google/android/gms/common/api/a$c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x7d1

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/dg;->lP:Lcom/google/android/gms/common/api/a$c;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/dg;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lN:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/dg;)Lcom/google/android/gms/common/api/a$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lP:Lcom/google/android/gms/common/api/a$c;

    return-object v0
.end method


# virtual methods
.method public C(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel namespace cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->lE:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lE:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/di;->F(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume cannot be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    iget-wide v3, p0, Lcom/google/android/gms/internal/dg;->lb:D

    iget-boolean v5, p0, Lcom/google/android/gms/internal/dg;->lc:Z

    move-wide v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/di;->a(DDZ)V

    return-void
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    const/16 v1, 0x3e9

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_2

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/dg;->lI:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/dg;->lH:Z

    :goto_0
    if-ne p1, v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/dg;->lM:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->lM:Landroid/os/Bundle;

    const-string v2, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move p1, v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/dw;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/dg;->lI:Z

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/dw$e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/dg;->lA:Lcom/google/android/gms/internal/dk;

    const-string v1, "getServiceFromBroker(): mLastApplicationId=%s, mLastSessionId=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/dg;->lK:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/dg;->lL:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dk;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lC:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->putInBundle(Landroid/os/Bundle;)V

    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    iget-wide v1, p0, Lcom/google/android/gms/internal/dg;->lF:J

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lK:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "last_application_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->lK:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lL:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "last_session_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->lL:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const v2, 0x40ba50

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lD:Lcom/google/android/gms/internal/dj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dj;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ec;->a(Lcom/google/android/gms/internal/eb;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel namespace cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dg;->C(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->lE:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lE:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/di;->E(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/common/api/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/dg;->f(Lcom/google/android/gms/common/api/a$c;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/di;->D(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The message payload cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid namespace length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x1

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message exceeds maximum size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/dg;->aX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lJ:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/di;->a(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lN:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/google/android/gms/common/api/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/dg;->d(Lcom/google/android/gms/common/api/a$c;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/di;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public aU()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lM:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lM:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/dg;->lM:Landroid/os/Bundle;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/dw;->aU()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public aV()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    invoke-interface {v0}, Lcom/google/android/gms/internal/di;->aV()V

    return-void
.end method

.method public aW()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/dg;->aX()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/dg;->lb:D

    return-wide v0
.end method

.method protected am()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    return-object v0
.end method

.method protected an()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/dg;->d(Lcom/google/android/gms/common/api/a$c;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/di;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public disconnect()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/dg;->lE:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    invoke-interface {v0}, Lcom/google/android/gms/internal/di;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/internal/dw;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/google/android/gms/internal/dg;->lA:Lcom/google/android/gms/internal/dk;

    const-string v2, "Error while disconnecting the controller interface: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/dk;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/internal/dw;->disconnect()V

    throw v0
.end method

.method public e(Lcom/google/android/gms/common/api/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/dg;->f(Lcom/google/android/gms/common/api/a$c;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    invoke-interface {v0}, Lcom/google/android/gms/internal/di;->bb()V

    return-void
.end method

.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/dg;->aX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lB:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object v0
.end method

.method public getApplicationStatus()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/dg;->aX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dg;->lG:Ljava/lang/String;

    return-object v0
.end method

.method public isMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/dg;->aX()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dg;->lc:Z

    return v0
.end method

.method public n(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dg;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/di;

    iget-wide v1, p0, Lcom/google/android/gms/internal/dg;->lb:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/dg;->lc:Z

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/di;->a(ZDZ)V

    return-void
.end method

.method protected synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dg;->u(Landroid/os/IBinder;)Lcom/google/android/gms/internal/di;

    move-result-object v0

    return-object v0
.end method

.method protected u(Landroid/os/IBinder;)Lcom/google/android/gms/internal/di;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/di$a;->v(Landroid/os/IBinder;)Lcom/google/android/gms/internal/di;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/android/gms/internal/cg;
.super Ljava/lang/Object;


# instance fields
.field private final fx:Ljava/lang/Object;

.field private gv:Lcom/google/android/gms/internal/cw;

.field private hK:Ljava/lang/String;

.field private hL:Ljava/lang/String;

.field public final hM:Lcom/google/android/gms/internal/an;

.field public final hN:Lcom/google/android/gms/internal/an;

.field private hm:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->fx:Ljava/lang/Object;

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/cg;->hm:I

    new-instance v0, Lcom/google/android/gms/internal/cg$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cg$1;-><init>(Lcom/google/android/gms/internal/cg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->hM:Lcom/google/android/gms/internal/an;

    new-instance v0, Lcom/google/android/gms/internal/cg$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cg$2;-><init>(Lcom/google/android/gms/internal/cg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/cg;->hN:Lcom/google/android/gms/internal/an;

    iput-object p1, p0, Lcom/google/android/gms/internal/cg;->hK:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cg;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/cg;->hm:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cg;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->fx:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cg;->hL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/cg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->hK:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ap()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->fx:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->hL:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/cg;->hm:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->fx:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "Ad request service was interrupted."

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cg;->hL:Ljava/lang/String;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b(Lcom/google/android/gms/internal/cw;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/cg;->gv:Lcom/google/android/gms/internal/cw;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getErrorCode()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cg;->fx:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/cg;->hm:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

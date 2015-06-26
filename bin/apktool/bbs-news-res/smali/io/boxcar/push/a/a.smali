.class public final Lio/boxcar/push/a/a;
.super Ljava/lang/Object;
.source "TaskQueue.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private b:Ljava/util/concurrent/CountDownLatch;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Ljava/lang/Thread;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lio/boxcar/push/a/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/boxcar/push/a/a;->d:Z

    .line 29
    new-instance v0, Lio/boxcar/push/a/a$1;

    invoke-direct {v0, p0}, Lio/boxcar/push/a/a$1;-><init>(Lio/boxcar/push/a/a;)V

    iput-object v0, p0, Lio/boxcar/push/a/a;->e:Ljava/lang/Thread;

    .line 59
    sget-object v0, Lio/boxcar/push/a/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lio/boxcar/push/a/a;->f:I

    .line 60
    iget-object v0, p0, Lio/boxcar/push/a/a;->e:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TASK_QUEUE_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lio/boxcar/push/a/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lio/boxcar/push/a/a;->e()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "taskName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/boxcar/push/a/a;->d:Z

    .line 29
    new-instance v0, Lio/boxcar/push/a/a$1;

    invoke-direct {v0, p0}, Lio/boxcar/push/a/a$1;-><init>(Lio/boxcar/push/a/a;)V

    iput-object v0, p0, Lio/boxcar/push/a/a;->e:Ljava/lang/Thread;

    .line 70
    sget-object v0, Lio/boxcar/push/a/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lio/boxcar/push/a/a;->f:I

    .line 71
    iget-object v0, p0, Lio/boxcar/push/a/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lio/boxcar/push/a/a;->e()V

    .line 73
    return-void
.end method

.method static synthetic a(Lio/boxcar/push/a/a;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lio/boxcar/push/a/a;->c:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lio/boxcar/push/a/a;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lio/boxcar/push/a/a;->b:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic a(Lio/boxcar/push/a/a;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lio/boxcar/push/a/a;->d:Z

    return p1
.end method

.method public static d()Landroid/os/Handler;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    monitor-enter v2

    .line 159
    const/4 v0, 0x0

    :try_start_0
    iget-object v0, v0, Lio/boxcar/push/a/a;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private e()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/boxcar/push/a/a;->b:Ljava/util/concurrent/CountDownLatch;

    .line 165
    iget-object v0, p0, Lio/boxcar/push/a/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    iget-object v0, p0, Lio/boxcar/push/a/a;->b:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 167
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lio/boxcar/push/a/b;
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/boxcar/push/a/a;->b:Ljava/util/concurrent/CountDownLatch;

    .line 118
    new-instance v0, Lio/boxcar/push/a/a$2;

    invoke-direct {v0, p0}, Lio/boxcar/push/a/a$2;-><init>(Lio/boxcar/push/a/a;)V

    invoke-virtual {p0, v0}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lio/boxcar/push/a/a;->b:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/a/b;
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lio/boxcar/push/a/a;->d:Z

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lio/boxcar/push/a/b;

    const-string v1, "Queue is not running"

    invoke-direct {v0, v1}, Lio/boxcar/push/a/b;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/boxcar/push/a/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean v0, p0, Lio/boxcar/push/a/a;->d:Z

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lio/boxcar/push/a/a;->e()V

    .line 140
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-boolean v0, p0, Lio/boxcar/push/a/a;->d:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public abstract Lbbc/mobile/news/service/WakefullIntentService;
.super Landroid/app/IntentService;
.source "WakefullIntentService.java"


# static fields
.field private static final LOCK_NAME:Ljava/lang/String;

.field private static mLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lbbc/mobile/news/service/WakefullIntentService;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    const-class v0, Lbbc/mobile/news/service/WakefullIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/service/WakefullIntentService;->LOCK_NAME:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private static declared-synchronized getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 4
    .parameter "context"

    .prologue
    .line 22
    const-class v2, Lbbc/mobile/news/service/WakefullIntentService;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lbbc/mobile/news/service/WakefullIntentService;->mLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 23
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 24
    .local v0, mgr:Landroid/os/PowerManager;
    const/4 v1, 0x1

    sget-object v3, Lbbc/mobile/news/service/WakefullIntentService;->LOCK_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lbbc/mobile/news/service/WakefullIntentService;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    sget-object v1, Lbbc/mobile/news/service/WakefullIntentService;->mLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 28
    .end local v0           #mgr:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lbbc/mobile/news/service/WakefullIntentService;->mLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static sendWakefulWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    invoke-static {p0}, Lbbc/mobile/news/service/WakefullIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    return-void
.end method


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lbbc/mobile/news/service/WakefullIntentService;->onWakefulHandleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-static {p0}, Lbbc/mobile/news/service/WakefullIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    :goto_0
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 52
    :try_start_2
    invoke-static {p0}, Lbbc/mobile/news/service/WakefullIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    :goto_1
    throw v0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 39
    invoke-static {p0}, Lbbc/mobile/news/service/WakefullIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {p0}, Lbbc/mobile/news/service/WakefullIntentService;->getLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 43
    return-void
.end method

.method protected abstract onWakefulHandleIntent(Landroid/content/Intent;)V
.end method

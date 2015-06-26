.class public Lio/boxcar/push/BXCFacade;
.super Ljava/lang/Object;
.source "BXCFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/boxcar/push/BXCFacade$PushState;
    }
.end annotation


# static fields
.field private static a:Lio/boxcar/push/BXCFacade;


# instance fields
.field private final b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lio/boxcar/push/BXCCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lio/boxcar/push/a/a;

.field private d:Landroid/content/Context;

.field private e:Lio/boxcar/push/rest/c;

.field private f:Ljava/lang/String;

.field private g:Lio/boxcar/push/BXCConfig;

.field private h:Z

.field private i:Z

.field private j:Lio/boxcar/push/b/b;

.field private k:Z

.field private l:Lio/boxcar/push/BXCFacade$PushState;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroid/content/BroadcastReceiver;

.field private final o:Landroid/content/BroadcastReceiver;

.field private final p:Landroid/content/BroadcastReceiver;

.field private final q:Landroid/content/BroadcastReceiver;

.field private final r:Landroid/content/BroadcastReceiver;

.field private final s:Lio/boxcar/push/BXCCallback;

.field private final t:Lio/boxcar/push/rest/c$a;

.field private u:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/boxcar/push/BXCFacade;->b:Ljava/util/WeakHashMap;

    .line 539
    iput-object v2, p0, Lio/boxcar/push/BXCFacade;->c:Lio/boxcar/push/a/a;

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/boxcar/push/BXCFacade;->i:Z

    .line 547
    iput-boolean v1, p0, Lio/boxcar/push/BXCFacade;->k:Z

    .line 548
    sget-object v0, Lio/boxcar/push/BXCFacade$PushState;->unregistered:Lio/boxcar/push/BXCFacade$PushState;

    iput-object v0, p0, Lio/boxcar/push/BXCFacade;->l:Lio/boxcar/push/BXCFacade$PushState;

    .line 549
    iput-object v2, p0, Lio/boxcar/push/BXCFacade;->m:Ljava/util/List;

    .line 551
    new-instance v0, Lio/boxcar/push/BXCFacade$1;

    invoke-direct {v0, p0}, Lio/boxcar/push/BXCFacade$1;-><init>(Lio/boxcar/push/BXCFacade;)V

    iput-object v0, p0, Lio/boxcar/push/BXCFacade;->n:Landroid/content/BroadcastReceiver;

    .line 566
    new-instance v0, Lio/boxcar/push/BXCFacade$3;

    invoke-direct {v0, p0}, Lio/boxcar/push/BXCFacade$3;-><init>(Lio/boxcar/push/BXCFacade;)V

    iput-object v0, p0, Lio/boxcar/push/BXCFacade;->o:Landroid/content/BroadcastReceiver;

    .line 586
    new-instance v0, Lio/boxcar/push/BXCFacade$4;

    invoke-direct {v0, p0}, Lio/boxcar/push/BXCFacade$4;-><init>(Lio/boxcar/push/BXCFacade;)V

    iput-object v0, p0, Lio/boxcar/push/BXCFacade;->p:Landroid/content/BroadcastReceiver;

    .line 607
    new-instance v0, Lio/boxcar/push/BXCFacade$5;

    invoke-direct {v0, p0}, Lio/boxcar/push/BXCFacade$5;-><init>(Lio/boxcar/push/BXCFacade;)V

    iput-object v0, p0, Lio/boxcar/push/BXCFacade;->q:Landroid/content/BroadcastReceiver;

    .line 628
    new-instance v0, Lio/boxcar/push/BXCFacade$6;

    invoke-direct {v0, p0}, Lio/boxcar/push/BXCFacade$6;-><init>(Lio/boxcar/push/BXCFacade;)V

    iput-object v0, p0, Lio/boxcar/push/BXCFacade;->r:Landroid/content/BroadcastReceiver;

    .line 651
    new-instance v0, Lio/boxcar/push/BXCFacade$7;

    invoke-direct {v0, p0}, Lio/boxcar/push/BXCFacade$7;-><init>(Lio/boxcar/push/BXCFacade;)V

    iput-object v0, p0, Lio/boxcar/push/BXCFacade;->s:Lio/boxcar/push/BXCCallback;

    .line 828
    new-instance v0, Lio/boxcar/push/BXCFacade$8;

    invoke-direct {v0, p0}, Lio/boxcar/push/BXCFacade$8;-><init>(Lio/boxcar/push/BXCFacade;)V

    iput-object v0, p0, Lio/boxcar/push/BXCFacade;->t:Lio/boxcar/push/rest/c$a;

    .line 920
    iput-boolean v1, p0, Lio/boxcar/push/BXCFacade;->h:Z

    .line 921
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->c:Lio/boxcar/push/a/a;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lio/boxcar/push/a/a;

    invoke-direct {v0}, Lio/boxcar/push/a/a;-><init>()V

    iput-object v0, p0, Lio/boxcar/push/BXCFacade;->c:Lio/boxcar/push/a/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 921
    :catch_0
    move-exception v0

    const-string v1, "BXCF"

    const-string v2, "Error starting task queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->c:Lio/boxcar/push/a/a;

    invoke-virtual {v0}, Lio/boxcar/push/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->c:Lio/boxcar/push/a/a;

    invoke-virtual {v0}, Lio/boxcar/push/a/a;->b()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "BXCF"

    const-string v2, "Error restarting taskQueue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lio/boxcar/push/BXCFacade;Lio/boxcar/push/BXCFacade$PushState;)Lio/boxcar/push/BXCFacade$PushState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lio/boxcar/push/BXCFacade;->l:Lio/boxcar/push/BXCFacade$PushState;

    return-object p1
.end method

.method static synthetic a()Lio/boxcar/push/BXCFacade;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lio/boxcar/push/BXCFacade;->c()Lio/boxcar/push/BXCFacade;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Lio/boxcar/push/model/BXCRegistration;
    .locals 11
    .parameter "udid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/boxcar/push/model/BXCRegistration;"
        }
    .end annotation

    .prologue
    .line 1223
    .local p2, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 1224
    .local v3, expires:Ljava/util/Date;
    invoke-static {}, Lio/boxcar/push/BXCFacade;->k()Ljava/lang/String;

    move-result-object v1

    .line 1225
    .local v1, username:Ljava/lang/String;
    invoke-static {}, Lio/boxcar/push/BXCFacade;->l()Ljava/lang/String;

    move-result-object v10

    .line 1226
    .local v10, deviceName:Ljava/lang/String;
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 1229
    .local v8, osVersion:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->g:Lio/boxcar/push/BXCConfig;

    iget-object v2, v2, Lio/boxcar/push/BXCConfig;->j:Ljava/lang/String;

    invoke-static {v2}, Lio/boxcar/push/BXCFacade;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1235
    .local v9, senderIdHash:Ljava/lang/String;
    :goto_0
    new-instance v0, Lio/boxcar/push/model/BXCRegistration;

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->g:Lio/boxcar/push/BXCConfig;

    invoke-virtual {v2}, Lio/boxcar/push/BXCConfig;->getMode()Lio/boxcar/push/model/BXCRegistration$a;

    move-result-object v4

    iget-boolean v5, p0, Lio/boxcar/push/BXCFacade;->h:Z

    invoke-static {}, Lio/boxcar/push/BXCFacade;->m()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v9}, Lio/boxcar/push/model/BXCRegistration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lio/boxcar/push/model/BXCRegistration$a;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    .local v0, registration:Lio/boxcar/push/model/BXCRegistration;
    invoke-virtual {v0, v10}, Lio/boxcar/push/model/BXCRegistration;->setDeviceName(Ljava/lang/String;)V

    .line 1240
    return-object v0

    .line 1231
    .end local v0           #registration:Lio/boxcar/push/model/BXCRegistration;
    .end local v9           #senderIdHash:Ljava/lang/String;
    :catch_0
    move-exception v2

    const-string v2, "BXCF"

    const-string v4, "SHA algorithm not present"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const-string v9, ""

    .restart local v9       #senderIdHash:Ljava/lang/String;
    goto :goto_0
.end method

.method private a(I)Ljava/util/List;
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lio/boxcar/push/model/BXCNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1365
    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v2

    .line 1366
    .local v2, t:Lio/boxcar/push/b/b$a;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lio/boxcar/push/model/BXCNotification;>;"
    :try_start_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3}, Lio/boxcar/push/b/b;->e()Ljava/util/Date;

    move-result-object v1

    .line 1369
    .local v1, since:Ljava/util/Date;
    if-nez v1, :cond_0

    .line 1370
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1372
    :cond_0
    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, p1, v1}, Lio/boxcar/push/b/b;->a(ILjava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 1374
    invoke-virtual {v2}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 1380
    .end local v1           #since:Ljava/util/Date;
    :goto_0
    return-object v0

    .line 1376
    :catch_0
    move-exception v3

    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    .line 1378
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v4, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v3
.end method

.method private a(Landroid/content/Context;)V
    .locals 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/a;
        }
    .end annotation

    .prologue
    .line 1068
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->n:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "net.processone.push.GCM_REGISTERED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->o:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "net.processone.push.GCM_UNREGISTERED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->p:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "net.processone.push.GCM_ERROR"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->r:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "net.processone.push.INCOMING_NOTIFICATION"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->q:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "net.processone.push.AUTO_REGISTER"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-direct {p0, v2}, Lio/boxcar/push/BXCFacade;->b(Landroid/content/Context;)V

    .line 1071
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 1072
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, registrationId:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registering into GCM gateway with sender id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->g:Lio/boxcar/push/BXCConfig;

    invoke-virtual {v3}, Lio/boxcar/push/BXCConfig;->getSenderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/boxcar/push/BXCFacade;->g:Lio/boxcar/push/BXCConfig;

    invoke-virtual {v4}, Lio/boxcar/push/BXCConfig;->getSenderId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1089
    :goto_0
    return-void

    .line 1073
    .end local v0           #registrationId:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1074
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BXCF"

    const-string v3, "GCM is not supported on this device"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->g()V

    .line 1076
    new-instance v2, Lio/boxcar/push/a;

    const-string v3, "GCM not supported on this device"

    invoke-direct {v2, v3, v1}, Lio/boxcar/push/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1085
    .end local v1           #t:Ljava/lang/Throwable;
    .restart local v0       #registrationId:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lio/boxcar/push/BXCFacade;->a(Ljava/lang/String;)V

    .line 1087
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->p()V

    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "context"
    .parameter "callback"
    .parameter "username"
    .parameter "config"
    .parameter "handler"
    .parameter "appVersion"
    .parameter "deviceName"

    .prologue
    .line 105
    const-class v13, Lio/boxcar/push/BXCFacade;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->c()Lio/boxcar/push/BXCFacade;

    move-result-object v11

    .line 107
    .local v11, instance:Lio/boxcar/push/BXCFacade;
    new-instance v1, Lio/boxcar/push/b/a/b;

    const-string v2, "BXCF"

    invoke-direct {v1, p0, v2}, Lio/boxcar/push/b/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    .line 112
    sget-object v1, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {}, Lio/boxcar/push/BXCFacade;->m()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    if-eqz p5, :cond_5

    const/4 v9, 0x1

    .line 113
    .local v9, appVersionChanged:Z
    :goto_0
    if-eqz v9, :cond_0

    .line 114
    if-eqz p5, :cond_9

    .end local p5
    :goto_1
    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    move-object/from16 v0, p5

    invoke-interface {v1, v0}, Lio/boxcar/push/b/b;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lio/boxcar/push/b/c; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 116
    :goto_2
    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lio/boxcar/push/BXCFacade;->b(Ljava/lang/String;)V

    .line 119
    :cond_0
    const/4 v12, 0x0

    .line 120
    .local v12, usernameChanged:Z
    sget-object v1, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {}, Lio/boxcar/push/BXCFacade;->k()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    if-eqz p2, :cond_a

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_1

    .line 121
    const/4 v12, 0x1

    .line 122
    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Lio/boxcar/push/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lio/boxcar/push/b/c; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 124
    :cond_1
    :goto_4
    const/4 v10, 0x0

    .line 125
    .local v10, deviceNameChanged:Z
    sget-object v1, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {}, Lio/boxcar/push/BXCFacade;->l()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    if-eqz p6, :cond_e

    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_2

    .line 126
    const/4 v10, 0x1

    .line 127
    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    :try_start_5
    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    move-object/from16 v0, p6

    invoke-interface {v1, v0}, Lio/boxcar/push/b/b;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Lio/boxcar/push/b/c; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 130
    :cond_2
    :goto_6
    if-nez v12, :cond_3

    if-nez v9, :cond_3

    if-eqz v10, :cond_12

    :cond_3
    const/4 v1, 0x1

    :goto_7
    iput-boolean v1, v11, Lio/boxcar/push/BXCFacade;->k:Z

    .line 131
    move-object/from16 v0, p3

    iput-object v0, v11, Lio/boxcar/push/BXCFacade;->g:Lio/boxcar/push/BXCConfig;

    .line 132
    move-object/from16 v0, p3

    iget-boolean v1, v0, Lio/boxcar/push/BXCConfig;->b:Z

    if-eqz v1, :cond_4

    .line 133
    invoke-static {p0}, Lorg/openudid/android/a;->a(Landroid/content/Context;)V

    .line 136
    :cond_4
    move-object/from16 v0, p4

    invoke-direct {v11, p1, v0}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCCallback;Landroid/os/Handler;)V

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v11, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    .line 139
    new-instance v1, Lio/boxcar/push/rest/e;

    invoke-virtual/range {p3 .. p3}, Lio/boxcar/push/BXCConfig;->getPushScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lio/boxcar/push/BXCConfig;->getPushHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lio/boxcar/push/BXCConfig;->getPushPort()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lio/boxcar/push/BXCConfig;->getPushClientKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lio/boxcar/push/BXCConfig;->getPushClientSecret()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v11, Lio/boxcar/push/BXCFacade;->t:Lio/boxcar/push/rest/c$a;

    iget-object v8, v11, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-direct/range {v1 .. v8}, Lio/boxcar/push/rest/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/boxcar/push/rest/c$a;Landroid/content/Context;)V

    iput-object v1, v11, Lio/boxcar/push/BXCFacade;->e:Lio/boxcar/push/rest/c;

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, v11, Lio/boxcar/push/BXCFacade;->i:Z

    .line 143
    invoke-direct {v11, p0}, Lio/boxcar/push/BXCFacade;->b(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 144
    monitor-exit v13

    return-void

    .line 112
    .end local v9           #appVersionChanged:Z
    .end local v10           #deviceNameChanged:Z
    .end local v12           #usernameChanged:Z
    .restart local p5
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_6
    if-eqz p5, :cond_7

    :try_start_7
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 114
    .restart local v9       #appVersionChanged:Z
    :cond_9
    const-string p5, "unknownApp"

    goto/16 :goto_1

    .end local p5
    :catch_0
    move-exception v1

    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 105
    .end local v9           #appVersionChanged:Z
    .end local v11           #instance:Lio/boxcar/push/BXCFacade;
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1

    .line 114
    .restart local v9       #appVersionChanged:Z
    .restart local v11       #instance:Lio/boxcar/push/BXCFacade;
    :catchall_1
    move-exception v1

    :try_start_8
    iget-object v3, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v1

    .line 120
    .restart local v12       #usernameChanged:Z
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_b
    if-eqz p2, :cond_c

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 122
    :catch_1
    move-exception v1

    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto/16 :goto_4

    :catchall_2
    move-exception v1

    iget-object v3, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v1

    .line 125
    .restart local v10       #deviceNameChanged:Z
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_f
    if-eqz p6, :cond_10

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_5

    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 127
    :catch_2
    move-exception v1

    iget-object v1, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto/16 :goto_6

    :catchall_3
    move-exception v1

    iget-object v3, v11, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, v2}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 130
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_7
.end method

.method private a(Lio/boxcar/push/BXCCallback;Landroid/os/Handler;)V
    .locals 2
    .parameter "callback"
    .parameter "handler"

    .prologue
    .line 1211
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->b:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 1212
    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lio/boxcar/push/BXCFacade;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->p()V

    return-void
.end method

.method static synthetic a(Lio/boxcar/push/BXCFacade;Landroid/content/Context;)V
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    new-instance v0, Lio/boxcar/push/BXCFacade$9;

    invoke-direct {v0, p0, p1}, Lio/boxcar/push/BXCFacade$9;-><init>(Lio/boxcar/push/BXCFacade;Landroid/content/Context;)V

    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->c:Lio/boxcar/push/a/a;

    invoke-virtual {v1, v0}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lio/boxcar/push/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lio/boxcar/push/BXCFacade;Lio/boxcar/push/model/BXCNotification;)V
    .locals 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0, p1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/model/BXCNotification;)V

    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0}, Lio/boxcar/push/b/b;->b()V

    invoke-virtual {v1}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v0
.end method

.method static synthetic a(Lio/boxcar/push/BXCFacade;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lio/boxcar/push/BXCFacade;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/boxcar/push/BXCFacade;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lio/boxcar/push/BXCFacade;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lio/boxcar/push/BXCFacade;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lio/boxcar/push/BXCFacade;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lio/boxcar/push/BXCFacade;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/boxcar/push/BXCFacade;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lio/boxcar/push/BXCFacade;Ljava/util/Date;)V
    .locals 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/b/c;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0, p1}, Lio/boxcar/push/b/b;->a(Ljava/util/Date;)V

    invoke-virtual {v1}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v0
.end method

.method static synthetic a(Lio/boxcar/push/BXCFacade;Ljava/util/List;)V
    .locals 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0, p1}, Lio/boxcar/push/b/b;->a(Ljava/util/List;)V

    invoke-virtual {v1}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter "registrationId"

    .prologue
    .line 1097
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->o()Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, oldRegistrationId:Ljava/lang/String;
    invoke-direct {p0, p1}, Lio/boxcar/push/BXCFacade;->b(Ljava/lang/String;)V

    .line 1099
    iget-boolean v1, p0, Lio/boxcar/push/BXCFacade;->k:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lio/boxcar/push/BXCFacade;->k:Z

    .line 1101
    return-void

    .line 1099
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3
    .parameter "id"
    .parameter "state"

    .prologue
    .line 1265
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v0

    .line 1267
    .local v0, t:Lio/boxcar/push/b/b$a;
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, p1, p2}, Lio/boxcar/push/b/b;->a(Ljava/lang/String;I)V

    .line 1268
    invoke-virtual {v0}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 1272
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, v0}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 1273
    :goto_0
    return-void

    .line 1270
    :catch_0
    move-exception v1

    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, v0}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    .line 1272
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v0}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter "registrationId"
    .parameter "udid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p3, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->e:Lio/boxcar/push/rest/c;

    invoke-interface {v2, p1}, Lio/boxcar/push/rest/c;->a(Ljava/lang/String;)V

    .line 952
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lio/boxcar/push/BXCFacade;->k:Z

    if-nez v2, :cond_0

    .line 953
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->s:Lio/boxcar/push/BXCCallback;

    invoke-interface {v2}, Lio/boxcar/push/BXCCallback;->registrationSuccess()V

    .line 965
    :goto_0
    return-void

    .line 958
    :cond_0
    invoke-direct {p0, p2, p3}, Lio/boxcar/push/BXCFacade;->a(Ljava/lang/String;Ljava/util/List;)Lio/boxcar/push/model/BXCRegistration;

    move-result-object v1

    .line 961
    .local v1, registration:Lio/boxcar/push/model/BXCRegistration;
    :try_start_0
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->e:Lio/boxcar/push/rest/c;

    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-interface {v2, v3, v1}, Lio/boxcar/push/rest/c;->a(Landroid/content/Context;Lio/boxcar/push/model/BXCRegistration;)V
    :try_end_0
    .catch Lio/boxcar/push/rest/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, e:Lio/boxcar/push/rest/b;
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->s:Lio/boxcar/push/BXCCallback;

    invoke-interface {v2, v0}, Lio/boxcar/push/BXCCallback;->registrationFailed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lio/boxcar/push/BXCFacade;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lio/boxcar/push/BXCFacade;->k:Z

    return p1
.end method

.method public static declared-synchronized appBecameActive(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 526
    const-class v0, Lio/boxcar/push/BXCFacade;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized appBecameInactive(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 530
    const-class v0, Lio/boxcar/push/BXCFacade;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method static synthetic b()Lio/boxcar/push/BXCFacade;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    return-object v0
.end method

.method static synthetic b(Lio/boxcar/push/BXCFacade;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lio/boxcar/push/BXCFacade;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lio/boxcar/push/BXCFacade;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lio/boxcar/push/BXCFacade;->m:Ljava/util/List;

    return-object p1
.end method

.method private b(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-wide/32 v4, 0x5265c00

    .line 1293
    const-string v8, "net.processone.push.AUTO_REGISTER"

    monitor-enter v8

    .line 1294
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->u:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1295
    monitor-exit v8

    .line 1308
    :goto_0
    return-void

    .line 1297
    :cond_0
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1300
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "net.processone.push.AUTO_REGISTER"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v7, i:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1302
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lio/boxcar/push/BXCFacade;->u:Landroid/app/PendingIntent;

    .line 1304
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lio/boxcar/push/BXCFacade;->u:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1308
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v7           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method static synthetic b(Lio/boxcar/push/BXCFacade;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/a;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lio/boxcar/push/BXCFacade;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter "registrationId"

    .prologue
    .line 1536
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v0

    .line 1539
    .local v0, t:Lio/boxcar/push/b/b$a;
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, p1}, Lio/boxcar/push/b/b;->a(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {v0}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 1544
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, v0}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 1545
    :goto_0
    return-void

    .line 1542
    :catch_0
    move-exception v1

    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v1, v0}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    .line 1544
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v0}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v1
.end method

.method static synthetic b(Lio/boxcar/push/BXCFacade;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lio/boxcar/push/BXCFacade;->k:Z

    return v0
.end method

.method public static buildUrl(Lio/boxcar/push/model/BXCNotification;)Ljava/lang/String;
    .locals 3
    .parameter "notification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 393
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    new-instance v1, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v1, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_0
    invoke-virtual {p0}, Lio/boxcar/push/model/BXCNotification;->isRichPush()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .local v0, url:Ljava/lang/StringBuilder;
    sget-object v1, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v1, v1, Lio/boxcar/push/BXCFacade;->g:Lio/boxcar/push/BXCConfig;

    invoke-virtual {v1}, Lio/boxcar/push/BXCConfig;->getRichPushBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/push-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/boxcar/push/model/BXCNotification;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    .end local v0           #url:Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lio/boxcar/push/model/BXCNotification;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static c()Lio/boxcar/push/BXCFacade;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lio/boxcar/push/BXCFacade;

    invoke-direct {v0}, Lio/boxcar/push/BXCFacade;-><init>()V

    sput-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    .line 80
    :cond_0
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    return-object v0
.end method

.method static synthetic c(Lio/boxcar/push/BXCFacade;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1627
    const-string v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 1628
    .local v4, md:Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 1629
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1630
    .local v0, buffer:[B
    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 1631
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 1633
    .local v1, digest:[B
    const-string v2, ""

    .line 1634
    .local v2, hexStr:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_0

    .line 1635
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1634
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1637
    :cond_0
    return-object v2
.end method

.method private c(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1312
    const-string v1, "net.processone.push.AUTO_REGISTER"

    monitor-enter v1

    .line 1313
    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->u:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1315
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1317
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->u:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1318
    const/4 v0, 0x0

    iput-object v0, p0, Lio/boxcar/push/BXCFacade;->u:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1324
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized cleanNotificationsAndBadge(Landroid/content/Context;)V
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 481
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 484
    :cond_0
    :try_start_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 486
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 487
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v0, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    iget-object v4, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v4, v0}, Lio/boxcar/push/b/b;->b(Ljava/util/Date;)V

    iget-object v0, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0}, Lio/boxcar/push/b/b;->a()V

    invoke-virtual {v3}, Lio/boxcar/push/b/b$a;->a()V

    iget-object v0, v2, Lio/boxcar/push/BXCFacade;->e:Lio/boxcar/push/rest/c;

    iget-object v4, v2, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-interface {v0, v4}, Lio/boxcar/push/rest/c;->b(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lio/boxcar/push/rest/b; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lio/boxcar/push/b/c; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0, v3}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v4, v2, Lio/boxcar/push/BXCFacade;->s:Lio/boxcar/push/BXCCallback;

    invoke-interface {v4, v0}, Lio/boxcar/push/BXCCallback;->badgeResetFailed(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0, v3}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    iget-object v4, v2, Lio/boxcar/push/BXCFacade;->s:Lio/boxcar/push/BXCCallback;

    invoke-interface {v4, v0}, Lio/boxcar/push/BXCCallback;->badgeResetFailed(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v0, v3}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v3}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method static synthetic d(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->s:Lio/boxcar/push/BXCCallback;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1607
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1612
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1618
    .local v0, version:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1614
    .end local v0           #version:Ljava/lang/String;
    :catch_0
    move-exception v1

    const-string v0, "1.0"

    .restart local v0       #version:Ljava/lang/String;
    goto :goto_0
.end method

.method private static d()Z
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    if-eqz v0, :cond_0

    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-boolean v0, v0, Lio/boxcar/push/BXCFacade;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lio/boxcar/push/BXCFacade;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->j()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 969
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->j()Ljava/util/Date;

    move-result-object v0

    .line 971
    .local v0, lastRegistration:Ljava/util/Date;
    if-nez v0, :cond_1

    .line 979
    :cond_0
    :goto_0
    return v1

    .line 975
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Last registration time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 977
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 979
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 1026
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->e:Lio/boxcar/push/rest/c;

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-interface {v1, v2}, Lio/boxcar/push/rest/c;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Lio/boxcar/push/rest/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_0
    return-void

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    .local v0, e:Lio/boxcar/push/rest/b;
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->t:Lio/boxcar/push/rest/c$a;

    invoke-interface {v1, v0}, Lio/boxcar/push/rest/c$a;->d(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic f(Lio/boxcar/push/BXCFacade;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->e()Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1138
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1141
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1144
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/boxcar/push/BXCFacade;->c(Landroid/content/Context;)V

    .line 1145
    return-void
.end method

.method static synthetic g(Lio/boxcar/push/BXCFacade;)V
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    new-instance v0, Lio/boxcar/push/BXCFacade$2;

    invoke-direct {v0, p0}, Lio/boxcar/push/BXCFacade$2;-><init>(Lio/boxcar/push/BXCFacade;)V

    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->c:Lio/boxcar/push/a/a;

    invoke-virtual {v1, v0}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lio/boxcar/push/a/b; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getAlias()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 429
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 432
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {}, Lio/boxcar/push/BXCFacade;->k()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getConfig()Lio/boxcar/push/BXCConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 233
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 236
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v0, v0, Lio/boxcar/push/BXCFacade;->g:Lio/boxcar/push/BXCConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getDeviceName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 442
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 445
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {}, Lio/boxcar/push/BXCFacade;->l()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getLastEvents(I)Ljava/util/List;
    .locals 3
    .parameter "n"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lio/boxcar/push/model/BXCNotification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 518
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 521
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {v0, p0}, Lio/boxcar/push/BXCFacade;->a(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getState()Lio/boxcar/push/BXCFacade$PushState;
    .locals 2

    .prologue
    .line 533
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v0, v0, Lio/boxcar/push/BXCFacade;->l:Lio/boxcar/push/BXCFacade$PushState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSubscribedTags()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 257
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 260
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {v0}, Lio/boxcar/push/BXCFacade;->n()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getTags()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 244
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 247
    :cond_0
    :try_start_1
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v2, Lio/boxcar/push/BXCFacade;->e:Lio/boxcar/push/rest/c;

    iget-object v3, v2, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-interface {v0, v3}, Lio/boxcar/push/rest/c;->d(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lio/boxcar/push/rest/b; {:try_start_2 .. :try_end_2} :catch_0

    .line 248
    :goto_0
    monitor-exit v1

    return-void

    .line 247
    :catch_0
    move-exception v0

    :try_start_3
    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->s:Lio/boxcar/push/BXCCallback;

    invoke-interface {v2, v0}, Lio/boxcar/push/BXCCallback;->getTagsFailed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized getToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 455
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 458
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {v0}, Lio/boxcar/push/BXCFacade;->o()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getUDID()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 470
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 473
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v0, v0, Lio/boxcar/push/BXCFacade;->f:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized getUnconfirmedNotifications()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/boxcar/push/model/BXCNotification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 510
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 513
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {v0}, Lio/boxcar/push/BXCFacade;->i()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method static synthetic h(Lio/boxcar/push/BXCFacade;)Lio/boxcar/push/BXCConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->g:Lio/boxcar/push/BXCConfig;

    return-object v0
.end method

.method private h()Z
    .locals 4

    .prologue
    .line 1174
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->g:Lio/boxcar/push/BXCConfig;

    iget-boolean v2, v2, Lio/boxcar/push/BXCConfig;->b:Z

    if-nez v2, :cond_1

    .line 1175
    const/4 v0, 0x0

    .line 1191
    :cond_0
    return v0

    .line 1178
    :cond_1
    const/4 v1, 0x0

    .line 1180
    .local v1, retries:I
    invoke-static {}, Lorg/openudid/android/a;->b()Z

    move-result v0

    .line 1181
    .local v0, initialized:Z
    :goto_0
    if-nez v0, :cond_0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 1183
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1184
    invoke-static {}, Lorg/openudid/android/a;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1188
    add-int/lit8 v1, v1, 0x1

    .line 1189
    goto :goto_0

    .line 1186
    :catch_0
    move-exception v2

    const/4 v0, 0x0

    .line 1188
    add-int/lit8 v1, v1, 0x1

    .line 1189
    goto :goto_0

    .line 1188
    :catchall_0
    move-exception v2

    throw v2
.end method

.method private i()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/boxcar/push/model/BXCNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1244
    iget-object v4, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v3

    .line 1245
    .local v3, t:Lio/boxcar/push/b/b$a;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Lio/boxcar/push/model/BXCNotification;>;"
    const/4 v1, 0x0

    .line 1248
    .local v1, offset:I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v4, v1}, Lio/boxcar/push/b/b;->a(I)Ljava/util/List;

    move-result-object v0

    .line 1252
    .local v0, batch:Ljava/util/List;,"Ljava/util/List<Lio/boxcar/push/model/BXCNotification;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1253
    add-int/lit8 v1, v1, 0x64

    .line 1254
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    .line 1255
    invoke-virtual {v3}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    iget-object v4, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v4, v3}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 1261
    .end local v0           #batch:Ljava/util/List;,"Ljava/util/List<Lio/boxcar/push/model/BXCNotification;>;"
    :goto_0
    return-object v2

    .line 1257
    :catch_0
    move-exception v4

    iget-object v4, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v4, v3}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    .line 1259
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v5, v3}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v4
.end method

.method static synthetic i(Lio/boxcar/push/BXCFacade;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->b:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method private j()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1394
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v1

    .line 1395
    .local v1, t:Lio/boxcar/push/b/b$a;
    const/4 v0, 0x0

    .line 1398
    .local v0, date:Ljava/util/Date;
    :try_start_0
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2}, Lio/boxcar/push/b/b;->c()Ljava/util/Date;

    move-result-object v0

    .line 1399
    invoke-virtual {v1}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 1406
    :goto_0
    return-object v0

    .line 1401
    :catch_0
    move-exception v2

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    .line 1403
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v2
.end method

.method static synthetic j(Lio/boxcar/push/BXCFacade;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lio/boxcar/push/BXCFacade;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static k()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1410
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v1

    .line 1412
    .local v1, t:Lio/boxcar/push/b/b$a;
    const/4 v0, 0x0

    .line 1414
    .local v0, lastAlias:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2}, Lio/boxcar/push/b/b;->g()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1418
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 1421
    :goto_0
    return-object v0

    .line 1416
    :catch_0
    move-exception v2

    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    .line 1418
    :catchall_0
    move-exception v2

    sget-object v3, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v3, v3, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v2
.end method

.method private static l()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1438
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v1

    .line 1440
    .local v1, t:Lio/boxcar/push/b/b$a;
    const/4 v0, 0x0

    .line 1442
    .local v0, lastDeviceName:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2}, Lio/boxcar/push/b/b;->h()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1446
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 1449
    :goto_0
    return-object v0

    .line 1444
    :catch_0
    move-exception v2

    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    .line 1446
    :catchall_0
    move-exception v2

    sget-object v3, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v3, v3, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v2
.end method

.method static synthetic l(Lio/boxcar/push/BXCFacade;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1479
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v1

    .line 1481
    .local v1, t:Lio/boxcar/push/b/b$a;
    const/4 v0, 0x0

    .line 1483
    .local v0, appVersion:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2}, Lio/boxcar/push/b/b;->i()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1487
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 1490
    :goto_0
    return-object v0

    .line 1485
    :catch_0
    move-exception v2

    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    .line 1487
    :catchall_0
    move-exception v2

    sget-object v3, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v3, v3, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v2
.end method

.method static synthetic m(Lio/boxcar/push/BXCFacade;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lio/boxcar/push/BXCFacade;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lio/boxcar/push/BXCFacade;->f:Ljava/lang/String;

    return-object v0
.end method

.method private n()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1507
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v0

    .line 1508
    .local v0, t:Lio/boxcar/push/b/b$a;
    const/4 v1, 0x0

    .line 1510
    .local v1, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2}, Lio/boxcar/push/b/b;->f()Ljava/util/List;

    move-result-object v1

    .line 1511
    invoke-virtual {v0}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 1515
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v0}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 1517
    :goto_0
    return-object v1

    .line 1513
    :catch_0
    move-exception v2

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v0}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    .line 1515
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, v0}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v2
.end method

.method private o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1521
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lio/boxcar/push/b/b;->a(Z)Lio/boxcar/push/b/b$a;

    move-result-object v1

    .line 1522
    .local v1, t:Lio/boxcar/push/b/b$a;
    const/4 v0, 0x0

    .line 1524
    .local v0, registrationId:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2}, Lio/boxcar/push/b/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 1525
    invoke-virtual {v1}, Lio/boxcar/push/b/b$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lio/boxcar/push/b/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 1529
    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    .line 1531
    :goto_0
    return-object v0

    .line 1527
    :catch_0
    move-exception v2

    iget-object v2, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v2, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    goto :goto_0

    .line 1529
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/boxcar/push/BXCFacade;->j:Lio/boxcar/push/b/b;

    invoke-interface {v3, v1}, Lio/boxcar/push/b/b;->a(Lio/boxcar/push/b/b$a;)V

    throw v2
.end method

.method static synthetic o(Lio/boxcar/push/BXCFacade;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lio/boxcar/push/BXCFacade;->f()V

    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 1570
    new-instance v0, Lio/boxcar/push/BXCFacade$10;

    invoke-direct {v0, p0}, Lio/boxcar/push/BXCFacade$10;-><init>(Lio/boxcar/push/BXCFacade;)V

    .line 1586
    .local v0, task:Ljava/lang/Runnable;
    :try_start_0
    iget-object v1, p0, Lio/boxcar/push/BXCFacade;->c:Lio/boxcar/push/a/a;

    invoke-virtual {v1, v0}, Lio/boxcar/push/a/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lio/boxcar/push/a/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    :goto_0
    return-void

    .line 1588
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized ping(Landroid/content/Context;)V
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 496
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 499
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {v0}, Lio/boxcar/push/BXCFacade;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized register(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 296
    const-class v2, Lio/boxcar/push/BXCFacade;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Lio/boxcar/push/BXCException;

    const-string v3, "Not initialized"

    invoke-direct {v1, v3}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 299
    :cond_0
    :try_start_1
    sget-object v1, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {v1}, Lio/boxcar/push/BXCFacade;->n()Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .restart local v0       #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-static {p0, v0}, Lio/boxcar/push/BXCFacade;->register(Landroid/content/Context;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized register(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 272
    const-class v5, Lio/boxcar/push/BXCFacade;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 273
    new-instance v2, Lio/boxcar/push/BXCException;

    const-string v3, "Not initialized"

    invoke-direct {v2, v3}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    .line 276
    :cond_0
    :try_start_1
    sget-object v6, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    sget-object v4, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-boolean v4, v4, Lio/boxcar/push/BXCFacade;->k:Z

    if-nez v4, :cond_1

    sget-object v4, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {v4}, Lio/boxcar/push/BXCFacade;->n()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_5

    if-eqz p1, :cond_4

    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, v6, Lio/boxcar/push/BXCFacade;->k:Z

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Full registration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-boolean v3, v3, Lio/boxcar/push/BXCFacade;->k:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 278
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    sget-object v3, Lio/boxcar/push/BXCFacade$PushState;->registering:Lio/boxcar/push/BXCFacade$PushState;

    iput-object v3, v2, Lio/boxcar/push/BXCFacade;->l:Lio/boxcar/push/BXCFacade$PushState;

    .line 279
    if-nez p1, :cond_3

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .end local p1           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v1, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object p1, v1

    .line 282
    .end local v1           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1       #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iput-object p1, v2, Lio/boxcar/push/BXCFacade;->m:Ljava/util/List;

    .line 283
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {v2, p0}, Lio/boxcar/push/BXCFacade;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lio/boxcar/push/a; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    monitor-exit v5

    return-void

    :cond_4
    move v4, v2

    .line 276
    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    :try_start_2
    invoke-interface {v4, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {p1, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lio/boxcar/push/a; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    move v4, v3

    goto :goto_0

    :cond_7
    move v4, v2

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Lio/boxcar/push/a;
    :try_start_3
    new-instance v2, Lio/boxcar/push/BXCException;

    const-string v3, "GCM error"

    invoke-direct {v2, v3, v0}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static declared-synchronized registerCallback(Lio/boxcar/push/BXCCallback;)V
    .locals 2
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 370
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v0}, Lio/boxcar/push/BXCFacade;->registerCallback(Lio/boxcar/push/BXCCallback;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit v1

    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerCallback(Lio/boxcar/push/BXCCallback;Landroid/os/Handler;)V
    .locals 3
    .parameter "callback"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 355
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 358
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {v0, p0, p1}, Lio/boxcar/push/BXCFacade;->a(Lio/boxcar/push/BXCCallback;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;)V
    .locals 8
    .parameter "context"
    .parameter "callback"
    .parameter "username"
    .parameter "config"

    .prologue
    .line 188
    const-class v7, Lio/boxcar/push/BXCFacade;

    monitor-enter v7

    :try_start_0
    invoke-static {p0}, Lio/boxcar/push/BXCFacade;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, appVersion:Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lio/boxcar/push/BXCFacade;->a(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit v7

    return-void

    .line 188
    .end local v5           #appVersion:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized start(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;Landroid/os/Handler;)V
    .locals 8
    .parameter "context"
    .parameter "callback"
    .parameter "username"
    .parameter "config"
    .parameter "handler"

    .prologue
    .line 223
    const-class v7, Lio/boxcar/push/BXCFacade;

    monitor-enter v7

    :try_start_0
    invoke-static {p0}, Lio/boxcar/push/BXCFacade;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 224
    .local v5, appVersion:Ljava/lang/String;
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lio/boxcar/push/BXCFacade;->a(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit v7

    return-void

    .line 223
    .end local v5           #appVersion:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized start(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "callback"
    .parameter "username"
    .parameter "config"
    .parameter "handler"
    .parameter "deviceName"

    .prologue
    .line 206
    const-class v7, Lio/boxcar/push/BXCFacade;

    monitor-enter v7

    :try_start_0
    invoke-static {p0}, Lio/boxcar/push/BXCFacade;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .local v5, appVersion:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 207
    invoke-static/range {v0 .. v6}, Lio/boxcar/push/BXCFacade;->a(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit v7

    return-void

    .line 206
    .end local v5           #appVersion:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized start(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "callback"
    .parameter "username"
    .parameter "config"
    .parameter "deviceName"

    .prologue
    .line 175
    const-class v7, Lio/boxcar/push/BXCFacade;

    monitor-enter v7

    :try_start_0
    invoke-static {p0}, Lio/boxcar/push/BXCFacade;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, appVersion:Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lio/boxcar/push/BXCFacade;->a(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit v7

    return-void

    .line 175
    .end local v5           #appVersion:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized start(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "callback"
    .parameter "username"
    .parameter "config"
    .parameter "appVersion"
    .parameter "deviceName"

    .prologue
    .line 161
    const-class v7, Lio/boxcar/push/BXCFacade;

    monitor-enter v7

    :try_start_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lio/boxcar/push/BXCFacade;->a(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit v7

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static declared-synchronized stop(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 342
    const-class v2, Lio/boxcar/push/BXCFacade;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    new-instance v1, Lio/boxcar/push/BXCException;

    const-string v3, "Not initialized"

    invoke-direct {v1, v3}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 345
    :cond_0
    :try_start_1
    invoke-static {}, Lio/boxcar/push/BXCFacade;->c()Lio/boxcar/push/BXCFacade;

    move-result-object v0

    .line 346
    .local v0, instance:Lio/boxcar/push/BXCFacade;
    iget-object v1, v0, Lio/boxcar/push/BXCFacade;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 347
    const/4 v1, 0x0

    iput-object v1, v0, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    .line 348
    iget-object v1, v0, Lio/boxcar/push/BXCFacade;->e:Lio/boxcar/push/rest/c;

    invoke-interface {v1}, Lio/boxcar/push/rest/c;->a()V

    .line 349
    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/boxcar/push/BXCFacade;->i:Z

    .line 350
    const/4 v1, 0x0

    sput-object v1, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized trackNotification(Lio/boxcar/push/model/BXCNotification;Lio/boxcar/push/model/BXCTrackNotification$State;)V
    .locals 8
    .parameter "notification"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 416
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 419
    :cond_0
    :try_start_1
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Lio/boxcar/push/model/BXCTrackNotification;

    invoke-direct {v3, p0, p1, v0}, Lio/boxcar/push/model/BXCTrackNotification;-><init>(Lio/boxcar/push/model/BXCNotification;Lio/boxcar/push/model/BXCTrackNotification$State;Ljava/util/Date;)V

    invoke-virtual {p0}, Lio/boxcar/push/model/BXCNotification;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-direct {v2, v0, v4}, Lio/boxcar/push/BXCFacade;->a(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v2, Lio/boxcar/push/BXCFacade;->e:Lio/boxcar/push/rest/c;

    iget-object v4, v2, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-interface {v0, v4, v3}, Lio/boxcar/push/rest/c;->a(Landroid/content/Context;Lio/boxcar/push/model/BXCTrackNotification;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lio/boxcar/push/rest/b; {:try_start_2 .. :try_end_2} :catch_0

    .line 420
    :goto_0
    monitor-exit v1

    return-void

    .line 419
    :catch_0
    move-exception v0

    :try_start_3
    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->s:Lio/boxcar/push/BXCCallback;

    invoke-interface {v2, p0, v0}, Lio/boxcar/push/BXCCallback;->trackNotificationFailed(Lio/boxcar/push/model/BXCNotification;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized unregister()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 312
    const-class v0, Lio/boxcar/push/BXCFacade;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lio/boxcar/push/BXCFacade;->unregister(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit v0

    return-void

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unregister(Z)V
    .locals 4
    .parameter "gcm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 322
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    const-string v0, "BXCF"

    const-string v2, "Unregistering device"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 326
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->unregistering:Lio/boxcar/push/BXCFacade$PushState;

    iput-object v2, v0, Lio/boxcar/push/BXCFacade;->l:Lio/boxcar/push/BXCFacade$PushState;

    .line 327
    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, v2, Lio/boxcar/push/BXCFacade;->k:Z

    iget-object v0, v2, Lio/boxcar/push/BXCFacade;->e:Lio/boxcar/push/rest/c;

    iget-object v3, v2, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-interface {v0, v3}, Lio/boxcar/push/rest/c;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lio/boxcar/push/rest/b; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, v2, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-direct {v2, v0}, Lio/boxcar/push/BXCFacade;->c(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 328
    :goto_0
    if-eqz p0, :cond_1

    .line 329
    :try_start_4
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    sget-object v2, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v2, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v2}, Lcom/google/android/gcm/GCMRegistrar;->unregister(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_1
    :try_start_6
    invoke-direct {v0}, Lio/boxcar/push/BXCFacade;->g()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 333
    :goto_2
    monitor-exit v1

    return-void

    .line 327
    :catch_0
    move-exception v0

    :try_start_7
    iget-object v3, v2, Lio/boxcar/push/BXCFacade;->s:Lio/boxcar/push/BXCCallback;

    invoke-interface {v3, v0}, Lio/boxcar/push/BXCCallback;->unregisterFailed(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v0, v2, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-direct {v2, v0}, Lio/boxcar/push/BXCFacade;->c(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_9
    iget-object v3, v2, Lio/boxcar/push/BXCFacade;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Lio/boxcar/push/BXCFacade;->c(Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_3
    :try_start_a
    throw v0

    .line 331
    :cond_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    invoke-direct {v0}, Lio/boxcar/push/BXCFacade;->g()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    .line 329
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_3

    .line 327
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized unregisterCallback(Lio/boxcar/push/BXCCallback;)V
    .locals 3
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/boxcar/push/BXCException;
        }
    .end annotation

    .prologue
    .line 380
    const-class v1, Lio/boxcar/push/BXCFacade;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lio/boxcar/push/BXCException;

    const-string v2, "Not initialized"

    invoke-direct {v0, v2}, Lio/boxcar/push/BXCException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 383
    :cond_0
    :try_start_1
    sget-object v0, Lio/boxcar/push/BXCFacade;->a:Lio/boxcar/push/BXCFacade;

    iget-object v2, v0, Lio/boxcar/push/BXCFacade;->b:Ljava/util/WeakHashMap;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v0, Lio/boxcar/push/BXCFacade;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

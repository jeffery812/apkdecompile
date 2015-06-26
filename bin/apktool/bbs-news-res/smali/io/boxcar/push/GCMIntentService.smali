.class public Lio/boxcar/push/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 44
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 46
    .local v2, result:[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->getConfig()Lio/boxcar/push/BXCConfig;

    move-result-object v0

    .line 47
    .local v0, config:Lio/boxcar/push/BXCConfig;
    const/4 v3, 0x0

    invoke-virtual {v0}, Lio/boxcar/push/BXCConfig;->getSenderId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0           #config:Lio/boxcar/push/BXCConfig;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GCMIntentService - Sender id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    return-object v2

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "BXCF"

    const-string v4, "Cannot retrieve app config. Using default senderId"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const-string v3, "856665945963"

    aput-object v3, v2, v5

    goto :goto_0
.end method

.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 59
    const-string v0, "BXCF"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received GCM error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.processone.push.GCM_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "errorId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 61
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lio/boxcar/push/model/a/a;->a(Landroid/os/Bundle;)Lio/boxcar/push/model/BXCNotification;

    move-result-object v2

    .line 71
    .local v2, notification:Lio/boxcar/push/model/BXCNotification;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "net.processone.push.INCOMING_NOTIFICATION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "notification"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v2           #notification:Lio/boxcar/push/model/BXCNotification;
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Lorg/json/JSONException;
    const-string v3, "BXCF"

    const-string v4, "Error parsing JSON payload"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 99
    const-string v0, "BXCF"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received recoverable error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0, p1, p2}, Lcom/google/android/gcm/GCMBaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.processone.push.GCM_REGISTERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "registrationId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 83
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.processone.push.GCM_UNREGISTERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "registrationId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 89
    return-void
.end method

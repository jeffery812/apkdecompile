.class public final Lbbc/mobile/news/push/PushUtils;
.super Ljava/lang/Object;
.source "PushUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/push/PushUtils$SimpleBXCCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lbbc/mobile/news/push/PushUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUsePushBecauseOfAccount(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 55
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isPushCapable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->isInGoogleMarket()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    :goto_0
    return v1

    .line 36
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 37
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lbbc/mobile/news/push/PushUtils;->canUsePushBecauseOfAccount(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v2, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v3, "Push Notification Error"

    invoke-static {v2, v3, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    sget-object v2, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v3, "Push Notification Error"

    invoke-static {v2, v3, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 46
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/IllegalStateException;
    sget-object v2, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v3, "Push Notification Error"

    invoke-static {v2, v3, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static register(Lbbc/mobile/app/NewsApplication;)V
    .locals 6
    .parameter "app"

    .prologue
    .line 91
    invoke-static {p0}, Lbbc/mobile/news/push/PushUtils;->isPushCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    sget-object v3, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v4, "Device is not push-capable :-("

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->getState()Lio/boxcar/push/BXCFacade$PushState;

    move-result-object v1

    .line 96
    .local v1, state:Lio/boxcar/push/BXCFacade$PushState;
    sget-object v3, Lio/boxcar/push/BXCFacade$PushState;->registered:Lio/boxcar/push/BXCFacade$PushState;

    if-eq v1, v3, :cond_1

    sget-object v3, Lio/boxcar/push/BXCFacade$PushState;->registering:Lio/boxcar/push/BXCFacade$PushState;

    if-ne v1, v3, :cond_2

    .line 97
    :cond_1
    sget-object v3, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v4, "Already registering, no need to try again"

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getPushParameters()Lbbc/mobile/news/push/PushParameters;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/push/PushParameters;->getBreakingNewsTags()Ljava/util/List;

    move-result-object v2

    .line 102
    .local v2, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Registering on p1push service for tag: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {p0, v2}, Lio/boxcar/push/BXCFacade;->register(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v2           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Lio/boxcar/push/BXCException;
    sget-object v3, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v4, "Error registering for p1push"

    invoke-static {v3, v4, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static registerCallback(Lio/boxcar/push/BXCCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 128
    :try_start_0
    invoke-static {p0}, Lio/boxcar/push/BXCFacade;->registerCallback(Lio/boxcar/push/BXCCallback;)V
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Lio/boxcar/push/BXCException;
    sget-object v1, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v2, "Cannot register callback"

    invoke-static {v1, v2, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static start(Lbbc/mobile/app/NewsApplication;)V
    .locals 5
    .parameter "app"

    .prologue
    const/16 v4, 0x2f

    .line 64
    invoke-static {p0}, Lbbc/mobile/news/push/PushUtils;->isPushCapable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    sget-object v2, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v3, "Device is not push-capable :-("

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v2, Lbbc/beacon/android/DeviceIdentifierUUID;

    invoke-direct {v2, p0}, Lbbc/beacon/android/DeviceIdentifierUUID;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lbbc/beacon/android/DeviceIdentifierUUID;->getHashedDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, bxcAlias:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getPushParameters()Lbbc/mobile/news/push/PushParameters;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/push/PushParameters;->getProdKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 72
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, bxcName:Ljava/lang/String;
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getPushCallback()Lio/boxcar/push/BXCCallback;

    move-result-object v2

    .line 75
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getPushParameters()Lbbc/mobile/news/push/PushParameters;

    move-result-object v3

    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getPushNotificationStrategy()Lio/boxcar/push/ui/BXCNotificationStrategy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbbc/mobile/news/push/PushParameters;->newBXCConfig(Lio/boxcar/push/ui/BXCNotificationStrategy;)Lio/boxcar/push/BXCConfig;

    move-result-object v3

    .line 74
    invoke-static {p0, v2, v0, v3, v1}, Lio/boxcar/push/BXCFacade;->start(Landroid/content/Context;Lio/boxcar/push/BXCCallback;Ljava/lang/String;Lio/boxcar/push/BXCConfig;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stop(Lbbc/mobile/app/NewsApplication;)V
    .locals 3
    .parameter "app"

    .prologue
    .line 80
    sget-object v1, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v2, "Stopping facade"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :try_start_0
    invoke-static {p0}, Lio/boxcar/push/BXCFacade;->stop(Landroid/content/Context;)V
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Lio/boxcar/push/BXCException;
    sget-object v1, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v2, "Error stopping facade"

    invoke-static {v1, v2, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static unregister()V
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lio/boxcar/push/BXCFacade;->getState()Lio/boxcar/push/BXCFacade$PushState;

    move-result-object v1

    .line 113
    .local v1, state:Lio/boxcar/push/BXCFacade$PushState;
    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->unregistered:Lio/boxcar/push/BXCFacade$PushState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lio/boxcar/push/BXCFacade$PushState;->unregistering:Lio/boxcar/push/BXCFacade$PushState;

    if-ne v1, v2, :cond_1

    .line 114
    :cond_0
    sget-object v2, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v3, "Already unregistering, no need to try again"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 118
    :cond_1
    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->unregister()V
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Lio/boxcar/push/BXCException;
    sget-object v2, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v3, "Error unregistering push"

    invoke-static {v2, v3, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static unregisterCallback(Lio/boxcar/push/BXCCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 138
    :try_start_0
    invoke-static {p0}, Lio/boxcar/push/BXCFacade;->unregisterCallback(Lio/boxcar/push/BXCCallback;)V
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Lio/boxcar/push/BXCException;
    sget-object v1, Lbbc/mobile/news/push/PushUtils;->TAG:Ljava/lang/String;

    const-string v2, "Cannot unregister callback"

    invoke-static {v1, v2, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

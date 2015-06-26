.class public interface abstract Lio/boxcar/push/BXCCallback;
.super Ljava/lang/Object;
.source "BXCCallback.java"


# virtual methods
.method public abstract badgeResetFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract badgeResetSuccess()V
.end method

.method public abstract getTagsFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract getTagsSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notificationReceived(Lio/boxcar/push/model/BXCNotification;)V
.end method

.method public abstract registrationFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract registrationSuccess()V
.end method

.method public abstract trackNotificationFailed(Lio/boxcar/push/model/BXCNotification;Ljava/lang/Throwable;)V
.end method

.method public abstract trackNotificationSuccess(Lio/boxcar/push/model/BXCNotification;)V
.end method

.method public abstract unregisterFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract unregisterSuccess()V
.end method

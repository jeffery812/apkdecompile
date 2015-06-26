.class public Lbbc/mobile/news/push/PushUtils$SimpleBXCCallback;
.super Ljava/lang/Object;
.source "PushUtils.java"

# interfaces
.implements Lio/boxcar/push/BXCCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/push/PushUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleBXCCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public badgeResetFailed(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "th"

    .prologue
    .line 163
    return-void
.end method

.method public badgeResetSuccess()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public getTagsFailed(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "th"

    .prologue
    .line 175
    return-void
.end method

.method public getTagsSuccess(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public notificationReceived(Lio/boxcar/push/model/BXCNotification;)V
    .locals 0
    .parameter "notification"

    .prologue
    .line 160
    return-void
.end method

.method public registrationFailed(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "th"

    .prologue
    .line 151
    return-void
.end method

.method public registrationSuccess()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public trackNotificationFailed(Lio/boxcar/push/model/BXCNotification;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "notification"
    .parameter "th"

    .prologue
    .line 172
    return-void
.end method

.method public trackNotificationSuccess(Lio/boxcar/push/model/BXCNotification;)V
    .locals 0
    .parameter "notification"

    .prologue
    .line 169
    return-void
.end method

.method public unregisterFailed(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "th"

    .prologue
    .line 157
    return-void
.end method

.method public unregisterSuccess()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

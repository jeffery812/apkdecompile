.class public Lio/boxcar/push/model/BXCTrackNotification;
.super Ljava/lang/Object;
.source "BXCTrackNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/boxcar/push/model/BXCTrackNotification$State;
    }
.end annotation


# instance fields
.field private a:Lio/boxcar/push/model/BXCNotification;

.field private b:Lio/boxcar/push/model/BXCTrackNotification$State;

.field private c:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lio/boxcar/push/model/BXCNotification;Lio/boxcar/push/model/BXCTrackNotification$State;Ljava/util/Date;)V
    .locals 0
    .parameter "target"
    .parameter "state"
    .parameter "expires"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/boxcar/push/model/BXCTrackNotification;->a:Lio/boxcar/push/model/BXCNotification;

    .line 23
    iput-object p2, p0, Lio/boxcar/push/model/BXCTrackNotification;->b:Lio/boxcar/push/model/BXCTrackNotification$State;

    .line 24
    iput-object p3, p0, Lio/boxcar/push/model/BXCTrackNotification;->c:Ljava/util/Date;

    .line 25
    return-void
.end method


# virtual methods
.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lio/boxcar/push/model/BXCTrackNotification;->c:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Lio/boxcar/push/model/BXCTrackNotification$State;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/boxcar/push/model/BXCTrackNotification;->b:Lio/boxcar/push/model/BXCTrackNotification$State;

    return-object v0
.end method

.method public getTarget()Lio/boxcar/push/model/BXCNotification;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/boxcar/push/model/BXCTrackNotification;->a:Lio/boxcar/push/model/BXCNotification;

    return-object v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .local v2, json:Lorg/json/JSONObject;
    const-string v3, "state"

    iget-object v4, p0, Lio/boxcar/push/model/BXCTrackNotification;->b:Lio/boxcar/push/model/BXCTrackNotification$State;

    invoke-virtual {v4}, Lio/boxcar/push/model/BXCTrackNotification$State;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object v3, p0, Lio/boxcar/push/model/BXCTrackNotification;->c:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 33
    .local v0, expiresInSecs:Ljava/lang/Long;
    const-string v3, "expires"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iget-object v3, p0, Lio/boxcar/push/model/BXCTrackNotification;->a:Lio/boxcar/push/model/BXCNotification;

    invoke-virtual {v3}, Lio/boxcar/push/model/BXCNotification;->getId()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, id:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 37
    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    :cond_0
    return-object v2
.end method

.class public final Lcom/google/android/gms/cast/MediaStatus;
.super Ljava/lang/Object;


# static fields
.field public static final COMMAND_PAUSE:J = 0x1L

.field public static final COMMAND_SEEK:J = 0x2L

.field public static final COMMAND_SET_VOLUME:J = 0x4L

.field public static final COMMAND_SKIP_BACKWARD:J = 0x20L

.field public static final COMMAND_SKIP_FORWARD:J = 0x10L

.field public static final COMMAND_TOGGLE_MUTE:J = 0x8L

.field public static final IDLE_REASON_CANCELED:I = 0x2

.field public static final IDLE_REASON_ERROR:I = 0x4

.field public static final IDLE_REASON_FINISHED:I = 0x1

.field public static final IDLE_REASON_INTERRUPTED:I = 0x3

.field public static final IDLE_REASON_NONE:I = 0x0

.field public static final PLAYER_STATE_BUFFERING:I = 0x4

.field public static final PLAYER_STATE_IDLE:I = 0x1

.field public static final PLAYER_STATE_PAUSED:I = 0x3

.field public static final PLAYER_STATE_PLAYING:I = 0x2

.field public static final PLAYER_STATE_UNKNOWN:I


# instance fields
.field private kM:Lorg/json/JSONObject;

.field private kN:Lcom/google/android/gms/cast/MediaInfo;

.field private kV:J

.field private kW:D

.field private kX:I

.field private kY:I

.field private kZ:J

.field private la:J

.field private lb:D

.field private lc:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/MediaStatus;->a(Lorg/json/JSONObject;I)I

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "mediaSessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-wide v9, p0, Lcom/google/android/gms/cast/MediaStatus;->kV:J

    cmp-long v0, v7, v9

    if-eqz v0, :cond_11

    iput-wide v7, p0, Lcom/google/android/gms/cast/MediaStatus;->kV:J

    move v0, v1

    :goto_0
    const-string v3, "playerState"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "playerState"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "IDLE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move v3, v1

    :goto_1
    iget v7, p0, Lcom/google/android/gms/cast/MediaStatus;->kX:I

    if-eq v3, v7, :cond_0

    iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->kX:I

    or-int/lit8 v0, v0, 0x2

    :cond_0
    if-ne v3, v1, :cond_1

    const-string v3, "idleReason"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "idleReason"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "CANCELLED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :goto_2
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->kY:I

    if-eq v4, v1, :cond_1

    iput v4, p0, Lcom/google/android/gms/cast/MediaStatus;->kY:I

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const-string v1, "playbackRate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "playbackRate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->kW:D

    cmpl-double v3, v3, v1

    if-eqz v3, :cond_2

    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->kW:D

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const-string v1, "currentTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_3

    const-string v1, "currentTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/dh;->b(D)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->kZ:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->kZ:J

    or-int/lit8 v0, v0, 0x2

    :cond_3
    const-string v1, "supportedMediaCommands"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "supportedMediaCommands"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->la:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_4

    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->la:J

    or-int/lit8 v0, v0, 0x2

    :cond_4
    const-string v1, "volume"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_6

    const-string v1, "volume"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->lb:D

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_5

    iput-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->lb:D

    or-int/lit8 v0, v0, 0x2

    :cond_5
    const-string v2, "muted"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaStatus;->lc:Z

    if-eq v1, v2, :cond_6

    iput-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->lc:Z

    or-int/lit8 v0, v0, 0x2

    :cond_6
    const-string v1, "customData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "customData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->kM:Lorg/json/JSONObject;

    or-int/lit8 v0, v0, 0x2

    :cond_7
    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v2, v1}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->kN:Lcom/google/android/gms/cast/MediaInfo;

    or-int/lit8 v0, v0, 0x2

    const-string v2, "metadata"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x4

    :cond_8
    return v0

    :cond_9
    const-string v7, "PLAYING"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v3, v4

    goto/16 :goto_1

    :cond_a
    const-string v7, "PAUSED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    move v3, v5

    goto/16 :goto_1

    :cond_b
    const-string v7, "BUFFERING"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v6

    goto/16 :goto_1

    :cond_c
    const-string v4, "INTERRUPTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    goto/16 :goto_2

    :cond_d
    const-string v4, "FINISHED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v1

    goto/16 :goto_2

    :cond_e
    const-string v1, "ERROR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v4, v6

    goto/16 :goto_2

    :cond_f
    move v4, v2

    goto/16 :goto_2

    :cond_10
    move v3, v2

    goto/16 :goto_1

    :cond_11
    move v0, v2

    goto/16 :goto_0
.end method

.method public aQ()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->kV:J

    return-wide v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->kM:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIdleReason()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->kY:I

    return v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->kN:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->kW:D

    return-wide v0
.end method

.method public getPlayerState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->kX:I

    return v0
.end method

.method public getStreamPosition()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->kZ:J

    return-wide v0
.end method

.method public getStreamVolume()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->lb:D

    return-wide v0
.end method

.method public isMediaCommandSupported(J)Z
    .locals 4
    .parameter "mediaCommand"

    .prologue
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->la:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMute()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->lc:Z

    return v0
.end method

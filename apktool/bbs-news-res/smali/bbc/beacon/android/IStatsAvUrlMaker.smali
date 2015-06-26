.class public Lbbc/beacon/android/IStatsAvUrlMaker;
.super Ljava/lang/Object;
.source "IStatsAvUrlMaker.java"


# static fields
.field private static final ASSET_DURATION_PARAM:Ljava/lang/String; = "xtd"

.field private static final ASSET_TIME_PARAM:Ljava/lang/String; = "xta"

.field private static final BITRATE_KBPS_PARAM:Ljava/lang/String; = "xb"

.field private static final CONNECTION_COUNT_PARAM:Ljava/lang/String; = "xcc"

.field private static final CURRENT_LOCATION_PARAM:Ljava/lang/String; = "xtc"

.field private static final DEVICE_TYPE_PARAM:Ljava/lang/String; = "xpt"

.field private static final ERROR_PARAM:Ljava/lang/String; = "xe"

.field private static final EVENT_ID_PARAM:Ljava/lang/String; = "x0e"

.field private static final FROM_TIME_PARAM:Ljava/lang/String; = "xtf"

.field private static final ISTATS_AV_FILE:Ljava/lang/String; = "/o.gif?"

.field private static final ISTATS_AV_HOST:Ljava/lang/String; = "stats.bbc.co.uk"

.field private static final ISTATS_AV_PROTOCOL:Ljava/lang/String; = "http"

.field private static final ISTATS_CLOSE_EVENT:Ljava/lang/String; = "R_EMP_P_Close/i/m"

.field private static final ISTATS_END_EVENT:Ljava/lang/String; = "emSt_End/i/m"

.field private static final ISTATS_FAIL_EVENT:Ljava/lang/String; = "R_EMP_P_Fail/i/m"

.field private static final ISTATS_OPEN_CONNECTION:Ljava/lang/String; = "R_EMP_C_Open/i/m"

.field private static final ISTATS_PAUSE_EVENT:Ljava/lang/String; = "R_EMP_A_Pause/i/m"

.field private static final ISTATS_PLAYING_EVENT:Ljava/lang/String; = "R_EMP_A_Playing/i/m"

.field private static final ISTATS_PLAY_EVENT:Ljava/lang/String; = "emSt_Play/i/m"

.field private static final ISTATS_RESUME_EVENT:Ljava/lang/String; = "R_EMP_A_Resume/i/m"

.field private static final ISTATS_SCRUB_EVENT:Ljava/lang/String; = "R_EMP_A_Scrub/i/m"

.field private static final MAX_ERROR_MSG_LENGTH:I = 0x100

.field private static final PLAYLIST_TIME_PARAM:Ljava/lang/String; = "xtp"

.field private static final SESSION_ID_PARAM:Ljava/lang/String; = "x0s"

.field private static final SUBTITLES_PARAM:Ljava/lang/String; = "xs1"

.field private static final TO_TIME_PARAM:Ljava/lang/String; = "xtc"

.field private static final UNIQUE_ID_PARAM:Ljava/lang/String; = "xui"

.field private static final VERSION_PID_PARAM:Ljava/lang/String; = "xvp"

.field private static final X0M_PARAM:Ljava/lang/String; = "x0m"

.field private static final X0M_VALUE:Ljava/lang/String; = "0.23"


# instance fields
.field private final deviceType:Ljava/lang/String;

.field private eventId:I

.field private final uniqueIdentifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uniqueIdentifier"
    .parameter "deviceType"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uniqueIdentifier is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-nez p2, :cond_1

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iput-object p1, p0, Lbbc/beacon/android/IStatsAvUrlMaker;->uniqueIdentifier:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lbbc/beacon/android/IStatsAvUrlMaker;->deviceType:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lbbc/beacon/android/IStatsAvUrlMaker;->eventId:I

    .line 67
    return-void
.end method

.method private add(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter "session"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/beacon/android/IStatsAvSession;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 198
    .local p2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v5, p0, Lbbc/beacon/android/IStatsAvUrlMaker;->eventId:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lbbc/beacon/android/IStatsAvUrlMaker;->eventId:I

    .line 199
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "x0s"

    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getSessionId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6}, Lbbc/beacon/android/IStatsAvUrlMaker;->add(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v5, "xpt"

    iget-object v6, p0, Lbbc/beacon/android/IStatsAvUrlMaker;->deviceType:Ljava/lang/String;

    invoke-direct {p0, v3, v5, v6}, Lbbc/beacon/android/IStatsAvUrlMaker;->add(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v5, "x0m"

    const-string v6, "0.23"

    invoke-direct {p0, v3, v5, v6}, Lbbc/beacon/android/IStatsAvUrlMaker;->add(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v5, "x0e"

    iget v6, p0, Lbbc/beacon/android/IStatsAvUrlMaker;->eventId:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6}, Lbbc/beacon/android/IStatsAvUrlMaker;->add(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v5, "xui"

    iget-object v6, p0, Lbbc/beacon/android/IStatsAvUrlMaker;->uniqueIdentifier:Ljava/lang/String;

    invoke-direct {p0, v3, v5, v6}, Lbbc/beacon/android/IStatsAvUrlMaker;->add(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v5, "xvp"

    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getVersionPid()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v5, v6}, Lbbc/beacon/android/IStatsAvUrlMaker;->add(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getCustomParameters()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getCustomParameters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 208
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {v3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 212
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 213
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 214
    .local v2, key:Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lbbc/beacon/android/IStatsAvUrlMaker;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;ZIIIILjava/util/Map;)Ljava/lang/String;
    .locals 3
    .parameter "session"
    .parameter "isUsingSubtitles"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "currentLocation"
    .parameter "assetDuration"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/beacon/android/IStatsAvSession;",
            "ZIIII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 233
    .local p7, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "xtp"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v1, "xta"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "xtc"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v1, "xtd"

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v2, "xs1"

    if-eqz p2, :cond_1

    const-string v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "xb"

    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getBitrateKbps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "xcc"

    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getConnectionCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    if-eqz p7, :cond_0

    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, p7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 244
    :cond_0
    invoke-direct {p0, p1, v0}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 238
    :cond_1
    const-string v1, "0"

    goto :goto_0
.end method

.method private makeUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 5
    .parameter "session"
    .parameter "eventType"
    .parameter "extendedFields"

    .prologue
    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/o.gif?~RS~s~RS~iPlayer~RS~t~RS~"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 255
    const-string v4, "~RS~i~RS~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 256
    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getEpisodePid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lbbc/beacon/android/IStatsAvUrlMaker;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 257
    const-string v4, "~RS~p~RS~0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 258
    const-string v4, "~RS~a~RS~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getAudience()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lbbc/beacon/android/IStatsAvUrlMaker;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    const-string v4, "~RS~u~RS~0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 261
    const-string v4, "~RS~r~RS~0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 262
    const-string v4, "~RS~q~RS~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 263
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 264
    const-string v4, "~RS~z~RS~0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 265
    const-string v4, "~RS~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, unescapedUrl:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "http"

    const-string v4, "stats.bbc.co.uk"

    invoke-direct {v2, v3, v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .local v2, url:Ljava/net/URL;
    return-object v2

    .line 270
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 271
    .local v0, ex:Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 281
    :goto_0
    return-object v0

    .line 280
    :cond_0
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 281
    .local v0, encoded:Ljava/lang/String;
    goto :goto_0

    .line 282
    .end local v0           #encoded:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 283
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "UTF-8 not supported!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public makeCloseUrl(Lbbc/beacon/android/IStatsAvSession;ZIIIILjava/util/Map;)Ljava/net/URL;
    .locals 2
    .parameter "session"
    .parameter "isSubtitles"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "location"
    .parameter "assetDuration"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/beacon/android/IStatsAvSession;",
            "ZIIII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 106
    .local p7, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;ZIIIILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, extendedFields:Ljava/lang/String;
    const-string v1, "R_EMP_P_Close/i/m"

    invoke-direct {p0, p1, v1, v0}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public makeEndUrl(Lbbc/beacon/android/IStatsAvSession;ZIIILjava/util/Map;)Ljava/net/URL;
    .locals 4
    .parameter "session"
    .parameter "isSubtitles"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "assetDuration"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/beacon/android/IStatsAvSession;",
            "ZIII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 160
    .local p6, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "xtp"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v2, "xta"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v2, "xtd"

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    if-eqz p6, :cond_0

    invoke-interface {p6}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, p6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 166
    :cond_0
    invoke-direct {p0, p1, v1}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, extendedFields:Ljava/lang/String;
    const-string v2, "emSt_End/i/m"

    invoke-direct {p0, p1, v2, v0}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    return-object v2
.end method

.method public makeFailUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;
    .locals 5
    .parameter "session"
    .parameter "error"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/beacon/android/IStatsAvSession;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .local p3, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x100

    .line 173
    move-object v0, p2

    .line 174
    .local v0, errorMessage:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 175
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 179
    .local v2, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "xe"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v3, "xcc"

    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getConnectionCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v3, "xb"

    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getBitrateKbps()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 184
    :cond_1
    invoke-direct {p0, p1, v2}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, extendedFields:Ljava/lang/String;
    const-string v3, "R_EMP_P_Fail/i/m"

    invoke-direct {p0, p1, v3, v1}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    return-object v3
.end method

.method public makeOpenConnectionUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/net/URL;
    .locals 4
    .parameter "session"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/beacon/android/IStatsAvSession;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->incrementConnectionCount()V

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "xvp"

    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getVersionPid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "xcc"

    invoke-virtual {p1}, Lbbc/beacon/android/IStatsAvSession;->getConnectionCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 83
    :cond_0
    invoke-direct {p0, p1, v1}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, extendedFields:Ljava/lang/String;
    const-string v2, "R_EMP_C_Open/i/m"

    invoke-direct {p0, p1, v2, v0}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    return-object v2
.end method

.method public makePauseUrl(Lbbc/beacon/android/IStatsAvSession;IIILjava/util/Map;)Ljava/net/URL;
    .locals 4
    .parameter "session"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/beacon/android/IStatsAvSession;",
            "III",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 115
    .local p5, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "xtp"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v2, "xta"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v2, "xtc"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 121
    :cond_0
    invoke-direct {p0, p1, v1}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, extendedFields:Ljava/lang/String;
    const-string v2, "R_EMP_A_Pause/i/m"

    invoke-direct {p0, p1, v2, v0}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    return-object v2
.end method

.method public makePlayUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/net/URL;
    .locals 2
    .parameter "session"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/beacon/android/IStatsAvSession;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, extendedFields:Ljava/lang/String;
    const-string v1, "emSt_Play/i/m"

    invoke-direct {p0, p1, v1, v0}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public makePlayingUrl(Lbbc/beacon/android/IStatsAvSession;ZIIIILjava/util/Map;)Ljava/net/URL;
    .locals 2
    .parameter "session"
    .parameter "isSubtitles"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "location"
    .parameter "assetDuration"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/beacon/android/IStatsAvSession;",
            "ZIIII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 94
    .local p7, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;ZIIIILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, extendedFields:Ljava/lang/String;
    const-string v1, "R_EMP_A_Playing/i/m"

    invoke-direct {p0, p1, v1, v0}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method

.method public makeResumeUrl(Lbbc/beacon/android/IStatsAvSession;IIILjava/util/Map;)Ljava/net/URL;
    .locals 4
    .parameter "session"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/beacon/android/IStatsAvSession;",
            "III",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 130
    .local p5, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "xtp"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "xta"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v2, "xtc"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    :cond_0
    invoke-direct {p0, p1, v1}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, extendedFields:Ljava/lang/String;
    const-string v2, "R_EMP_A_Resume/i/m"

    invoke-direct {p0, p1, v2, v0}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    return-object v2
.end method

.method public makeScrubUrl(Lbbc/beacon/android/IStatsAvSession;IILjava/util/Map;)Ljava/net/URL;
    .locals 4
    .parameter "session"
    .parameter "fromTime"
    .parameter "toTime"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/beacon/android/IStatsAvSession;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .line 144
    .local p4, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "xtf"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v2, "xtc"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 149
    :cond_0
    invoke-direct {p0, p1, v1}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeExtendedFieldsFromSession(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, extendedFields:Ljava/lang/String;
    const-string v2, "R_EMP_A_Scrub/i/m"

    invoke-direct {p0, p1, v2, v0}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    return-object v2
.end method

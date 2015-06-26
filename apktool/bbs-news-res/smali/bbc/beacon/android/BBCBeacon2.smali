.class public Lbbc/beacon/android/BBCBeacon2;
.super Ljava/lang/Object;
.source "BBCBeacon2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BBCBeacon"


# instance fields
.field private final mIStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;

.field private final mIStatsUrlMaker:Lbbc/beacon/android/SitestatUrlMaker2;

.field private final mSender:Lbbc/beacon/android/HttpRequestSender;


# direct methods
.method public constructor <init>(Lbbc/beacon/android/SitestatUrlMaker2;Lbbc/beacon/android/IStatsAvUrlMaker;Lbbc/beacon/android/HttpRequestSender;)V
    .locals 0
    .parameter "maker"
    .parameter "iStatsAvUrlMaker"
    .parameter "sender"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsUrlMaker:Lbbc/beacon/android/SitestatUrlMaker2;

    .line 23
    iput-object p2, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;

    .line 24
    iput-object p3, p0, Lbbc/beacon/android/BBCBeacon2;->mSender:Lbbc/beacon/android/HttpRequestSender;

    .line 25
    return-void
.end method

.method private handleUrl(Ljava/lang/String;Z)V
    .locals 0
    .parameter "url"
    .parameter "canCache"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lbbc/beacon/android/BBCBeacon2;->sendUrl(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private sendUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lbbc/beacon/android/BBCBeacon2;->mSender:Lbbc/beacon/android/HttpRequestSender;

    invoke-virtual {v0, p1}, Lbbc/beacon/android/HttpRequestSender;->getUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public clearDeviceIdentifier(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 221
    const-string v1, "BBCBeacon"

    const-string v2, "clearDeviceIdentifier() clearing..."

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {p1}, Lbbc/beacon/android/DeviceIdentifierUUID;->clearDeviceId(Landroid/content/Context;)V

    .line 225
    invoke-static {p1}, Lbbc/beacon/android/BBCBeaconFactory;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, deviceID:Ljava/lang/String;
    const-string v1, "BBCBeacon"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearDeviceIdentifier() clearing... new id set! id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsUrlMaker:Lbbc/beacon/android/SitestatUrlMaker2;

    invoke-virtual {v1, v0}, Lbbc/beacon/android/SitestatUrlMaker2;->setVisitorId(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public setNonLiveEnvironment(Ljava/lang/String;)V
    .locals 1
    .parameter "environment"

    .prologue
    .line 216
    iget-object v0, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsUrlMaker:Lbbc/beacon/android/SitestatUrlMaker2;

    invoke-virtual {v0, p1}, Lbbc/beacon/android/SitestatUrlMaker2;->setIStatsSite(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public startNewAudioSession(Ljava/lang/String;Ljava/lang/String;)Lbbc/beacon/android/IStatsAvSession;
    .locals 2
    .parameter "episodePid"
    .parameter "versionPid"

    .prologue
    .line 94
    new-instance v0, Lbbc/beacon/android/IStatsAvSession;

    .line 95
    sget-object v1, Lbbc/beacon/android/IStatsAvSession$Audience;->AUDIO:Lbbc/beacon/android/IStatsAvSession$Audience;

    .line 94
    invoke-direct {v0, p1, p2, v1}, Lbbc/beacon/android/IStatsAvSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lbbc/beacon/android/IStatsAvSession$Audience;)V

    .line 96
    .local v0, session:Lbbc/beacon/android/IStatsAvSession;
    return-object v0
.end method

.method public startNewVideoSession(Ljava/lang/String;Ljava/lang/String;)Lbbc/beacon/android/IStatsAvSession;
    .locals 2
    .parameter "episodePid"
    .parameter "versionPid"

    .prologue
    .line 87
    new-instance v0, Lbbc/beacon/android/IStatsAvSession;

    .line 88
    sget-object v1, Lbbc/beacon/android/IStatsAvSession$Audience;->VIDEO:Lbbc/beacon/android/IStatsAvSession$Audience;

    .line 87
    invoke-direct {v0, p1, p2, v1}, Lbbc/beacon/android/IStatsAvSession;-><init>(Ljava/lang/String;Ljava/lang/String;Lbbc/beacon/android/IStatsAvSession$Audience;)V

    .line 89
    .local v0, session:Lbbc/beacon/android/IStatsAvSession;
    return-object v0
.end method

.method public trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "counterName"
    .parameter "actionType"
    .parameter "actionName"

    .prologue
    .line 66
    :try_start_0
    iget-object v2, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsUrlMaker:Lbbc/beacon/android/SitestatUrlMaker2;

    invoke-virtual {v2, p1, p2, p3}, Lbbc/beacon/android/SitestatUrlMaker2;->makeActionUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, url:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    .line 69
    .end local v1           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 70
    .local v0, ex:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public trackActionWithCustomParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "counterName"
    .parameter "actionType"
    .parameter "actionName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p4, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsUrlMaker:Lbbc/beacon/android/SitestatUrlMaker2;

    invoke-virtual {v2, p1, p2, p3, p4}, Lbbc/beacon/android/SitestatUrlMaker2;->makeActionUrlWithCustomParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, url:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-void

    .line 79
    .end local v1           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 80
    .local v0, ex:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public trackClose(Lbbc/beacon/android/IStatsAvSession;ZIIII)V
    .locals 8
    .parameter "session"
    .parameter "isUsingSubtitles"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "currentLocation"
    .parameter "assetDuration"

    .prologue
    .line 138
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lbbc/beacon/android/BBCBeacon2;->trackCloseWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;ZIIIILjava/util/Map;)V

    .line 139
    return-void
.end method

.method public trackCloseWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;ZIIIILjava/util/Map;)V
    .locals 9
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p7, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeCloseUrl(Lbbc/beacon/android/IStatsAvSession;ZIIIILjava/util/Map;)Ljava/net/URL;

    move-result-object v8

    .line 148
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method public trackEnd(Lbbc/beacon/android/IStatsAvSession;ZIII)V
    .locals 7
    .parameter "session"
    .parameter "isUsingSubtitles"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "assetDuration"

    .prologue
    .line 194
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lbbc/beacon/android/BBCBeacon2;->trackEndWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;ZIIILjava/util/Map;)V

    .line 195
    return-void
.end method

.method public trackEndWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;ZIIILjava/util/Map;)V
    .locals 8
    .parameter "session"
    .parameter "isUsingSubtitles"
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p6, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeEndUrl(Lbbc/beacon/android/IStatsAvSession;ZIIILjava/util/Map;)Ljava/net/URL;

    move-result-object v7

    .line 202
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V

    .line 203
    return-void
.end method

.method public trackError(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "error"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbbc/beacon/android/BBCBeacon2;->trackErrorWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/util/Map;)V

    .line 207
    return-void
.end method

.method public trackErrorWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p3, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;

    invoke-virtual {v1, p1, p2, p3}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeFailUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v0

    .line 212
    .local v0, url:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V

    .line 213
    return-void
.end method

.method public trackOpenConnection(Lbbc/beacon/android/IStatsAvSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbbc/beacon/android/BBCBeacon2;->trackOpenConnectionWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public trackOpenConnectionWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)V
    .locals 3
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;

    invoke-virtual {v1, p1, p2}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeOpenConnectionUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v0

    .line 114
    .local v0, url:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V

    .line 115
    return-void
.end method

.method public trackPageView(Ljava/lang/String;)V
    .locals 3
    .parameter "counterName"

    .prologue
    .line 42
    :try_start_0
    iget-object v2, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsUrlMaker:Lbbc/beacon/android/SitestatUrlMaker2;

    invoke-virtual {v2, p1}, Lbbc/beacon/android/SitestatUrlMaker2;->makePageViewUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, url:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-void

    .line 46
    .end local v1           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 47
    .local v0, ex:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public trackPageViewWithCustomParameters(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "counterName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsUrlMaker:Lbbc/beacon/android/SitestatUrlMaker2;

    .line 55
    invoke-virtual {v2, p1, p2}, Lbbc/beacon/android/SitestatUrlMaker2;->makePageViewUrlWithCustomParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, url:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 58
    .end local v1           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 59
    .local v0, ex:Ljava/net/URISyntaxException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public trackPause(Lbbc/beacon/android/IStatsAvSession;III)V
    .locals 6
    .parameter "session"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "currentLocation"

    .prologue
    .line 154
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lbbc/beacon/android/BBCBeacon2;->trackPauseWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;IIILjava/util/Map;)V

    .line 155
    return-void
.end method

.method public trackPauseWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;IIILjava/util/Map;)V
    .locals 7
    .parameter "session"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "currentLocation"
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p5, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lbbc/beacon/android/IStatsAvUrlMaker;->makePauseUrl(Lbbc/beacon/android/IStatsAvSession;IIILjava/util/Map;)Ljava/net/URL;

    move-result-object v6

    .line 162
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V

    .line 163
    return-void
.end method

.method public trackPlayInitiated(Lbbc/beacon/android/IStatsAvSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbbc/beacon/android/BBCBeacon2;->trackPlayInitiatedWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)V

    .line 101
    return-void
.end method

.method public trackPlayInitiatedWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)V
    .locals 3
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;

    invoke-virtual {v1, p1, p2}, Lbbc/beacon/android/IStatsAvUrlMaker;->makePlayUrl(Lbbc/beacon/android/IStatsAvSession;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v0

    .line 105
    .local v0, url:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public trackPlaying(Lbbc/beacon/android/IStatsAvSession;ZIIII)V
    .locals 8
    .parameter "session"
    .parameter "isUsingSubtitles"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "currentLocation"
    .parameter "assetDuration"

    .prologue
    .line 121
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lbbc/beacon/android/BBCBeacon2;->trackPlayingWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;ZIIIILjava/util/Map;)V

    .line 122
    return-void
.end method

.method public trackPlayingWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;ZIIIILjava/util/Map;)V
    .locals 9
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p7, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lbbc/beacon/android/IStatsAvUrlMaker;->makePlayingUrl(Lbbc/beacon/android/IStatsAvSession;ZIIIILjava/util/Map;)Ljava/net/URL;

    move-result-object v8

    .line 131
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V

    .line 132
    return-void
.end method

.method public trackResume(Lbbc/beacon/android/IStatsAvSession;III)V
    .locals 6
    .parameter "session"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "currentLocation"

    .prologue
    .line 168
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lbbc/beacon/android/BBCBeacon2;->trackResumeWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;IIILjava/util/Map;)V

    .line 169
    return-void
.end method

.method public trackResumeWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;IIILjava/util/Map;)V
    .locals 7
    .parameter "session"
    .parameter "playlistTime"
    .parameter "assetTime"
    .parameter "currentLocation"
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p5, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeResumeUrl(Lbbc/beacon/android/IStatsAvSession;IIILjava/util/Map;)Ljava/net/URL;

    move-result-object v6

    .line 176
    .local v6, url:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V

    .line 177
    return-void
.end method

.method public trackScrub(Lbbc/beacon/android/IStatsAvSession;II)V
    .locals 1
    .parameter "session"
    .parameter "fromTime"
    .parameter "toTime"

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lbbc/beacon/android/BBCBeacon2;->trackScrubWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;IILjava/util/Map;)V

    .line 182
    return-void
.end method

.method public trackScrubWithCustomParameters(Lbbc/beacon/android/IStatsAvSession;IILjava/util/Map;)V
    .locals 3
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p4, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lbbc/beacon/android/BBCBeacon2;->mIStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;

    invoke-virtual {v1, p1, p2, p3, p4}, Lbbc/beacon/android/IStatsAvUrlMaker;->makeScrubUrl(Lbbc/beacon/android/IStatsAvSession;IILjava/util/Map;)Ljava/net/URL;

    move-result-object v0

    .line 188
    .local v0, url:Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbbc/beacon/android/BBCBeacon2;->handleUrl(Ljava/lang/String;Z)V

    .line 189
    return-void
.end method

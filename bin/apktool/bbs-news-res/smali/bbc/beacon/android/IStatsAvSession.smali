.class public Lbbc/beacon/android/IStatsAvSession;
.super Ljava/lang/Object;
.source "IStatsAvSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/beacon/android/IStatsAvSession$Audience;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "undefined"


# instance fields
.field private _audience:Ljava/lang/String;

.field private _bitrateKbps:I

.field private _connectionCount:I

.field private _episodePid:Ljava/lang/String;

.field private final _sessionId:Ljava/lang/String;

.field private _versionPid:Ljava/lang/String;

.field private customParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lbbc/beacon/android/IStatsAvSession$Audience;)V
    .locals 1
    .parameter "episodePid"
    .parameter "versionPid"
    .parameter "audience"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/beacon/android/IStatsAvSession;->_sessionId:Ljava/lang/String;

    .line 37
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lbbc/beacon/android/IStatsAvSession$Audience;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbbc/beacon/android/IStatsAvSession;->_audience:Ljava/lang/String;

    .line 38
    if-eqz p1, :cond_1

    .end local p1
    :goto_1
    iput-object p1, p0, Lbbc/beacon/android/IStatsAvSession;->_episodePid:Ljava/lang/String;

    .line 39
    if-eqz p2, :cond_2

    .end local p2
    :goto_2
    iput-object p2, p0, Lbbc/beacon/android/IStatsAvSession;->_versionPid:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lbbc/beacon/android/IStatsAvSession;->_connectionCount:I

    .line 41
    return-void

    .line 37
    .restart local p1
    .restart local p2
    :cond_0
    const-string v0, "undefined"

    goto :goto_0

    .line 38
    :cond_1
    const-string p1, "undefined"

    goto :goto_1

    .line 39
    .end local p1
    :cond_2
    const-string p2, "undefined"

    goto :goto_2
.end method


# virtual methods
.method getAudience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lbbc/beacon/android/IStatsAvSession;->_audience:Ljava/lang/String;

    return-object v0
.end method

.method getBitrateKbps()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lbbc/beacon/android/IStatsAvSession;->_bitrateKbps:I

    return v0
.end method

.method getConnectionCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lbbc/beacon/android/IStatsAvSession;->_connectionCount:I

    return v0
.end method

.method public getCustomParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lbbc/beacon/android/IStatsAvSession;->customParameters:Ljava/util/Map;

    return-object v0
.end method

.method getEpisodePid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lbbc/beacon/android/IStatsAvSession;->_episodePid:Ljava/lang/String;

    return-object v0
.end method

.method getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lbbc/beacon/android/IStatsAvSession;->_sessionId:Ljava/lang/String;

    return-object v0
.end method

.method getVersionPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lbbc/beacon/android/IStatsAvSession;->_versionPid:Ljava/lang/String;

    return-object v0
.end method

.method incrementConnectionCount()V
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lbbc/beacon/android/IStatsAvSession;->_connectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbbc/beacon/android/IStatsAvSession;->_connectionCount:I

    .line 77
    return-void
.end method

.method setAudience(Ljava/lang/String;)V
    .locals 0
    .parameter "audience"

    .prologue
    .line 52
    iput-object p1, p0, Lbbc/beacon/android/IStatsAvSession;->_audience:Ljava/lang/String;

    .line 53
    return-void
.end method

.method setBitrateKbps(I)V
    .locals 0
    .parameter "bitrateKbps"

    .prologue
    .line 84
    iput p1, p0, Lbbc/beacon/android/IStatsAvSession;->_bitrateKbps:I

    .line 85
    return-void
.end method

.method public setCustomParameters(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lbbc/beacon/android/IStatsAvSession;->customParameters:Ljava/util/Map;

    .line 93
    return-void
.end method

.method setEpisodePid(Ljava/lang/String;)V
    .locals 0
    .parameter "episodePid"

    .prologue
    .line 60
    iput-object p1, p0, Lbbc/beacon/android/IStatsAvSession;->_episodePid:Ljava/lang/String;

    .line 61
    return-void
.end method

.method setVersionPid(Ljava/lang/String;)V
    .locals 0
    .parameter "versionPid"

    .prologue
    .line 68
    iput-object p1, p0, Lbbc/beacon/android/IStatsAvSession;->_versionPid:Ljava/lang/String;

    .line 69
    return-void
.end method

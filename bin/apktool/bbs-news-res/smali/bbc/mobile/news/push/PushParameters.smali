.class public Lbbc/mobile/news/push/PushParameters;
.super Ljava/lang/Object;
.source "PushParameters.java"


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private breakingNewsTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private port:I

.field private prodKey:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private senderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lbbc/mobile/news/push/PushParameters;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBreakingNewsTags()Ljava/util/List;
    .locals 1
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
    .line 112
    iget-object v0, p0, Lbbc/mobile/news/push/PushParameters;->breakingNewsTags:Ljava/util/List;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lbbc/mobile/news/push/PushParameters;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lbbc/mobile/news/push/PushParameters;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lbbc/mobile/news/push/PushParameters;->port:I

    return v0
.end method

.method public getProdKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lbbc/mobile/news/push/PushParameters;->prodKey:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lbbc/mobile/news/push/PushParameters;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lbbc/mobile/news/push/PushParameters;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lbbc/mobile/news/push/PushParameters;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public newBXCConfig(Lio/boxcar/push/ui/BXCNotificationStrategy;)Lio/boxcar/push/BXCConfig;
    .locals 7
    .parameter "strategy"

    .prologue
    .line 24
    new-instance v0, Lio/boxcar/push/BXCConfig;

    iget-object v1, p0, Lbbc/mobile/news/push/PushParameters;->scheme:Ljava/lang/String;

    iget-object v2, p0, Lbbc/mobile/news/push/PushParameters;->host:Ljava/lang/String;

    iget v3, p0, Lbbc/mobile/news/push/PushParameters;->port:I

    iget-object v4, p0, Lbbc/mobile/news/push/PushParameters;->key:Ljava/lang/String;

    iget-object v5, p0, Lbbc/mobile/news/push/PushParameters;->secret:Ljava/lang/String;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lio/boxcar/push/BXCConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/boxcar/push/ui/BXCNotificationStrategy;)V

    .line 25
    .local v0, config:Lio/boxcar/push/BXCConfig;
    iget-object v1, p0, Lbbc/mobile/news/push/PushParameters;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/boxcar/push/BXCConfig;->setRichPushBaseUrl(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lbbc/mobile/news/push/PushParameters;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/boxcar/push/BXCConfig;->setSenderId(Ljava/lang/String;)V

    .line 27
    return-object v0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "baseUrl"

    .prologue
    .line 97
    iput-object p1, p0, Lbbc/mobile/news/push/PushParameters;->baseUrl:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setBreakingNewsTags(Ljava/util/List;)V
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
    .line 117
    .local p1, breakingNewsTags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lbbc/mobile/news/push/PushParameters;->breakingNewsTags:Ljava/util/List;

    .line 118
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 47
    iput-object p1, p0, Lbbc/mobile/news/push/PushParameters;->host:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 77
    iput-object p1, p0, Lbbc/mobile/news/push/PushParameters;->key:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 57
    iput p1, p0, Lbbc/mobile/news/push/PushParameters;->port:I

    .line 58
    return-void
.end method

.method public setProdKey(Ljava/lang/String;)V
    .locals 0
    .parameter "prodKey"

    .prologue
    .line 107
    iput-object p1, p0, Lbbc/mobile/news/push/PushParameters;->prodKey:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0
    .parameter "scheme"

    .prologue
    .line 37
    iput-object p1, p0, Lbbc/mobile/news/push/PushParameters;->scheme:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "secret"

    .prologue
    .line 87
    iput-object p1, p0, Lbbc/mobile/news/push/PushParameters;->secret:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 0
    .parameter "senderId"

    .prologue
    .line 67
    iput-object p1, p0, Lbbc/mobile/news/push/PushParameters;->senderId:Ljava/lang/String;

    .line 68
    return-void
.end method

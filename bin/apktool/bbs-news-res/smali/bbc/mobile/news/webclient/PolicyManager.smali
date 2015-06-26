.class public Lbbc/mobile/news/webclient/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkUpdateAvailable(Lbbc/mobile/news/model/Policy;)I
    .locals 1
    .parameter "policy"

    .prologue
    .line 91
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/model/Policy;->getCheckUpdateAvailable()I

    move-result v0

    goto :goto_0
.end method

.method public static final isInsideUK(Lbbc/mobile/news/model/Policy;)Z
    .locals 1
    .parameter "policy"

    .prologue
    .line 58
    if-nez p0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/model/Policy;->isInsideUK()Z

    move-result v0

    goto :goto_0
.end method

.method public static final isKillSwitch(Lbbc/mobile/news/model/Policy;)Z
    .locals 1
    .parameter "policy"

    .prologue
    .line 71
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/model/Policy;->isKillSwitch()Z

    move-result v0

    goto :goto_0
.end method

.method public static final isPollingDisabled(Lbbc/mobile/news/model/Policy;)Z
    .locals 1
    .parameter "policy"

    .prologue
    .line 80
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/model/Policy;->isPollingDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static final loadPolicy(Ljava/lang/String;)Lbbc/mobile/news/model/Policy;
    .locals 6
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 28
    if-eqz p0, :cond_0

    .line 32
    :try_start_0
    new-instance v3, Lbbc/mobile/news/webclient/WebClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 33
    .local v3, webClient:Lbbc/mobile/news/webclient/WebClient;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lbbc/mobile/news/webclient/WebClient;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    .line 35
    .local v1, is:Ljava/io/InputStream;
    invoke-virtual {v3, v1}, Lbbc/mobile/news/webclient/WebClient;->parseAsJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2

    .line 37
    .local v2, json:Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 38
    new-instance v4, Lbbc/mobile/news/model/Policy;

    invoke-direct {v4, v2}, Lbbc/mobile/news/model/Policy;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v3           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :goto_0
    return-object v4

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 42
    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    move-object v4, v5

    .line 46
    goto :goto_0
.end method

.class public Lbbc/mobile/news/webclient/TickerManager;
.super Ljava/lang/Object;
.source "TickerManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get(Ljava/lang/String;I)Lbbc/mobile/news/model/Ticker;
    .locals 6
    .parameter "url"
    .parameter "strategy"

    .prologue
    .line 14
    const/4 v3, 0x0

    .line 19
    .local v3, ticker:Lbbc/mobile/news/model/Ticker;
    :try_start_0
    new-instance v4, Lbbc/mobile/news/webclient/WebClient;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 20
    .local v4, webClient:Lbbc/mobile/news/webclient/WebClient;
    invoke-virtual {v4, p0, p1}, Lbbc/mobile/news/webclient/WebClient;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 22
    .local v1, is:Ljava/io/InputStream;
    if-nez v1, :cond_0

    const/4 v5, 0x0

    .line 35
    .end local v1           #is:Ljava/io/InputStream;
    .end local v4           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :goto_0
    return-object v5

    .line 24
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v4       #webClient:Lbbc/mobile/news/webclient/WebClient;
    :cond_0
    invoke-virtual {v4, v1}, Lbbc/mobile/news/webclient/WebClient;->parseAsJSON(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v2

    .line 25
    .local v2, json:Lorg/json/JSONObject;
    invoke-static {v2}, Lbbc/mobile/news/model/Ticker;->create(Lorg/json/JSONObject;)Lbbc/mobile/news/model/Ticker;

    move-result-object v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v4}, Lbbc/mobile/news/webclient/WebClient;->writeToCache()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #json:Lorg/json/JSONObject;
    .end local v4           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :cond_1
    :goto_1
    move-object v5, v3

    .line 35
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static final reloadAll()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

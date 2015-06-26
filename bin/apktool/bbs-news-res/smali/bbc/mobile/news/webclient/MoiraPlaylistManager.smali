.class public Lbbc/mobile/news/webclient/MoiraPlaylistManager;
.super Ljava/lang/Object;
.source "MoiraPlaylistManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final read(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "uri"
    .parameter "strategy"

    .prologue
    const/4 v2, 0x0

    .line 18
    :try_start_0
    new-instance v3, Lbbc/mobile/news/webclient/WebClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 19
    .local v3, webClient:Lbbc/mobile/news/webclient/WebClient;
    invoke-virtual {v3, p0, p1}, Lbbc/mobile/news/webclient/WebClient;->getInputStream(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    .line 21
    .local v1, is:Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 29
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :goto_0
    return-object v2

    .line 23
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v3       #webClient:Lbbc/mobile/news/webclient/WebClient;
    :cond_0
    invoke-virtual {v3, v1}, Lbbc/mobile/news/webclient/WebClient;->parseAsText(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 24
    .local v2, text:Ljava/lang/String;
    goto :goto_0

    .line 26
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

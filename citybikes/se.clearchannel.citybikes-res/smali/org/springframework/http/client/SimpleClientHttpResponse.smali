.class final Lorg/springframework/http/client/SimpleClientHttpResponse;
.super Lorg/springframework/http/client/AbstractClientHttpResponse;
.source "SimpleClientHttpResponse.java"


# static fields
.field private static final AUTH_ERROR:Ljava/lang/String; = "Received authentication challenge is null"

.field private static final AUTH_ERROR_JELLY_BEAN:Ljava/lang/String; = "No authentication challenges found"

.field private static final PROXY_AUTH_ERROR:Ljava/lang/String; = "Received HTTP_PROXY_AUTH (407) code while not using proxy"


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private headers:Lorg/springframework/http/HttpHeaders;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/springframework/http/client/AbstractClientHttpResponse;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->connection:Ljava/net/HttpURLConnection;

    .line 50
    return-void
.end method

.method private handleIOException(Ljava/io/IOException;)I
    .locals 2
    .parameter "ex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const-string v0, "Received authentication challenge is null"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "No authentication challenges found"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    sget-object v0, Lorg/springframework/http/HttpStatus;->UNAUTHORIZED:Lorg/springframework/http/HttpStatus;

    invoke-virtual {v0}, Lorg/springframework/http/HttpStatus;->value()I

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 71
    :cond_1
    const-string v0, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lorg/springframework/http/HttpStatus;->PROXY_AUTHENTICATION_REQUIRED:Lorg/springframework/http/HttpStatus;

    invoke-virtual {v0}, Lorg/springframework/http/HttpStatus;->value()I

    move-result v0

    goto :goto_0

    .line 74
    :cond_2
    throw p1
.end method


# virtual methods
.method protected closeInternal()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 121
    return-void
.end method

.method protected getBodyInternal()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 115
    .local v0, errorStream:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .end local v0           #errorStream:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .restart local v0       #errorStream:Ljava/io/InputStream;
    :cond_0
    iget-object v1, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaders()Lorg/springframework/http/HttpHeaders;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    iget-object v2, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->headers:Lorg/springframework/http/HttpHeaders;

    if-nez v2, :cond_1

    .line 93
    new-instance v2, Lorg/springframework/http/HttpHeaders;

    invoke-direct {v2}, Lorg/springframework/http/HttpHeaders;-><init>()V

    iput-object v2, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->headers:Lorg/springframework/http/HttpHeaders;

    .line 95
    iget-object v2, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->headers:Lorg/springframework/http/HttpHeaders;

    iget-object v3, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/springframework/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    const/4 v0, 0x1

    .line 101
    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    .end local v0           #i:I
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->headers:Lorg/springframework/http/HttpHeaders;

    return-object v2

    .line 105
    .restart local v0       #i:I
    .restart local v1       #name:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->headers:Lorg/springframework/http/HttpHeaders;

    iget-object v3, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/springframework/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRawStatusCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 56
    :goto_0
    return v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, ex:Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/springframework/http/client/SimpleClientHttpResponse;->handleIOException(Ljava/io/IOException;)I

    move-result v1

    goto :goto_0
.end method

.method public getStatusCode()Lorg/springframework/http/HttpStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/springframework/http/client/SimpleClientHttpResponse;->getRawStatusCode()I

    move-result v0

    invoke-static {v0}, Lorg/springframework/http/HttpStatus;->valueOf(I)Lorg/springframework/http/HttpStatus;

    move-result-object v0

    return-object v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lorg/springframework/http/client/SimpleClientHttpResponse;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, ex:Ljava/io/IOException;
    invoke-direct {p0, v0}, Lorg/springframework/http/client/SimpleClientHttpResponse;->handleIOException(Ljava/io/IOException;)I

    move-result v1

    invoke-static {v1}, Lorg/springframework/http/HttpStatus;->valueOf(I)Lorg/springframework/http/HttpStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/springframework/http/HttpStatus;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

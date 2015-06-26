.class final Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;
.super Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;
.source "SimpleBufferingClientHttpRequest.java"


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0
    .parameter "connection"

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 45
    return-void
.end method


# virtual methods
.method protected executeInternal(Lorg/springframework/http/HttpHeaders;[B)Lorg/springframework/http/client/ClientHttpResponse;
    .locals 7
    .parameter "headers"
    .parameter "bufferedOutput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p1}, Lorg/springframework/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    .local v1, headerName:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    .local v2, headerValue:Ljava/lang/String;
    iget-object v5, p0, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1           #headerName:Ljava/lang/String;
    .end local v2           #headerValue:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    iget-object v5, p0, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;->connection:Ljava/net/HttpURLConnection;

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 72
    :cond_2
    iget-object v5, p0, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 73
    iget-object v5, p0, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    iget-object v5, p0, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-static {p2, v5}, Lorg/springframework/util/FileCopyUtils;->copy([BLjava/io/OutputStream;)V

    .line 77
    :cond_3
    new-instance v5, Lorg/springframework/http/client/SimpleClientHttpResponse;

    iget-object v6, p0, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-direct {v5, v6}, Lorg/springframework/http/client/SimpleClientHttpResponse;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v5
.end method

.method public getMethod()Lorg/springframework/http/HttpMethod;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/http/HttpMethod;->valueOf(Ljava/lang/String;)Lorg/springframework/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, ex:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get HttpURLConnection URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

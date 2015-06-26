.class final Lorg/springframework/http/client/HttpComponentsClientHttpRequest;
.super Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;
.source "HttpComponentsClientHttpRequest.java"


# instance fields
.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private final httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 0
    .parameter "httpClient"
    .parameter "httpRequest"
    .parameter "httpContext"

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 56
    iput-object p2, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 57
    iput-object p3, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 58
    return-void
.end method


# virtual methods
.method public executeInternal(Lorg/springframework/http/HttpHeaders;[B)Lorg/springframework/http/client/ClientHttpResponse;
    .locals 11
    .parameter "headers"
    .parameter "bufferedOutput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p1}, Lorg/springframework/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, headerName:Ljava/lang/String;
    const-string v8, "Content-Length"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Transfer-Encoding"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 73
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    .local v3, headerValue:Ljava/lang/String;
    iget-object v8, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v8, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2           #headerName:Ljava/lang/String;
    .end local v3           #headerValue:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v8, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v8, v8, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v8, :cond_2

    .line 79
    iget-object v0, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 80
    .local v0, entityEnclosingReq:Lorg/apache/http/HttpEntityEnclosingRequest;
    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v7, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 81
    .local v7, requestEntity:Lorg/apache/http/HttpEntity;
    invoke-interface {v0, v7}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 83
    .end local v0           #entityEnclosingReq:Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v7           #requestEntity:Lorg/apache/http/HttpEntity;
    :cond_2
    iget-object v8, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;->httpClient:Lorg/apache/http/client/HttpClient;

    iget-object v9, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v10, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;->httpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v8, v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 84
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v8, Lorg/springframework/http/client/HttpComponentsClientHttpResponse;

    invoke-direct {v8, v4}, Lorg/springframework/http/client/HttpComponentsClientHttpResponse;-><init>(Lorg/apache/http/HttpResponse;)V

    return-object v8
.end method

.method public getMethod()Lorg/springframework/http/HttpMethod;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/http/HttpMethod;->valueOf(Ljava/lang/String;)Lorg/springframework/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;->httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

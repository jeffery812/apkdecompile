.class final Lorg/springframework/http/client/CommonsClientHttpRequest;
.super Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;
.source "CommonsClientHttpRequest.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final httpClient:Lorg/apache/commons/httpclient/HttpClient;

.field private final httpMethod:Lorg/apache/commons/httpclient/HttpMethodBase;


# direct methods
.method constructor <init>(Lorg/apache/commons/httpclient/HttpClient;Lorg/apache/commons/httpclient/HttpMethodBase;)V
    .locals 0
    .parameter "httpClient"
    .parameter "httpMethod"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/springframework/http/client/CommonsClientHttpRequest;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    .line 54
    iput-object p2, p0, Lorg/springframework/http/client/CommonsClientHttpRequest;->httpMethod:Lorg/apache/commons/httpclient/HttpMethodBase;

    .line 55
    return-void
.end method


# virtual methods
.method public executeInternal(Lorg/springframework/http/HttpHeaders;[B)Lorg/springframework/http/client/ClientHttpResponse;
    .locals 9
    .parameter "headers"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Lorg/springframework/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, headerName:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    .local v3, headerValue:Ljava/lang/String;
    iget-object v7, p0, Lorg/springframework/http/client/CommonsClientHttpRequest;->httpMethod:Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-virtual {v7, v2, v3}, Lorg/apache/commons/httpclient/HttpMethodBase;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2           #headerName:Ljava/lang/String;
    .end local v3           #headerValue:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lorg/springframework/http/client/CommonsClientHttpRequest;->httpMethod:Lorg/apache/commons/httpclient/HttpMethodBase;

    instance-of v7, v7, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;

    if-eqz v7, :cond_2

    .line 80
    iget-object v0, p0, Lorg/springframework/http/client/CommonsClientHttpRequest;->httpMethod:Lorg/apache/commons/httpclient/HttpMethodBase;

    check-cast v0, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;

    .line 81
    .local v0, entityEnclosingMethod:Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;
    new-instance v6, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;

    invoke-direct {v6, p2}, Lorg/apache/commons/httpclient/methods/ByteArrayRequestEntity;-><init>([B)V

    .line 82
    .local v6, requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;
    invoke-virtual {v0, v6}, Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;->setRequestEntity(Lorg/apache/commons/httpclient/methods/RequestEntity;)V

    .line 84
    .end local v0           #entityEnclosingMethod:Lorg/apache/commons/httpclient/methods/EntityEnclosingMethod;
    .end local v6           #requestEntity:Lorg/apache/commons/httpclient/methods/RequestEntity;
    :cond_2
    iget-object v7, p0, Lorg/springframework/http/client/CommonsClientHttpRequest;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    iget-object v8, p0, Lorg/springframework/http/client/CommonsClientHttpRequest;->httpMethod:Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-virtual {v7, v8}, Lorg/apache/commons/httpclient/HttpClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    .line 85
    new-instance v7, Lorg/springframework/http/client/CommonsClientHttpResponse;

    iget-object v8, p0, Lorg/springframework/http/client/CommonsClientHttpRequest;->httpMethod:Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-direct {v7, v8}, Lorg/springframework/http/client/CommonsClientHttpResponse;-><init>(Lorg/apache/commons/httpclient/HttpMethod;)V

    return-object v7
.end method

.method public getMethod()Lorg/springframework/http/HttpMethod;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/springframework/http/client/CommonsClientHttpRequest;->httpMethod:Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/http/HttpMethod;->valueOf(Ljava/lang/String;)Lorg/springframework/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 4

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lorg/springframework/http/client/CommonsClientHttpRequest;->httpMethod:Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpMethodBase;->getURI()Lorg/apache/commons/httpclient/URI;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, ex:Lorg/apache/commons/httpclient/URIException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get HttpMethod URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URIException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

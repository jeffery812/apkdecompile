.class final Lorg/springframework/http/client/BufferingClientHttpRequestWrapper;
.super Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;
.source "BufferingClientHttpRequestWrapper.java"


# instance fields
.field private final request:Lorg/springframework/http/client/ClientHttpRequest;


# direct methods
.method constructor <init>(Lorg/springframework/http/client/ClientHttpRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;-><init>()V

    .line 41
    const-string v0, "\'request\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lorg/springframework/http/client/BufferingClientHttpRequestWrapper;->request:Lorg/springframework/http/client/ClientHttpRequest;

    .line 43
    return-void
.end method


# virtual methods
.method protected executeInternal(Lorg/springframework/http/HttpHeaders;[B)Lorg/springframework/http/client/ClientHttpResponse;
    .locals 3
    .parameter "headers"
    .parameter "bufferedOutput"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v2, p0, Lorg/springframework/http/client/BufferingClientHttpRequestWrapper;->request:Lorg/springframework/http/client/ClientHttpRequest;

    invoke-interface {v2}, Lorg/springframework/http/client/ClientHttpRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 57
    .local v0, body:Ljava/io/OutputStream;
    iget-object v2, p0, Lorg/springframework/http/client/BufferingClientHttpRequestWrapper;->request:Lorg/springframework/http/client/ClientHttpRequest;

    invoke-interface {v2}, Lorg/springframework/http/client/ClientHttpRequest;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/springframework/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 58
    invoke-static {p2, v0}, Lorg/springframework/util/FileCopyUtils;->copy([BLjava/io/OutputStream;)V

    .line 59
    iget-object v2, p0, Lorg/springframework/http/client/BufferingClientHttpRequestWrapper;->request:Lorg/springframework/http/client/ClientHttpRequest;

    invoke-interface {v2}, Lorg/springframework/http/client/ClientHttpRequest;->execute()Lorg/springframework/http/client/ClientHttpResponse;

    move-result-object v1

    .line 60
    .local v1, response:Lorg/springframework/http/client/ClientHttpResponse;
    new-instance v2, Lorg/springframework/http/client/BufferingClientHttpResponseWrapper;

    invoke-direct {v2, v1}, Lorg/springframework/http/client/BufferingClientHttpResponseWrapper;-><init>(Lorg/springframework/http/client/ClientHttpResponse;)V

    return-object v2
.end method

.method public getMethod()Lorg/springframework/http/HttpMethod;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/springframework/http/client/BufferingClientHttpRequestWrapper;->request:Lorg/springframework/http/client/ClientHttpRequest;

    invoke-interface {v0}, Lorg/springframework/http/client/ClientHttpRequest;->getMethod()Lorg/springframework/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/springframework/http/client/BufferingClientHttpRequestWrapper;->request:Lorg/springframework/http/client/ClientHttpRequest;

    invoke-interface {v0}, Lorg/springframework/http/client/ClientHttpRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

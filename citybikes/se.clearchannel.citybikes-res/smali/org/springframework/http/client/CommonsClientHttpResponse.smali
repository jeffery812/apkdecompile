.class final Lorg/springframework/http/client/CommonsClientHttpResponse;
.super Lorg/springframework/http/client/AbstractClientHttpResponse;
.source "CommonsClientHttpResponse.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private headers:Lorg/springframework/http/HttpHeaders;

.field private final httpMethod:Lorg/apache/commons/httpclient/HttpMethod;


# direct methods
.method constructor <init>(Lorg/apache/commons/httpclient/HttpMethod;)V
    .locals 0
    .parameter "httpMethod"

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/springframework/http/client/AbstractClientHttpResponse;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/springframework/http/client/CommonsClientHttpResponse;->httpMethod:Lorg/apache/commons/httpclient/HttpMethod;

    .line 48
    return-void
.end method


# virtual methods
.method protected closeInternal()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/springframework/http/client/CommonsClientHttpResponse;->httpMethod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpMethod;->releaseConnection()V

    .line 77
    return-void
.end method

.method protected getBodyInternal()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/springframework/http/client/CommonsClientHttpResponse;->httpMethod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lorg/springframework/http/HttpHeaders;
    .locals 7

    .prologue
    .line 60
    iget-object v4, p0, Lorg/springframework/http/client/CommonsClientHttpResponse;->headers:Lorg/springframework/http/HttpHeaders;

    if-nez v4, :cond_0

    .line 61
    new-instance v4, Lorg/springframework/http/HttpHeaders;

    invoke-direct {v4}, Lorg/springframework/http/HttpHeaders;-><init>()V

    iput-object v4, p0, Lorg/springframework/http/client/CommonsClientHttpResponse;->headers:Lorg/springframework/http/HttpHeaders;

    .line 62
    iget-object v4, p0, Lorg/springframework/http/client/CommonsClientHttpResponse;->httpMethod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v4}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .local v0, arr$:[Lorg/apache/commons/httpclient/Header;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 63
    .local v1, header:Lorg/apache/commons/httpclient/Header;
    iget-object v4, p0, Lorg/springframework/http/client/CommonsClientHttpResponse;->headers:Lorg/springframework/http/HttpHeaders;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/springframework/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v0           #arr$:[Lorg/apache/commons/httpclient/Header;
    .end local v1           #header:Lorg/apache/commons/httpclient/Header;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    iget-object v4, p0, Lorg/springframework/http/client/CommonsClientHttpResponse;->headers:Lorg/springframework/http/HttpHeaders;

    return-object v4
.end method

.method public getRawStatusCode()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/springframework/http/client/CommonsClientHttpResponse;->httpMethod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/springframework/http/client/CommonsClientHttpResponse;->httpMethod:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

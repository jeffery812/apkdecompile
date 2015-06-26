.class public Lorg/springframework/web/client/DefaultResponseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultResponseErrorHandler.java"

# interfaces
.implements Lorg/springframework/web/client/ResponseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/springframework/web/client/DefaultResponseErrorHandler$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private getResponseBody(Lorg/springframework/http/client/ClientHttpResponse;)[B
    .locals 2
    .parameter "response"

    .prologue
    .line 86
    :try_start_0
    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getBody()Ljava/io/InputStream;

    move-result-object v0

    .line 87
    .local v0, responseBody:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 88
    invoke-static {v0}, Lorg/springframework/util/FileCopyUtils;->copyToByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    .end local v0           #responseBody:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v1

    .line 93
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_0
.end method


# virtual methods
.method public handleError(Lorg/springframework/http/client/ClientHttpResponse;)V
    .locals 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getStatusCode()Lorg/springframework/http/HttpStatus;

    move-result-object v3

    .line 71
    .local v3, statusCode:Lorg/springframework/http/HttpStatus;
    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v2

    .line 72
    .local v2, contentType:Lorg/springframework/http/MediaType;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 73
    .local v1, charset:Ljava/nio/charset/Charset;
    :goto_0
    invoke-direct {p0, p1}, Lorg/springframework/web/client/DefaultResponseErrorHandler;->getResponseBody(Lorg/springframework/http/client/ClientHttpResponse;)[B

    move-result-object v0

    .line 74
    .local v0, body:[B
    sget-object v4, Lorg/springframework/web/client/DefaultResponseErrorHandler$1;->$SwitchMap$org$springframework$http$HttpStatus$Series:[I

    invoke-virtual {v3}, Lorg/springframework/http/HttpStatus;->series()Lorg/springframework/http/HttpStatus$Series;

    move-result-object v5

    invoke-virtual {v5}, Lorg/springframework/http/HttpStatus$Series;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 80
    new-instance v4, Lorg/springframework/web/client/RestClientException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown status code ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/springframework/web/client/RestClientException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 72
    .end local v0           #body:[B
    .end local v1           #charset:Ljava/nio/charset/Charset;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 76
    .restart local v0       #body:[B
    .restart local v1       #charset:Ljava/nio/charset/Charset;
    :pswitch_0
    new-instance v4, Lorg/springframework/web/client/HttpClientErrorException;

    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v0, v1}, Lorg/springframework/web/client/HttpClientErrorException;-><init>(Lorg/springframework/http/HttpStatus;Ljava/lang/String;[BLjava/nio/charset/Charset;)V

    throw v4

    .line 78
    :pswitch_1
    new-instance v4, Lorg/springframework/web/client/HttpServerErrorException;

    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v0, v1}, Lorg/springframework/web/client/HttpServerErrorException;-><init>(Lorg/springframework/http/HttpStatus;Ljava/lang/String;[BLjava/nio/charset/Charset;)V

    throw v4

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected hasError(Lorg/springframework/http/HttpStatus;)Z
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 59
    invoke-virtual {p1}, Lorg/springframework/http/HttpStatus;->series()Lorg/springframework/http/HttpStatus$Series;

    move-result-object v0

    sget-object v1, Lorg/springframework/http/HttpStatus$Series;->CLIENT_ERROR:Lorg/springframework/http/HttpStatus$Series;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/springframework/http/HttpStatus;->series()Lorg/springframework/http/HttpStatus$Series;

    move-result-object v0

    sget-object v1, Lorg/springframework/http/HttpStatus$Series;->SERVER_ERROR:Lorg/springframework/http/HttpStatus$Series;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasError(Lorg/springframework/http/client/ClientHttpResponse;)Z
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getStatusCode()Lorg/springframework/http/HttpStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/springframework/web/client/DefaultResponseErrorHandler;->hasError(Lorg/springframework/http/HttpStatus;)Z

    move-result v0

    return v0
.end method

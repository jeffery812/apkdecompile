.class public Lorg/springframework/web/client/HttpMessageConverterExtractor;
.super Ljava/lang/Object;
.source "HttpMessageConverterExtractor.java"

# interfaces
.implements Lorg/springframework/web/client/ResponseExtractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/springframework/web/client/ResponseExtractor",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestTemplate"


# instance fields
.field private final messageConverters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final responseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lorg/springframework/web/client/HttpMessageConverterExtractor;,"Lorg/springframework/web/client/HttpMessageConverterExtractor<TT;>;"
    .local p1, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, messageConverters:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "\'responseType\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v0, "\'messageConverters\' must not be empty"

    invoke-static {p2, v0}, Lorg/springframework/util/Assert;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lorg/springframework/web/client/HttpMessageConverterExtractor;->responseType:Ljava/lang/Class;

    .line 55
    iput-object p2, p0, Lorg/springframework/web/client/HttpMessageConverterExtractor;->messageConverters:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public extractData(Lorg/springframework/http/client/ClientHttpResponse;)Ljava/lang/Object;
    .locals 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/http/client/ClientHttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/springframework/web/client/HttpMessageConverterExtractor;,"Lorg/springframework/web/client/HttpMessageConverterExtractor<TT;>;"
    const/4 v5, 0x3

    .line 60
    invoke-virtual {p0, p1}, Lorg/springframework/web/client/HttpMessageConverterExtractor;->hasMessageBody(Lorg/springframework/http/client/ClientHttpResponse;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    const/4 v3, 0x0

    .line 76
    :goto_0
    return-object v3

    .line 63
    :cond_0
    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v0

    .line 64
    .local v0, contentType:Lorg/springframework/http/MediaType;
    if-nez v0, :cond_2

    .line 65
    const-string v3, "RestTemplate"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    const-string v3, "RestTemplate"

    const-string v4, "No Content-Type header found, defaulting to application/octet-stream"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    sget-object v0, Lorg/springframework/http/MediaType;->APPLICATION_OCTET_STREAM:Lorg/springframework/http/MediaType;

    .line 70
    :cond_2
    iget-object v3, p0, Lorg/springframework/web/client/HttpMessageConverterExtractor;->messageConverters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/springframework/http/converter/HttpMessageConverter;

    .line 71
    .local v2, messageConverter:Lorg/springframework/http/converter/HttpMessageConverter;
    iget-object v3, p0, Lorg/springframework/web/client/HttpMessageConverterExtractor;->responseType:Ljava/lang/Class;

    invoke-interface {v2, v3, v0}, Lorg/springframework/http/converter/HttpMessageConverter;->canRead(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    const-string v3, "RestTemplate"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 73
    const-string v3, "RestTemplate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/springframework/web/client/HttpMessageConverterExtractor;->responseType:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] as \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" using ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_4
    iget-object v3, p0, Lorg/springframework/web/client/HttpMessageConverterExtractor;->responseType:Ljava/lang/Class;

    invoke-interface {v2, v3, p1}, Lorg/springframework/http/converter/HttpMessageConverter;->read(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 79
    .end local v2           #messageConverter:Lorg/springframework/http/converter/HttpMessageConverter;
    :cond_5
    new-instance v3, Lorg/springframework/web/client/RestClientException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not extract response: no suitable HttpMessageConverter found for response type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/springframework/web/client/HttpMessageConverterExtractor;->responseType:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and content type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/springframework/web/client/RestClientException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected hasMessageBody(Lorg/springframework/http/client/ClientHttpResponse;)Z
    .locals 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/springframework/web/client/HttpMessageConverterExtractor;,"Lorg/springframework/web/client/HttpMessageConverterExtractor<TT;>;"
    const/4 v3, 0x0

    .line 95
    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getStatusCode()Lorg/springframework/http/HttpStatus;

    move-result-object v2

    .line 96
    .local v2, responseStatus:Lorg/springframework/http/HttpStatus;
    sget-object v4, Lorg/springframework/http/HttpStatus;->NO_CONTENT:Lorg/springframework/http/HttpStatus;

    if-eq v2, v4, :cond_0

    sget-object v4, Lorg/springframework/http/HttpStatus;->NOT_MODIFIED:Lorg/springframework/http/HttpStatus;

    if-ne v2, v4, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v3

    .line 99
    :cond_1
    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {v4}, Lorg/springframework/http/HttpHeaders;->getContentLength()J

    move-result-wide v0

    .line 100
    .local v0, contentLength:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

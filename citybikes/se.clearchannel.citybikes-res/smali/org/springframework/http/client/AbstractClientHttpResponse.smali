.class public abstract Lorg/springframework/http/client/AbstractClientHttpResponse;
.super Ljava/lang/Object;
.source "AbstractClientHttpResponse.java"

# interfaces
.implements Lorg/springframework/http/client/ClientHttpResponse;


# instance fields
.field private compressedBody:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCompressedBody(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/springframework/http/client/AbstractClientHttpResponse;->compressedBody:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/springframework/http/client/AbstractClientHttpResponse;->compressedBody:Ljava/io/InputStream;

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/springframework/http/client/AbstractClientHttpResponse;->compressedBody:Ljava/io/InputStream;

    return-object v0
.end method

.method private isCompressed()Z
    .locals 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/springframework/http/client/AbstractClientHttpResponse;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lorg/springframework/http/HttpHeaders;->getContentEncoding()Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, contentCodingTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/ContentCodingType;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/ContentCodingType;

    .line 63
    .local v0, contentCodingType:Lorg/springframework/http/ContentCodingType;
    sget-object v3, Lorg/springframework/http/ContentCodingType;->GZIP:Lorg/springframework/http/ContentCodingType;

    invoke-virtual {v0, v3}, Lorg/springframework/http/ContentCodingType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    const/4 v3, 0x1

    .line 67
    .end local v0           #contentCodingType:Lorg/springframework/http/ContentCodingType;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/springframework/http/client/AbstractClientHttpResponse;->compressedBody:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/springframework/http/client/AbstractClientHttpResponse;->compressedBody:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/springframework/http/client/AbstractClientHttpResponse;->closeInternal()V

    .line 58
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract closeInternal()V
.end method

.method public getBody()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/springframework/http/client/AbstractClientHttpResponse;->getBodyInternal()Ljava/io/InputStream;

    move-result-object v0

    .line 43
    .local v0, body:Ljava/io/InputStream;
    invoke-direct {p0}, Lorg/springframework/http/client/AbstractClientHttpResponse;->isCompressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-direct {p0, v0}, Lorg/springframework/http/client/AbstractClientHttpResponse;->getCompressedBody(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 46
    .end local v0           #body:Ljava/io/InputStream;
    :cond_0
    return-object v0
.end method

.method protected abstract getBodyInternal()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getStatusCode()Lorg/springframework/http/HttpStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/springframework/http/client/AbstractClientHttpResponse;->getRawStatusCode()I

    move-result v0

    invoke-static {v0}, Lorg/springframework/http/HttpStatus;->valueOf(I)Lorg/springframework/http/HttpStatus;

    move-result-object v0

    return-object v0
.end method

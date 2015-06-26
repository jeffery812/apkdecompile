.class public abstract Lorg/springframework/http/client/AbstractClientHttpRequest;
.super Ljava/lang/Object;
.source "AbstractClientHttpRequest.java"

# interfaces
.implements Lorg/springframework/http/client/ClientHttpRequest;


# instance fields
.field private compressedBody:Ljava/io/OutputStream;

.field private executed:Z

.field private final headers:Lorg/springframework/http/HttpHeaders;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/springframework/http/HttpHeaders;

    invoke-direct {v0}, Lorg/springframework/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->headers:Lorg/springframework/http/HttpHeaders;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->executed:Z

    return-void
.end method

.method private checkExecuted()V
    .locals 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->executed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "ClientHttpRequest already executed"

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->state(ZLjava/lang/String;)V

    .line 85
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCompressedBody(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->compressedBody:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->compressedBody:Ljava/io/OutputStream;

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->compressedBody:Ljava/io/OutputStream;

    return-object v0
.end method

.method private shouldCompress()Z
    .locals 4

    .prologue
    .line 88
    iget-object v3, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->headers:Lorg/springframework/http/HttpHeaders;

    invoke-virtual {v3}, Lorg/springframework/http/HttpHeaders;->getContentEncoding()Ljava/util/List;

    move-result-object v1

    .line 89
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

    .line 90
    .local v0, contentCodingType:Lorg/springframework/http/ContentCodingType;
    sget-object v3, Lorg/springframework/http/ContentCodingType;->GZIP:Lorg/springframework/http/ContentCodingType;

    invoke-virtual {v0, v3}, Lorg/springframework/http/ContentCodingType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    const/4 v3, 0x1

    .line 94
    .end local v0           #contentCodingType:Lorg/springframework/http/ContentCodingType;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final execute()Lorg/springframework/http/client/ClientHttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/springframework/http/client/AbstractClientHttpRequest;->checkExecuted()V

    .line 60
    iget-object v1, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->compressedBody:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->compressedBody:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 63
    :cond_0
    iget-object v1, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->headers:Lorg/springframework/http/HttpHeaders;

    invoke-virtual {p0, v1}, Lorg/springframework/http/client/AbstractClientHttpRequest;->executeInternal(Lorg/springframework/http/HttpHeaders;)Lorg/springframework/http/client/ClientHttpResponse;

    move-result-object v0

    .line 64
    .local v0, result:Lorg/springframework/http/client/ClientHttpResponse;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->executed:Z

    .line 65
    return-object v0
.end method

.method protected abstract executeInternal(Lorg/springframework/http/HttpHeaders;)Lorg/springframework/http/client/ClientHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getBody()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/springframework/http/client/AbstractClientHttpRequest;->checkExecuted()V

    .line 50
    iget-object v1, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->headers:Lorg/springframework/http/HttpHeaders;

    invoke-virtual {p0, v1}, Lorg/springframework/http/client/AbstractClientHttpRequest;->getBodyInternal(Lorg/springframework/http/HttpHeaders;)Ljava/io/OutputStream;

    move-result-object v0

    .line 51
    .local v0, body:Ljava/io/OutputStream;
    invoke-direct {p0}, Lorg/springframework/http/client/AbstractClientHttpRequest;->shouldCompress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-direct {p0, v0}, Lorg/springframework/http/client/AbstractClientHttpRequest;->getCompressedBody(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 54
    .end local v0           #body:Ljava/io/OutputStream;
    :cond_0
    return-object v0
.end method

.method protected abstract getBodyInternal(Lorg/springframework/http/HttpHeaders;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getHeaders()Lorg/springframework/http/HttpHeaders;
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->executed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->headers:Lorg/springframework/http/HttpHeaders;

    invoke-static {v0}, Lorg/springframework/http/HttpHeaders;->readOnlyHttpHeaders(Lorg/springframework/http/HttpHeaders;)Lorg/springframework/http/HttpHeaders;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/springframework/http/client/AbstractClientHttpRequest;->headers:Lorg/springframework/http/HttpHeaders;

    goto :goto_0
.end method

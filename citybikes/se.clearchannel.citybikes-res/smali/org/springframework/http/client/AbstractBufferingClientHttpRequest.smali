.class abstract Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;
.super Lorg/springframework/http/client/AbstractClientHttpRequest;
.source "AbstractBufferingClientHttpRequest.java"


# instance fields
.field private bufferedOutput:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/springframework/http/client/AbstractClientHttpRequest;-><init>()V

    .line 33
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;->bufferedOutput:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method protected executeInternal(Lorg/springframework/http/HttpHeaders;)Lorg/springframework/http/client/ClientHttpResponse;
    .locals 6
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v2, p0, Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;->bufferedOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 43
    .local v0, bytes:[B
    invoke-virtual {p1}, Lorg/springframework/http/HttpHeaders;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 44
    array-length v2, v0

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/springframework/http/HttpHeaders;->setContentLength(J)V

    .line 46
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;->executeInternal(Lorg/springframework/http/HttpHeaders;[B)Lorg/springframework/http/client/ClientHttpResponse;

    move-result-object v1

    .line 47
    .local v1, result:Lorg/springframework/http/client/ClientHttpResponse;
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;->bufferedOutput:Ljava/io/ByteArrayOutputStream;

    .line 48
    return-object v1
.end method

.method protected abstract executeInternal(Lorg/springframework/http/HttpHeaders;[B)Lorg/springframework/http/client/ClientHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getBodyInternal(Lorg/springframework/http/HttpHeaders;)Ljava/io/OutputStream;
    .locals 1
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/springframework/http/client/AbstractBufferingClientHttpRequest;->bufferedOutput:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.class public Lorg/springframework/http/converter/ResourceHttpMessageConverter;
.super Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.source "ResourceHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/springframework/http/converter/AbstractHttpMessageConverter",
        "<",
        "Lorg/springframework/core/io/Resource;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lorg/springframework/http/MediaType;->ALL:Lorg/springframework/http/MediaType;

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;-><init>(Lorg/springframework/http/MediaType;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected bridge synthetic getContentLength(Ljava/lang/Object;Lorg/springframework/http/MediaType;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    check-cast p1, Lorg/springframework/core/io/Resource;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/ResourceHttpMessageConverter;->getContentLength(Lorg/springframework/core/io/Resource;Lorg/springframework/http/MediaType;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getContentLength(Lorg/springframework/core/io/Resource;Lorg/springframework/http/MediaType;)Ljava/lang/Long;
    .locals 2
    .parameter "resource"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-interface {p1}, Lorg/springframework/core/io/Resource;->contentLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDefaultContentType(Ljava/lang/Object;)Lorg/springframework/http/MediaType;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    check-cast p1, Lorg/springframework/core/io/Resource;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/springframework/http/converter/ResourceHttpMessageConverter;->getDefaultContentType(Lorg/springframework/core/io/Resource;)Lorg/springframework/http/MediaType;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultContentType(Lorg/springframework/core/io/Resource;)Lorg/springframework/http/MediaType;
    .locals 1
    .parameter "resource"

    .prologue
    .line 61
    sget-object v0, Lorg/springframework/http/MediaType;->APPLICATION_OCTET_STREAM:Lorg/springframework/http/MediaType;

    return-object v0
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/ResourceHttpMessageConverter;->readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Lorg/springframework/core/io/Resource;

    move-result-object v0

    return-object v0
.end method

.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Lorg/springframework/core/io/Resource;
    .locals 2
    .parameter
    .parameter "inputMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/springframework/core/io/Resource;",
            ">;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Lorg/springframework/core/io/Resource;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .prologue
    .line 55
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/springframework/core/io/Resource;>;"
    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/springframework/util/FileCopyUtils;->copyToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 56
    .local v0, body:[B
    new-instance v1, Lorg/springframework/core/io/ByteArrayResource;

    invoke-direct {v1, v0}, Lorg/springframework/core/io/ByteArrayResource;-><init>([B)V

    return-object v1
.end method

.method protected supports(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Lorg/springframework/core/io/Resource;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    .prologue
    .line 39
    check-cast p1, Lorg/springframework/core/io/Resource;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/ResourceHttpMessageConverter;->writeInternal(Lorg/springframework/core/io/Resource;Lorg/springframework/http/HttpOutputMessage;)V

    return-void
.end method

.method protected writeInternal(Lorg/springframework/core/io/Resource;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 2
    .parameter "resource"
    .parameter "outputMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-interface {p1}, Lorg/springframework/core/io/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/springframework/util/FileCopyUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 74
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 75
    return-void
.end method

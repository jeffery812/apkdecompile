.class public Lorg/springframework/http/converter/StringHttpMessageConverter;
.super Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.source "StringHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/springframework/http/converter/AbstractHttpMessageConverter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final availableCharsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultCharset:Ljava/nio/charset/Charset;

.field private writeAcceptCharset:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/StringHttpMessageConverter;-><init>(Ljava/nio/charset/Charset;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 2
    .parameter "defaultCharset"

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lorg/springframework/http/converter/StringHttpMessageConverter;-><init>(Ljava/nio/charset/Charset;Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/util/List;)V
    .locals 6
    .parameter "defaultCharset"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            "Ljava/util/List",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, availableCharsets:Ljava/util/List;,"Ljava/util/List<Ljava/nio/charset/Charset;>;"
    const/4 v5, 0x1

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/springframework/http/MediaType;

    const/4 v1, 0x0

    new-instance v2, Lorg/springframework/http/MediaType;

    const-string v3, "text"

    const-string v4, "plain"

    invoke-direct {v2, v3, v4, p1}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    aput-object v2, v0, v1

    sget-object v1, Lorg/springframework/http/MediaType;->ALL:Lorg/springframework/http/MediaType;

    aput-object v1, v0, v5

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;-><init>([Lorg/springframework/http/MediaType;)V

    .line 50
    iput-boolean v5, p0, Lorg/springframework/http/converter/StringHttpMessageConverter;->writeAcceptCharset:Z

    .line 77
    iput-object p1, p0, Lorg/springframework/http/converter/StringHttpMessageConverter;->defaultCharset:Ljava/nio/charset/Charset;

    .line 78
    iput-object p2, p0, Lorg/springframework/http/converter/StringHttpMessageConverter;->availableCharsets:Ljava/util/List;

    .line 79
    return-void
.end method

.method private getContentTypeCharset(Lorg/springframework/http/MediaType;)Ljava/nio/charset/Charset;
    .locals 1
    .parameter "contentType"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/springframework/http/converter/StringHttpMessageConverter;->getDefaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getAcceptedCharsets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lorg/springframework/http/converter/StringHttpMessageConverter;->availableCharsets:Ljava/util/List;

    return-object v0
.end method

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
    .line 44
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/StringHttpMessageConverter;->getContentLength(Ljava/lang/String;Lorg/springframework/http/MediaType;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getContentLength(Ljava/lang/String;Lorg/springframework/http/MediaType;)Ljava/lang/Long;
    .locals 4
    .parameter "s"
    .parameter "contentType"

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lorg/springframework/http/converter/StringHttpMessageConverter;->getContentTypeCharset(Lorg/springframework/http/MediaType;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 114
    .local v0, charset:Ljava/nio/charset/Charset;
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 115
    :catch_0
    move-exception v1

    .line 117
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDefaultCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/springframework/http/converter/StringHttpMessageConverter;->defaultCharset:Ljava/nio/charset/Charset;

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
    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/StringHttpMessageConverter;->readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "inputMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/String;",
            ">;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/springframework/http/converter/StringHttpMessageConverter;->getContentTypeCharset(Lorg/springframework/http/MediaType;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 107
    .local v0, charset:Ljava/nio/charset/Charset;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v1}, Lorg/springframework/util/FileCopyUtils;->copyToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setWriteAcceptCharset(Z)V
    .locals 0
    .parameter "writeAcceptCharset"

    .prologue
    .line 96
    iput-boolean p1, p0, Lorg/springframework/http/converter/StringHttpMessageConverter;->writeAcceptCharset:Z

    .line 97
    return-void
.end method

.method public supports(Ljava/lang/Class;)Z
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
    .line 101
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .line 44
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/StringHttpMessageConverter;->writeInternal(Ljava/lang/String;Lorg/springframework/http/HttpOutputMessage;)V

    return-void
.end method

.method protected writeInternal(Ljava/lang/String;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 3
    .parameter "s"
    .parameter "outputMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v1, p0, Lorg/springframework/http/converter/StringHttpMessageConverter;->writeAcceptCharset:Z

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {p0}, Lorg/springframework/http/converter/StringHttpMessageConverter;->getAcceptedCharsets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/springframework/http/HttpHeaders;->setAcceptCharset(Ljava/util/List;)V

    .line 126
    :cond_0
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/springframework/http/converter/StringHttpMessageConverter;->getContentTypeCharset(Lorg/springframework/http/MediaType;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 127
    .local v0, charset:Ljava/nio/charset/Charset;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-static {p1, v1}, Lorg/springframework/util/FileCopyUtils;->copy(Ljava/lang/String;Ljava/io/Writer;)V

    .line 128
    return-void
.end method

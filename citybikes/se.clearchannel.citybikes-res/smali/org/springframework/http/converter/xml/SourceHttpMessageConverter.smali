.class public Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;
.super Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter;
.source "SourceHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$1;,
        Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavax/xml/transform/Source;",
        ">",
        "Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    .local p0, this:Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;,"Lorg/springframework/http/converter/xml/SourceHttpMessageConverter<TT;>;"
    invoke-direct {p0}, Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter;-><init>()V

    .line 115
    return-void
.end method

.method private transformToByteArrayInputStream(Ljavax/xml/transform/Source;)Ljava/io/ByteArrayInputStream;
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;,"Lorg/springframework/http/converter/xml/SourceHttpMessageConverter<TT;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 86
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v1}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 87
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
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
    .line 48
    .local p0, this:Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;,"Lorg/springframework/http/converter/xml/SourceHttpMessageConverter<TT;>;"
    check-cast p1, Ljavax/xml/transform/Source;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;->getContentLength(Ljavax/xml/transform/Source;Lorg/springframework/http/MediaType;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getContentLength(Ljavax/xml/transform/Source;Lorg/springframework/http/MediaType;)Ljava/lang/Long;
    .locals 4
    .parameter
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/springframework/http/MediaType;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;,"Lorg/springframework/http/converter/xml/SourceHttpMessageConverter<TT;>;"
    .local p1, t:Ljavax/xml/transform/Source;,"TT;"
    const/4 v1, 0x0

    .line 92
    instance-of v2, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v2, :cond_0

    .line 94
    :try_start_0
    new-instance v0, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;-><init>(Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$1;)V

    .line 95
    .local v0, os:Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v2}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 96
    #getter for: Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;->count:J
    invoke-static {v0}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;->access$100(Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    .end local v0           #os:Lorg/springframework/http/converter/xml/SourceHttpMessageConverter$CountingOutputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic readFromSource(Ljava/lang/Class;Lorg/springframework/http/HttpHeaders;Ljavax/xml/transform/Source;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;,"Lorg/springframework/http/converter/xml/SourceHttpMessageConverter<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;->readFromSource(Ljava/lang/Class;Lorg/springframework/http/HttpHeaders;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;

    move-result-object v0

    return-object v0
.end method

.method protected readFromSource(Ljava/lang/Class;Lorg/springframework/http/HttpHeaders;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;
    .locals 6
    .parameter
    .parameter "headers"
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/springframework/http/HttpHeaders;",
            "Ljavax/xml/transform/Source;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;,"Lorg/springframework/http/converter/xml/SourceHttpMessageConverter<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    :try_start_0
    const-class v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    new-instance v1, Ljavax/xml/transform/dom/DOMResult;

    invoke-direct {v1}, Ljavax/xml/transform/dom/DOMResult;-><init>()V

    .line 62
    .local v1, domResult:Ljavax/xml/transform/dom/DOMResult;
    invoke-virtual {p0, p3, v1}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 63
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 71
    .end local v1           #domResult:Ljavax/xml/transform/dom/DOMResult;
    :goto_0
    return-object v3

    .line 65
    :cond_0
    const-class v3, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-direct {p0, p3}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;->transformToByteArrayInputStream(Ljavax/xml/transform/Source;)Ljava/io/ByteArrayInputStream;

    move-result-object v0

    .line 67
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljavax/xml/transform/sax/SAXSource;

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v0           #bis:Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .line 79
    .local v2, ex:Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/springframework/http/converter/HttpMessageNotReadableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not transform from ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/springframework/http/converter/HttpMessageNotReadableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 69
    .end local v2           #ex:Ljavax/xml/transform/TransformerException;
    :cond_1
    :try_start_1
    const-class v3, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljavax/xml/transform/Source;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    :cond_2
    invoke-direct {p0, p3}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;->transformToByteArrayInputStream(Ljavax/xml/transform/Source;)Ljava/io/ByteArrayInputStream;

    move-result-object v0

    .line 71
    .restart local v0       #bis:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v3, v0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 74
    .end local v0           #bis:Ljava/io/ByteArrayInputStream;
    :cond_3
    new-instance v3, Lorg/springframework/http/converter/HttpMessageConversionException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read class ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. Only DOMSource, SAXSource, and StreamSource are supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/springframework/http/converter/HttpMessageConversionException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
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
    .line 52
    .local p0, this:Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;,"Lorg/springframework/http/converter/xml/SourceHttpMessageConverter<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljavax/xml/transform/Source;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic writeToResult(Ljava/lang/Object;Lorg/springframework/http/HttpHeaders;Ljavax/xml/transform/Result;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;,"Lorg/springframework/http/converter/xml/SourceHttpMessageConverter<TT;>;"
    check-cast p1, Ljavax/xml/transform/Source;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;->writeToResult(Ljavax/xml/transform/Source;Lorg/springframework/http/HttpHeaders;Ljavax/xml/transform/Result;)V

    return-void
.end method

.method protected writeToResult(Ljavax/xml/transform/Source;Lorg/springframework/http/HttpHeaders;Ljavax/xml/transform/Result;)V
    .locals 4
    .parameter
    .parameter "headers"
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/springframework/http/HttpHeaders;",
            "Ljavax/xml/transform/Result;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;,"Lorg/springframework/http/converter/xml/SourceHttpMessageConverter<TT;>;"
    .local p1, t:Ljavax/xml/transform/Source;,"TT;"
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lorg/springframework/http/converter/xml/SourceHttpMessageConverter;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, ex:Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/springframework/http/converter/HttpMessageNotWritableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not transform ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/springframework/http/converter/HttpMessageNotWritableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

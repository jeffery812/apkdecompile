.class public abstract Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter;
.super Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.source "AbstractXmlHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/springframework/http/converter/AbstractHttpMessageConverter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final transformerFactory:Ljavax/xml/transform/TransformerFactory;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 56
    .local p0, this:Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter;,"Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter<TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/springframework/http/MediaType;

    const/4 v1, 0x0

    sget-object v2, Lorg/springframework/http/MediaType;->APPLICATION_XML:Lorg/springframework/http/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/springframework/http/MediaType;->TEXT_XML:Lorg/springframework/http/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/springframework/http/MediaType;

    const-string v3, "application"

    const-string v4, "*+xml"

    invoke-direct {v2, v3, v4}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;-><init>([Lorg/springframework/http/MediaType;)V

    .line 48
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    .line 57
    return-void
.end method


# virtual methods
.method protected abstract readFromSource(Ljava/lang/Class;Lorg/springframework/http/HttpHeaders;Ljavax/xml/transform/Source;)Ljava/lang/Object;
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
.end method

.method public final readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter "inputMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter;,"Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v0

    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter;->readFromSource(Ljava/lang/Class;Lorg/springframework/http/HttpHeaders;Ljavax/xml/transform/Source;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 1
    .parameter "source"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, this:Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter;,"Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter<TT;>;"
    iget-object v0, p0, Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 78
    return-void
.end method

.method protected final writeInternal(Ljava/lang/Object;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 3
    .parameter
    .parameter "outputMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/springframework/http/HttpOutputMessage;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter;,"Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v0

    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/springframework/http/converter/xml/AbstractXmlHttpMessageConverter;->writeToResult(Ljava/lang/Object;Lorg/springframework/http/HttpHeaders;Ljavax/xml/transform/Result;)V

    .line 68
    return-void
.end method

.method protected abstract writeToResult(Ljava/lang/Object;Lorg/springframework/http/HttpHeaders;Ljavax/xml/transform/Result;)V
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
.end method

.class public abstract Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;
.super Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.source "AbstractWireFeedHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/WireFeed;",
        ">",
        "Lorg/springframework/http/converter/AbstractHttpMessageConverter",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method protected constructor <init>(Lorg/springframework/http/MediaType;)V
    .locals 2
    .parameter "supportedMediaType"

    .prologue
    .line 58
    .local p0, this:Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;,"Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter<TT;>;"
    invoke-direct {p0, p1}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;-><init>(Lorg/springframework/http/MediaType;)V

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/WireFeed;
    .locals 8
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
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;,"Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    new-instance v3, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/WireFeedInput;

    invoke-direct {v3}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/WireFeedInput;-><init>()V

    .line 70
    .local v3, feedInput:Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/WireFeedInput;
    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v5

    invoke-virtual {v5}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v1

    .line 72
    .local v1, contentType:Lorg/springframework/http/MediaType;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 73
    invoke-virtual {v1}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 78
    .local v0, charset:Ljava/nio/charset/Charset;
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 79
    .local v4, reader:Ljava/io/Reader;
    invoke-virtual {v3, v4}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/WireFeedInput;->build(Ljava/io/Reader;)Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/WireFeed;
    :try_end_0
    .catch Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 75
    .end local v0           #charset:Ljava/nio/charset/Charset;
    .end local v4           #reader:Ljava/io/Reader;
    :cond_0
    sget-object v0, Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .restart local v0       #charset:Ljava/nio/charset/Charset;
    goto :goto_0

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, ex:Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException;
    new-instance v5, Lorg/springframework/http/converter/HttpMessageNotReadableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not read WireFeed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lorg/springframework/http/converter/HttpMessageNotReadableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
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
    .line 53
    .local p0, this:Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;,"Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;->readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/WireFeed;

    move-result-object v0

    return-object v0
.end method

.method protected writeInternal(Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/WireFeed;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 10
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
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;,"Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter<TT;>;"
    .local p1, wireFeed:Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/WireFeed;,"TT;"
    invoke-virtual {p1}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/WireFeed;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, wireFeedEncoding:Ljava/lang/String;
    invoke-static {v5}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 89
    sget-object v7, Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    .line 91
    :cond_0
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {v7}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v0

    .line 92
    .local v0, contentType:Lorg/springframework/http/MediaType;
    if-eqz v0, :cond_1

    .line 93
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 94
    .local v4, wireFeedCharset:Ljava/nio/charset/Charset;
    new-instance v1, Lorg/springframework/http/MediaType;

    invoke-virtual {v0}, Lorg/springframework/http/MediaType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/springframework/http/MediaType;->getSubtype()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8, v4}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 95
    .end local v0           #contentType:Lorg/springframework/http/MediaType;
    .local v1, contentType:Lorg/springframework/http/MediaType;
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/springframework/http/HttpHeaders;->setContentType(Lorg/springframework/http/MediaType;)V

    move-object v0, v1

    .line 98
    .end local v1           #contentType:Lorg/springframework/http/MediaType;
    .end local v4           #wireFeedCharset:Ljava/nio/charset/Charset;
    .restart local v0       #contentType:Lorg/springframework/http/MediaType;
    :cond_1
    new-instance v3, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/WireFeedOutput;

    invoke-direct {v3}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/WireFeedOutput;-><init>()V

    .line 101
    .local v3, feedOutput:Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/WireFeedOutput;
    :try_start_0
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 102
    .local v6, writer:Ljava/io/Writer;
    invoke-virtual {v3, p1, v6}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/WireFeedOutput;->output(Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/WireFeed;Ljava/io/Writer;)V
    :try_end_0
    .catch Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-void

    .line 103
    .end local v6           #writer:Ljava/io/Writer;
    :catch_0
    move-exception v2

    .line 104
    .local v2, ex:Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException;
    new-instance v7, Lorg/springframework/http/converter/HttpMessageNotWritableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not write WiredFeed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lorg/springframework/http/converter/HttpMessageNotWritableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
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
    .line 53
    .local p0, this:Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;,"Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter<TT;>;"
    check-cast p1, Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/WireFeed;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;->writeInternal(Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/WireFeed;Lorg/springframework/http/HttpOutputMessage;)V

    return-void
.end method

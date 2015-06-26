.class public Lorg/springframework/http/converter/feed/SyndFeedHttpMessageConverter;
.super Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.source "SyndFeedHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/springframework/http/converter/AbstractHttpMessageConverter",
        "<",
        "Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/springframework/http/converter/feed/SyndFeedHttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/springframework/http/MediaType;

    const/4 v1, 0x0

    sget-object v2, Lorg/springframework/http/MediaType;->APPLICATION_RSS_XML:Lorg/springframework/http/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/springframework/http/MediaType;->APPLICATION_ATOM_XML:Lorg/springframework/http/MediaType;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;-><init>([Lorg/springframework/http/MediaType;)V

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;
    .locals 8
    .parameter
    .parameter "inputMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;",
            ">;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .prologue
    .line 80
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;>;"
    new-instance v3, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedInput;

    invoke-direct {v3}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedInput;-><init>()V

    .line 81
    .local v3, feedInput:Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedInput;
    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v5

    invoke-virtual {v5}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v1

    .line 83
    .local v1, contentType:Lorg/springframework/http/MediaType;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v1}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 89
    .local v0, charset:Ljava/nio/charset/Charset;
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 90
    .local v4, reader:Ljava/io/Reader;
    invoke-virtual {v3, v4}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedInput;->build(Ljava/io/Reader;)Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;
    :try_end_0
    .catch Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 86
    .end local v0           #charset:Ljava/nio/charset/Charset;
    .end local v4           #reader:Ljava/io/Reader;
    :cond_0
    sget-object v0, Lorg/springframework/http/converter/feed/SyndFeedHttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .restart local v0       #charset:Ljava/nio/charset/Charset;
    goto :goto_0

    .line 91
    :catch_0
    move-exception v2

    .line 92
    .local v2, ex:Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException;
    new-instance v5, Lorg/springframework/http/converter/HttpMessageNotReadableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not read SyndFeed: "

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
    .line 56
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/feed/SyndFeedHttpMessageConverter;->readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;

    move-result-object v0

    return-object v0
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
    .line 75
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected writeInternal(Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 10
    .parameter "syndFeed"
    .parameter "outputMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-interface {p1}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;->getEncoding()Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, syndFeedEncoding:Ljava/lang/String;
    invoke-static {v5}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 100
    sget-object v7, Lorg/springframework/http/converter/feed/SyndFeedHttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    .line 102
    :cond_0
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {v7}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v0

    .line 103
    .local v0, contentType:Lorg/springframework/http/MediaType;
    if-eqz v0, :cond_1

    .line 104
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 105
    .local v4, syndFeedCharset:Ljava/nio/charset/Charset;
    new-instance v1, Lorg/springframework/http/MediaType;

    invoke-virtual {v0}, Lorg/springframework/http/MediaType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/springframework/http/MediaType;->getSubtype()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8, v4}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 106
    .end local v0           #contentType:Lorg/springframework/http/MediaType;
    .local v1, contentType:Lorg/springframework/http/MediaType;
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/springframework/http/HttpHeaders;->setContentType(Lorg/springframework/http/MediaType;)V

    move-object v0, v1

    .line 109
    .end local v1           #contentType:Lorg/springframework/http/MediaType;
    .end local v4           #syndFeedCharset:Ljava/nio/charset/Charset;
    .restart local v0       #contentType:Lorg/springframework/http/MediaType;
    :cond_1
    new-instance v3, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedOutput;

    invoke-direct {v3}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedOutput;-><init>()V

    .line 112
    .local v3, feedOutput:Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedOutput;
    :try_start_0
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 113
    .local v6, writer:Ljava/io/Writer;
    invoke-virtual {v3, p1, v6}, Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/SyndFeedOutput;->output(Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;Ljava/io/Writer;)V
    :try_end_0
    .catch Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 114
    .end local v6           #writer:Ljava/io/Writer;
    :catch_0
    move-exception v2

    .line 115
    .local v2, ex:Lcom/google/code/rome/android/repackaged/com/sun/syndication/io/FeedException;
    new-instance v7, Lorg/springframework/http/converter/HttpMessageNotWritableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not write SyndFeed: "

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
    .line 56
    check-cast p1, Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/feed/SyndFeedHttpMessageConverter;->writeInternal(Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/synd/SyndFeed;Lorg/springframework/http/HttpOutputMessage;)V

    return-void
.end method

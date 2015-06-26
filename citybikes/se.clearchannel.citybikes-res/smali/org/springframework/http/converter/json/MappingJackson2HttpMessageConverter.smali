.class public Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;
.super Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.source "MappingJackson2HttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/springframework/http/converter/AbstractHttpMessageConverter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private prefixJson:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lorg/springframework/http/MediaType;

    const-string v1, "application"

    const-string v2, "json"

    sget-object v3, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;-><init>(Lorg/springframework/http/MediaType;)V

    .line 55
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->prefixJson:Z

    .line 65
    return-void
.end method


# virtual methods
.method public canRead(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z
    .locals 2
    .parameter
    .parameter "mediaType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/springframework/http/MediaType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->getJavaType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 103
    .local v0, javaType:Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v1, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->canDeserialize(Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->canRead(Lorg/springframework/http/MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canWrite(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z
    .locals 1
    .parameter
    .parameter "mediaType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/springframework/http/MediaType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->canSerialize(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->canWrite(Lorg/springframework/http/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getJavaType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected getJsonEncoding(Lorg/springframework/http/MediaType;)Lcom/fasterxml/jackson/core/JsonEncoding;
    .locals 7
    .parameter "contentType"

    .prologue
    .line 176
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 177
    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 178
    .local v1, charset:Ljava/nio/charset/Charset;
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonEncoding;->values()[Lcom/fasterxml/jackson/core/JsonEncoding;

    move-result-object v0

    .local v0, arr$:[Lcom/fasterxml/jackson/core/JsonEncoding;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 179
    .local v2, encoding:Lcom/fasterxml/jackson/core/JsonEncoding;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    .end local v0           #arr$:[Lcom/fasterxml/jackson/core/JsonEncoding;
    .end local v1           #charset:Ljava/nio/charset/Charset;
    .end local v2           #encoding:Lcom/fasterxml/jackson/core/JsonEncoding;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return-object v2

    .line 178
    .restart local v0       #arr$:[Lcom/fasterxml/jackson/core/JsonEncoding;
    .restart local v1       #charset:Ljava/nio/charset/Charset;
    .restart local v2       #encoding:Lcom/fasterxml/jackson/core/JsonEncoding;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v0           #arr$:[Lcom/fasterxml/jackson/core/JsonEncoding;
    .end local v1           #charset:Ljava/nio/charset/Charset;
    .end local v2           #encoding:Lcom/fasterxml/jackson/core/JsonEncoding;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto :goto_1
.end method

.method public getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter "inputMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .prologue
    .line 121
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->getJavaType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 123
    .local v1, javaType:Lcom/fasterxml/jackson/databind/JavaType;
    :try_start_0
    iget-object v2, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Lorg/springframework/http/converter/HttpMessageNotReadableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/springframework/http/converter/HttpMessageNotReadableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setObjectMapper(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 1
    .parameter "objectMapper"

    .prologue
    .line 77
    const-string v0, "ObjectMapper must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 79
    return-void
.end method

.method public setPrefixJson(Z)V
    .locals 0
    .parameter "prefixJson"

    .prologue
    .line 96
    iput-boolean p1, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->prefixJson:Z

    .line 97
    return-void
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
    .line 114
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected writeInternal(Ljava/lang/Object;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 6
    .parameter "object"
    .parameter "outputMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->getJsonEncoding(Lorg/springframework/http/MediaType;)Lcom/fasterxml/jackson/core/JsonEncoding;

    move-result-object v0

    .line 135
    .local v0, encoding:Lcom/fasterxml/jackson/core/JsonEncoding;
    iget-object v3, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v3

    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v2

    .line 138
    .local v2, jsonGenerator:Lcom/fasterxml/jackson/core/JsonGenerator;
    :try_start_0
    iget-boolean v3, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->prefixJson:Z

    if-eqz v3, :cond_0

    .line 139
    const-string v3, "{} && "

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v3, p0, Lorg/springframework/http/converter/json/MappingJackson2HttpMessageConverter;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-void

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, ex:Ljava/io/IOException;
    new-instance v3, Lorg/springframework/http/converter/HttpMessageNotWritableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not write JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/springframework/http/converter/HttpMessageNotWritableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

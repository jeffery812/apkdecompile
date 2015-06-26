.class public Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;
.super Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.source "MappingJacksonHttpMessageConverter.java"


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
.field private objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

.field private prefixJson:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lorg/springframework/http/MediaType;

    const-string v1, "application"

    const-string v2, "json"

    sget-object v3, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;-><init>(Lorg/springframework/http/MediaType;)V

    .line 54
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->prefixJson:Z

    .line 64
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
    .line 101
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->getJavaType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 102
    .local v0, javaType:Lorg/codehaus/jackson/type/JavaType;
    iget-object v1, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->canDeserialize(Lorg/codehaus/jackson/type/JavaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->canRead(Lorg/springframework/http/MediaType;)Z

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
    .line 107
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->canSerialize(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->canWrite(Lorg/springframework/http/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getJavaType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/ObjectMapper;->getTypeFactory()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected getJsonEncoding(Lorg/springframework/http/MediaType;)Lorg/codehaus/jackson/JsonEncoding;
    .locals 7
    .parameter "contentType"

    .prologue
    .line 175
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 176
    invoke-virtual {p1}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 177
    .local v1, charset:Ljava/nio/charset/Charset;
    invoke-static {}, Lorg/codehaus/jackson/JsonEncoding;->values()[Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v0

    .local v0, arr$:[Lorg/codehaus/jackson/JsonEncoding;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 178
    .local v2, encoding:Lorg/codehaus/jackson/JsonEncoding;
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    .end local v0           #arr$:[Lorg/codehaus/jackson/JsonEncoding;
    .end local v1           #charset:Ljava/nio/charset/Charset;
    .end local v2           #encoding:Lorg/codehaus/jackson/JsonEncoding;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return-object v2

    .line 177
    .restart local v0       #arr$:[Lorg/codehaus/jackson/JsonEncoding;
    .restart local v1       #charset:Ljava/nio/charset/Charset;
    .restart local v2       #encoding:Lorg/codehaus/jackson/JsonEncoding;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    .end local v0           #arr$:[Lorg/codehaus/jackson/JsonEncoding;
    .end local v1           #charset:Ljava/nio/charset/Charset;
    .end local v2           #encoding:Lorg/codehaus/jackson/JsonEncoding;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    sget-object v2, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_1
.end method

.method public getObjectMapper()Lorg/codehaus/jackson/map/ObjectMapper;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

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
    .line 120
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->getJavaType(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 122
    .local v1, javaType:Lorg/codehaus/jackson/type/JavaType;
    :try_start_0
    iget-object v2, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/io/InputStream;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 124
    :catch_0
    move-exception v0

    .line 125
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

.method public setObjectMapper(Lorg/codehaus/jackson/map/ObjectMapper;)V
    .locals 1
    .parameter "objectMapper"

    .prologue
    .line 76
    const-string v0, "ObjectMapper must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    .line 78
    return-void
.end method

.method public setPrefixJson(Z)V
    .locals 0
    .parameter "prefixJson"

    .prologue
    .line 95
    iput-boolean p1, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->prefixJson:Z

    .line 96
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
    .line 113
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
    .line 133
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {v3}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->getJsonEncoding(Lorg/springframework/http/MediaType;)Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v0

    .line 134
    .local v0, encoding:Lorg/codehaus/jackson/JsonEncoding;
    iget-object v3, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ObjectMapper;->getJsonFactory()Lorg/codehaus/jackson/JsonFactory;

    move-result-object v3

    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v2

    .line 137
    .local v2, jsonGenerator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_0
    iget-boolean v3, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->prefixJson:Z

    if-eqz v3, :cond_0

    .line 138
    const-string v3, "{} && "

    invoke-virtual {v2, v3}, Lorg/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v3, p0, Lorg/springframework/http/converter/json/MappingJacksonHttpMessageConverter;->objectMapper:Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v3, v2, p1}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
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

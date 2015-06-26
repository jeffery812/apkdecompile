.class public Lorg/springframework/http/converter/json/GsonHttpMessageConverter;
.super Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.source "GsonHttpMessageConverter.java"


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
.field private gson:Lcom/google/gson/Gson;

.field private prefixJson:Z

.field private type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;-><init>(Lcom/google/gson/Gson;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4
    .parameter "gson"

    .prologue
    .line 78
    new-instance v0, Lorg/springframework/http/MediaType;

    const-string v1, "application"

    const-string v2, "json"

    sget-object v3, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, v3}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;-><init>(Lorg/springframework/http/MediaType;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->type:Ljava/lang/reflect/Type;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->prefixJson:Z

    .line 79
    invoke-virtual {p0, p1}, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->setGson(Lcom/google/gson/Gson;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "serializeNulls"

    .prologue
    .line 69
    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;-><init>(Lcom/google/gson/Gson;)V

    .line 70
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    goto :goto_0
.end method

.method private getCharset(Lorg/springframework/http/HttpHeaders;)Ljava/nio/charset/Charset;
    .locals 1
    .parameter "headers"

    .prologue
    .line 177
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0
.end method


# virtual methods
.method public canRead(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z
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
    .line 115
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->canRead(Lorg/springframework/http/MediaType;)Z

    move-result v0

    return v0
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
    .line 120
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p2}, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->canWrite(Lorg/springframework/http/MediaType;)Z

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method protected readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .locals 6
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
    .line 133
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {p2}, Lorg/springframework/http/HttpInputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->getCharset(Lorg/springframework/http/HttpHeaders;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 136
    .local v1, json:Ljava/io/Reader;
    :try_start_0
    invoke-virtual {p0}, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 137
    .local v2, typeOfT:Ljava/lang/reflect/Type;
    if-eqz v2, :cond_0

    .line 138
    iget-object v3, p0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 140
    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto :goto_0

    .line 142
    .end local v2           #typeOfT:Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 143
    .local v0, ex:Lcom/google/gson/JsonSyntaxException;
    new-instance v3, Lorg/springframework/http/converter/HttpMessageNotReadableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/springframework/http/converter/HttpMessageNotReadableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 144
    .end local v0           #ex:Lcom/google/gson/JsonSyntaxException;
    :catch_1
    move-exception v0

    .line 145
    .local v0, ex:Lcom/google/gson/JsonIOException;
    new-instance v3, Lorg/springframework/http/converter/HttpMessageNotReadableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/gson/JsonIOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/springframework/http/converter/HttpMessageNotReadableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 146
    .end local v0           #ex:Lcom/google/gson/JsonIOException;
    :catch_2
    move-exception v0

    .line 147
    .local v0, ex:Lcom/google/gson/JsonParseException;
    new-instance v3, Lorg/springframework/http/converter/HttpMessageNotReadableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/springframework/http/converter/HttpMessageNotReadableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setGson(Lcom/google/gson/Gson;)V
    .locals 1
    .parameter "gson"

    .prologue
    .line 91
    const-string v0, "\'gson\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->gson:Lcom/google/gson/Gson;

    .line 93
    return-void
.end method

.method public setPrefixJson(Z)V
    .locals 0
    .parameter "prefixJson"

    .prologue
    .line 110
    iput-boolean p1, p0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->prefixJson:Z

    .line 111
    return-void
.end method

.method public setType(Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 96
    iput-object p1, p0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->type:Ljava/lang/reflect/Type;

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
    .line 126
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected writeInternal(Ljava/lang/Object;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 6
    .parameter "o"
    .parameter "outputMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v3

    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->getCharset(Lorg/springframework/http/HttpHeaders;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 158
    .local v2, writer:Ljava/io/OutputStreamWriter;
    :try_start_0
    iget-boolean v3, p0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->prefixJson:Z

    if-eqz v3, :cond_0

    .line 159
    const-string v3, "{} && "

    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 161
    :cond_0
    invoke-virtual {p0}, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 162
    .local v1, typeOfSrc:Ljava/lang/reflect/Type;
    if-eqz v1, :cond_1

    .line 163
    iget-object v3, p0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, p1, v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 167
    :goto_0
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 171
    return-void

    .line 165
    :cond_1
    iget-object v3, p0, Lorg/springframework/http/converter/json/GsonHttpMessageConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v1           #typeOfSrc:Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 169
    .local v0, ex:Lcom/google/gson/JsonIOException;
    new-instance v3, Lorg/springframework/http/converter/HttpMessageNotWritableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not write JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/gson/JsonIOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/springframework/http/converter/HttpMessageNotWritableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.class Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;
.super Ljava/lang/Object;
.source "FormHttpMessageConverter.java"

# interfaces
.implements Lorg/springframework/http/HttpOutputMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/http/converter/FormHttpMessageConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultipartHttpOutputMessage"
.end annotation


# instance fields
.field private final headers:Lorg/springframework/http/HttpHeaders;

.field private headersWritten:Z

.field private final os:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/springframework/http/converter/FormHttpMessageConverter;


# direct methods
.method public constructor <init>(Lorg/springframework/http/converter/FormHttpMessageConverter;Ljava/io/OutputStream;)V
    .locals 1
    .parameter
    .parameter "os"

    .prologue
    .line 374
    iput-object p1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->this$0:Lorg/springframework/http/converter/FormHttpMessageConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    new-instance v0, Lorg/springframework/http/HttpHeaders;

    invoke-direct {v0}, Lorg/springframework/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->headers:Lorg/springframework/http/HttpHeaders;

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->headersWritten:Z

    .line 375
    iput-object p2, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->os:Ljava/io/OutputStream;

    .line 376
    return-void
.end method

.method private writeHeaders()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    iget-boolean v6, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->headersWritten:Z

    if-nez v6, :cond_2

    .line 389
    iget-object v6, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->headers:Lorg/springframework/http/HttpHeaders;

    invoke-virtual {v6}, Lorg/springframework/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 390
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 391
    .local v1, headerName:[B
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 392
    .local v3, headerValueString:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 393
    .local v2, headerValue:[B
    iget-object v6, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->os:Ljava/io/OutputStream;

    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V

    .line 394
    iget-object v6, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->os:Ljava/io/OutputStream;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 395
    iget-object v6, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->os:Ljava/io/OutputStream;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write(I)V

    .line 396
    iget-object v6, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->os:Ljava/io/OutputStream;

    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 397
    iget-object v6, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->this$0:Lorg/springframework/http/converter/FormHttpMessageConverter;

    iget-object v7, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->os:Ljava/io/OutputStream;

    #calls: Lorg/springframework/http/converter/FormHttpMessageConverter;->writeNewLine(Ljava/io/OutputStream;)V
    invoke-static {v6, v7}, Lorg/springframework/http/converter/FormHttpMessageConverter;->access$000(Lorg/springframework/http/converter/FormHttpMessageConverter;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 400
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1           #headerName:[B
    .end local v2           #headerValue:[B
    .end local v3           #headerValueString:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->this$0:Lorg/springframework/http/converter/FormHttpMessageConverter;

    iget-object v7, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->os:Ljava/io/OutputStream;

    #calls: Lorg/springframework/http/converter/FormHttpMessageConverter;->writeNewLine(Ljava/io/OutputStream;)V
    invoke-static {v6, v7}, Lorg/springframework/http/converter/FormHttpMessageConverter;->access$000(Lorg/springframework/http/converter/FormHttpMessageConverter;Ljava/io/OutputStream;)V

    .line 401
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->headersWritten:Z

    .line 403
    :cond_2
    return-void
.end method


# virtual methods
.method protected getAsciiBytes(Ljava/lang/String;)[B
    .locals 2
    .parameter "name"

    .prologue
    .line 407
    :try_start_0
    const-string v1, "US-ASCII"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 408
    :catch_0
    move-exception v0

    .line 410
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBody()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-direct {p0}, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->writeHeaders()V

    .line 384
    iget-object v0, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getHeaders()Lorg/springframework/http/HttpHeaders;
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->headersWritten:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->headers:Lorg/springframework/http/HttpHeaders;

    invoke-static {v0}, Lorg/springframework/http/HttpHeaders;->readOnlyHttpHeaders(Lorg/springframework/http/HttpHeaders;)Lorg/springframework/http/HttpHeaders;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;->headers:Lorg/springframework/http/HttpHeaders;

    goto :goto_0
.end method

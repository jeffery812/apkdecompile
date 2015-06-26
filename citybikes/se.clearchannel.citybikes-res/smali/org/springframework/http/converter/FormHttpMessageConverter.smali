.class public Lorg/springframework/http/converter/FormHttpMessageConverter;
.super Ljava/lang/Object;
.source "FormHttpMessageConverter.java"

# interfaces
.implements Lorg/springframework/http/converter/HttpMessageConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/springframework/http/converter/HttpMessageConverter",
        "<",
        "Lorg/springframework/util/MultiValueMap",
        "<",
        "Ljava/lang/String;",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final BOUNDARY_CHARS:[B


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private partConverters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final rnd:Ljava/util/Random;

.field private supportedMediaTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/springframework/http/converter/FormHttpMessageConverter;->BOUNDARY_CHARS:[B

    return-void

    :array_0
    .array-data 0x1
        0x2dt
        0x5ft
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x30t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->rnd:Ljava/util/Random;

    .line 98
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->charset:Ljava/nio/charset/Charset;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->supportedMediaTypes:Ljava/util/List;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->partConverters:Ljava/util/List;

    .line 106
    iget-object v1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->supportedMediaTypes:Ljava/util/List;

    sget-object v2, Lorg/springframework/http/MediaType;->APPLICATION_FORM_URLENCODED:Lorg/springframework/http/MediaType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->supportedMediaTypes:Ljava/util/List;

    sget-object v2, Lorg/springframework/http/MediaType;->MULTIPART_FORM_DATA:Lorg/springframework/http/MediaType;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->partConverters:Ljava/util/List;

    new-instance v2, Lorg/springframework/http/converter/ByteArrayHttpMessageConverter;

    invoke-direct {v2}, Lorg/springframework/http/converter/ByteArrayHttpMessageConverter;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Lorg/springframework/http/converter/StringHttpMessageConverter;

    invoke-direct {v0}, Lorg/springframework/http/converter/StringHttpMessageConverter;-><init>()V

    .line 111
    .local v0, stringHttpMessageConverter:Lorg/springframework/http/converter/StringHttpMessageConverter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/springframework/http/converter/StringHttpMessageConverter;->setWriteAcceptCharset(Z)V

    .line 112
    iget-object v1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->partConverters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->partConverters:Ljava/util/List;

    new-instance v2, Lorg/springframework/http/converter/ResourceHttpMessageConverter;

    invoke-direct {v2}, Lorg/springframework/http/converter/ResourceHttpMessageConverter;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method static synthetic access$000(Lorg/springframework/http/converter/FormHttpMessageConverter;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/springframework/http/converter/FormHttpMessageConverter;->writeNewLine(Ljava/io/OutputStream;)V

    return-void
.end method

.method private getEntity(Ljava/lang/Object;)Lorg/springframework/http/HttpEntity;
    .locals 1
    .parameter "part"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/springframework/http/HttpEntity",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 290
    instance-of v0, p1, Lorg/springframework/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 291
    check-cast p1, Lorg/springframework/http/HttpEntity;

    .line 293
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v0, Lorg/springframework/http/HttpEntity;

    invoke-direct {v0, p1}, Lorg/springframework/http/HttpEntity;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private isMultipart(Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/MediaType;)Z
    .locals 5
    .parameter
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/springframework/http/MediaType;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, map:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;*>;"
    if-eqz p2, :cond_0

    .line 215
    sget-object v4, Lorg/springframework/http/MediaType;->MULTIPART_FORM_DATA:Lorg/springframework/http/MediaType;

    invoke-virtual {v4, p2}, Lorg/springframework/http/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 224
    :goto_0
    return v4

    .line 217
    :cond_0
    invoke-interface {p1}, Lorg/springframework/util/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    .local v2, name:Ljava/lang/String;
    invoke-interface {p1, v2}, Lorg/springframework/util/MultiValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 219
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_2

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_2

    .line 220
    const/4 v4, 0x1

    goto :goto_0

    .line 224
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private writeBoundary([BLjava/io/OutputStream;)V
    .locals 1
    .parameter "boundary"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x2d

    .line 283
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 284
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 285
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 286
    invoke-direct {p0, p2}, Lorg/springframework/http/converter/FormHttpMessageConverter;->writeNewLine(Ljava/io/OutputStream;)V

    .line 287
    return-void
.end method

.method private writeEnd([BLjava/io/OutputStream;)V
    .locals 1
    .parameter "boundary"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x2d

    .line 318
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 319
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 320
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 321
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 322
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 323
    invoke-direct {p0, p2}, Lorg/springframework/http/converter/FormHttpMessageConverter;->writeNewLine(Ljava/io/OutputStream;)V

    .line 324
    return-void
.end method

.method private writeForm(Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 10
    .parameter
    .parameter "contentType"
    .parameter "outputMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/springframework/http/MediaType;",
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
    .local p1, form:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v9, 0x26

    .line 229
    if-eqz p2, :cond_3

    .line 230
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {v7, p2}, Lorg/springframework/http/HttpHeaders;->setContentType(Lorg/springframework/http/MediaType;)V

    .line 231
    invoke-virtual {p2}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 236
    .local v2, charset:Ljava/nio/charset/Charset;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/springframework/util/MultiValueMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, nameIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 238
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 239
    .local v3, name:Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/springframework/util/MultiValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, valueIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 240
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 241
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    if-eqz v5, :cond_1

    .line 243
    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 246
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 231
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #charset:Ljava/nio/charset/Charset;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #nameIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #valueIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->charset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 233
    :cond_3
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v7

    sget-object v8, Lorg/springframework/http/MediaType;->APPLICATION_FORM_URLENCODED:Lorg/springframework/http/MediaType;

    invoke-virtual {v7, v8}, Lorg/springframework/http/HttpHeaders;->setContentType(Lorg/springframework/http/MediaType;)V

    .line 234
    iget-object v2, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->charset:Ljava/nio/charset/Charset;

    .restart local v2       #charset:Ljava/nio/charset/Charset;
    goto :goto_0

    .line 250
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #nameIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6       #valueIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 251
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 254
    .end local v3           #name:Ljava/lang/String;
    .end local v6           #valueIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 255
    .local v1, bytes:[B
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v7

    array-length v8, v1

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lorg/springframework/http/HttpHeaders;->setContentLength(J)V

    .line 256
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v7

    invoke-static {v1, v7}, Lorg/springframework/util/FileCopyUtils;->copy([BLjava/io/OutputStream;)V

    .line 257
    return-void
.end method

.method private writeMultipart(Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 6
    .parameter
    .parameter "outputMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
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
    .line 260
    .local p1, parts:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/springframework/http/converter/FormHttpMessageConverter;->generateMultipartBoundary()[B

    move-result-object v0

    .line 262
    .local v0, boundary:[B
    const-string v3, "boundary"

    new-instance v4, Ljava/lang/String;

    const-string v5, "US-ASCII"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 263
    .local v2, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/springframework/http/MediaType;

    sget-object v3, Lorg/springframework/http/MediaType;->MULTIPART_FORM_DATA:Lorg/springframework/http/MediaType;

    invoke-direct {v1, v3, v2}, Lorg/springframework/http/MediaType;-><init>(Lorg/springframework/http/MediaType;Ljava/util/Map;)V

    .line 264
    .local v1, contentType:Lorg/springframework/http/MediaType;
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/springframework/http/HttpHeaders;->setContentType(Lorg/springframework/http/MediaType;)V

    .line 266
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p0, v3, p1, v0}, Lorg/springframework/http/converter/FormHttpMessageConverter;->writeParts(Ljava/io/OutputStream;Lorg/springframework/util/MultiValueMap;[B)V

    .line 267
    invoke-interface {p2}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lorg/springframework/http/converter/FormHttpMessageConverter;->writeEnd([BLjava/io/OutputStream;)V

    .line 268
    return-void
.end method

.method private writeNewLine(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 328
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 329
    return-void
.end method

.method private writePart(Ljava/lang/String;Lorg/springframework/http/HttpEntity;Ljava/io/OutputStream;)V
    .locals 10
    .parameter "name"
    .parameter
    .parameter "os"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/springframework/http/HttpEntity",
            "<*>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    .local p2, partEntity:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<*>;"
    invoke-virtual {p2}, Lorg/springframework/http/HttpEntity;->getBody()Ljava/lang/Object;

    move-result-object v3

    .line 300
    .local v3, partBody:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 301
    .local v6, partType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lorg/springframework/http/HttpEntity;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v5

    .line 302
    .local v5, partHeaders:Lorg/springframework/http/HttpHeaders;
    invoke-virtual {v5}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v4

    .line 303
    .local v4, partContentType:Lorg/springframework/http/MediaType;
    iget-object v7, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->partConverters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/springframework/http/converter/HttpMessageConverter;

    .line 304
    .local v1, messageConverter:Lorg/springframework/http/converter/HttpMessageConverter;
    invoke-interface {v1, v6, v4}, Lorg/springframework/http/converter/HttpMessageConverter;->canWrite(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 305
    new-instance v2, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;

    invoke-direct {v2, p0, p3}, Lorg/springframework/http/converter/FormHttpMessageConverter$MultipartHttpOutputMessage;-><init>(Lorg/springframework/http/converter/FormHttpMessageConverter;Ljava/io/OutputStream;)V

    .line 306
    .local v2, multipartOutputMessage:Lorg/springframework/http/HttpOutputMessage;
    invoke-interface {v2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {p0, v3}, Lorg/springframework/http/converter/FormHttpMessageConverter;->getFilename(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lorg/springframework/http/HttpHeaders;->setContentDispositionFormData(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v5}, Lorg/springframework/http/HttpHeaders;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 308
    invoke-interface {v2}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/springframework/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 310
    :cond_1
    invoke-interface {v1, v3, v4, v2}, Lorg/springframework/http/converter/HttpMessageConverter;->write(Ljava/lang/Object;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V

    .line 311
    return-void

    .line 314
    .end local v1           #messageConverter:Lorg/springframework/http/converter/HttpMessageConverter;
    .end local v2           #multipartOutputMessage:Lorg/springframework/http/HttpOutputMessage;
    :cond_2
    new-instance v7, Lorg/springframework/http/converter/HttpMessageNotWritableException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not write request: no suitable HttpMessageConverter found for request type ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/springframework/http/converter/HttpMessageNotWritableException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private writeParts(Ljava/io/OutputStream;Lorg/springframework/util/MultiValueMap;[B)V
    .locals 7
    .parameter "os"
    .parameter
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    .local p2, parts:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Lorg/springframework/util/MultiValueMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 272
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 273
    .local v4, name:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 274
    .local v5, part:Ljava/lang/Object;
    invoke-direct {p0, p3, p1}, Lorg/springframework/http/converter/FormHttpMessageConverter;->writeBoundary([BLjava/io/OutputStream;)V

    .line 275
    invoke-direct {p0, v5}, Lorg/springframework/http/converter/FormHttpMessageConverter;->getEntity(Ljava/lang/Object;)Lorg/springframework/http/HttpEntity;

    move-result-object v0

    .line 276
    .local v0, entity:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<*>;"
    invoke-direct {p0, v4, v0, p1}, Lorg/springframework/http/converter/FormHttpMessageConverter;->writePart(Ljava/lang/String;Lorg/springframework/http/HttpEntity;Ljava/io/OutputStream;)V

    .line 277
    invoke-direct {p0, p1}, Lorg/springframework/http/converter/FormHttpMessageConverter;->writeNewLine(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 280
    .end local v0           #entity:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<*>;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #part:Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method public final addPartConverter(Lorg/springframework/http/converter/HttpMessageConverter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, partConverter:Lorg/springframework/http/converter/HttpMessageConverter;,"Lorg/springframework/http/converter/HttpMessageConverter<*>;"
    const-string v0, "\'partConverter\' must not be NULL"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->partConverters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public canRead(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z
    .locals 5
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
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    const-class v4, Lorg/springframework/util/MultiValueMap;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v2

    .line 143
    :cond_1
    if-nez p2, :cond_2

    move v2, v3

    .line 144
    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0}, Lorg/springframework/http/converter/FormHttpMessageConverter;->getSupportedMediaTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/springframework/http/MediaType;

    .line 148
    .local v1, supportedMediaType:Lorg/springframework/http/MediaType;
    sget-object v4, Lorg/springframework/http/MediaType;->MULTIPART_FORM_DATA:Lorg/springframework/http/MediaType;

    invoke-virtual {v1, v4}, Lorg/springframework/http/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, p2}, Lorg/springframework/http/MediaType;->includes(Lorg/springframework/http/MediaType;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 149
    goto :goto_0
.end method

.method public canWrite(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z
    .locals 5
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
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    const-class v4, Lorg/springframework/util/MultiValueMap;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v2

    .line 159
    :cond_1
    if-eqz p2, :cond_2

    sget-object v4, Lorg/springframework/http/MediaType;->ALL:Lorg/springframework/http/MediaType;

    invoke-virtual {v4, p2}, Lorg/springframework/http/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    .line 160
    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p0}, Lorg/springframework/http/converter/FormHttpMessageConverter;->getSupportedMediaTypes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/springframework/http/MediaType;

    .line 163
    .local v1, supportedMediaType:Lorg/springframework/http/MediaType;
    invoke-virtual {v1, p2}, Lorg/springframework/http/MediaType;->isCompatibleWith(Lorg/springframework/http/MediaType;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 164
    goto :goto_0
.end method

.method protected generateMultipartBoundary()[B
    .locals 5

    .prologue
    .line 337
    iget-object v2, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->rnd:Ljava/util/Random;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    new-array v0, v2, [B

    .line 338
    .local v0, boundary:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 339
    sget-object v2, Lorg/springframework/http/converter/FormHttpMessageConverter;->BOUNDARY_CHARS:[B

    iget-object v3, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->rnd:Ljava/util/Random;

    sget-object v4, Lorg/springframework/http/converter/FormHttpMessageConverter;->BOUNDARY_CHARS:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-object v0
.end method

.method protected getFilename(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "part"

    .prologue
    .line 355
    instance-of v1, p1, Lorg/springframework/core/io/Resource;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 356
    check-cast v0, Lorg/springframework/core/io/Resource;

    .line 357
    .local v0, resource:Lorg/springframework/core/io/Resource;
    invoke-interface {v0}, Lorg/springframework/core/io/Resource;->getFilename()Ljava/lang/String;

    move-result-object v1

    .line 359
    .end local v0           #resource:Lorg/springframework/core/io/Resource;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportedMediaTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/MediaType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->supportedMediaTypes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic read(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
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
    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/FormHttpMessageConverter;->read(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Lorg/springframework/util/MultiValueMap;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Lorg/springframework/util/MultiValueMap;
    .locals 14
    .parameter
    .parameter "inputMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation

    .prologue
    .line 183
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/springframework/util/MultiValueMap<Ljava/lang/String;*>;>;"
    invoke-interface/range {p2 .. p2}, Lorg/springframework/http/HttpInputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v12

    invoke-virtual {v12}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v3

    .line 184
    .local v3, contentType:Lorg/springframework/http/MediaType;
    invoke-virtual {v3}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v3}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 185
    .local v2, charset:Ljava/nio/charset/Charset;
    :goto_0
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-interface/range {p2 .. p2}, Lorg/springframework/http/HttpInputMessage;->getBody()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v12}, Lorg/springframework/util/FileCopyUtils;->copyToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, body:Ljava/lang/String;
    const-string v12, "&"

    invoke-static {v1, v12}, Lorg/springframework/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, pairs:[Ljava/lang/String;
    new-instance v10, Lorg/springframework/util/LinkedMultiValueMap;

    array-length v12, v9

    invoke-direct {v10, v12}, Lorg/springframework/util/LinkedMultiValueMap;-><init>(I)V

    .line 191
    .local v10, result:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v8, v0, v4

    .line 192
    .local v8, pair:Ljava/lang/String;
    const/16 v12, 0x3d

    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 193
    .local v5, idx:I
    const/4 v12, -0x1

    if-ne v5, v12, :cond_1

    .line 194
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v10, v12, v13}, Lorg/springframework/util/MultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 184
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #body:Ljava/lang/String;
    .end local v2           #charset:Ljava/nio/charset/Charset;
    .end local v4           #i$:I
    .end local v5           #idx:I
    .end local v6           #len$:I
    .end local v8           #pair:Ljava/lang/String;
    .end local v9           #pairs:[Ljava/lang/String;
    .end local v10           #result:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->charset:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 196
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #body:Ljava/lang/String;
    .restart local v2       #charset:Ljava/nio/charset/Charset;
    .restart local v4       #i$:I
    .restart local v5       #idx:I
    .restart local v6       #len$:I
    .restart local v8       #pair:Ljava/lang/String;
    .restart local v9       #pairs:[Ljava/lang/String;
    .restart local v10       #result:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, name:Ljava/lang/String;
    add-int/lit8 v12, v5, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 198
    .local v11, value:Ljava/lang/String;
    invoke-interface {v10, v7, v11}, Lorg/springframework/util/MultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 201
    .end local v5           #idx:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #pair:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_2
    return-object v10
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0
    .parameter "charset"

    .prologue
    .line 136
    iput-object p1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->charset:Ljava/nio/charset/Charset;

    .line 137
    return-void
.end method

.method public final setPartConverters(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, partConverters:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    const-string v0, "\'partConverters\' must not be empty"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->partConverters:Ljava/util/List;

    .line 122
    return-void
.end method

.method public setSupportedMediaTypes(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/MediaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, supportedMediaTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/MediaType;>;"
    iput-object p1, p0, Lorg/springframework/http/converter/FormHttpMessageConverter;->supportedMediaTypes:Ljava/util/List;

    .line 175
    return-void
.end method

.method public bridge synthetic write(Ljava/lang/Object;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation

    .prologue
    .line 91
    check-cast p1, Lorg/springframework/util/MultiValueMap;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lorg/springframework/http/converter/FormHttpMessageConverter;->write(Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V

    return-void
.end method

.method public write(Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 1
    .parameter
    .parameter "contentType"
    .parameter "outputMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/springframework/http/MediaType;",
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
    .line 206
    .local p1, map:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p2}, Lorg/springframework/http/converter/FormHttpMessageConverter;->isMultipart(Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/MediaType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lorg/springframework/http/converter/FormHttpMessageConverter;->writeForm(Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/springframework/http/converter/FormHttpMessageConverter;->writeMultipart(Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/HttpOutputMessage;)V

    goto :goto_0
.end method

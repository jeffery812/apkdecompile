.class public abstract Lorg/springframework/http/converter/AbstractHttpMessageConverter;
.super Ljava/lang/Object;
.source "AbstractHttpMessageConverter.java"

# interfaces
.implements Lorg/springframework/http/converter/HttpMessageConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/springframework/http/converter/HttpMessageConverter",
        "<TT;>;"
    }
.end annotation


# instance fields
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
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 51
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->supportedMediaTypes:Ljava/util/List;

    .line 52
    return-void
.end method

.method protected constructor <init>(Lorg/springframework/http/MediaType;)V
    .locals 1
    .parameter "supportedMediaType"

    .prologue
    .line 58
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->supportedMediaTypes:Ljava/util/List;

    .line 59
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->setSupportedMediaTypes(Ljava/util/List;)V

    .line 60
    return-void
.end method

.method protected varargs constructor <init>([Lorg/springframework/http/MediaType;)V
    .locals 1
    .parameter "supportedMediaTypes"

    .prologue
    .line 66
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->supportedMediaTypes:Ljava/util/List;

    .line 67
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->setSupportedMediaTypes(Ljava/util/List;)V

    .line 68
    return-void
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
    .line 90
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->supports(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->canRead(Lorg/springframework/http/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canRead(Lorg/springframework/http/MediaType;)Z
    .locals 4
    .parameter "mediaType"

    .prologue
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    const/4 v2, 0x1

    .line 102
    if-nez p1, :cond_0

    .line 110
    :goto_0
    return v2

    .line 105
    :cond_0
    invoke-virtual {p0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->getSupportedMediaTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/springframework/http/MediaType;

    .line 106
    .local v1, supportedMediaType:Lorg/springframework/http/MediaType;
    invoke-virtual {v1, p1}, Lorg/springframework/http/MediaType;->includes(Lorg/springframework/http/MediaType;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 110
    .end local v1           #supportedMediaType:Lorg/springframework/http/MediaType;
    :cond_2
    const/4 v2, 0x0

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
    .line 119
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->supports(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->canWrite(Lorg/springframework/http/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canWrite(Lorg/springframework/http/MediaType;)Z
    .locals 4
    .parameter "mediaType"

    .prologue
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    const/4 v2, 0x1

    .line 131
    if-eqz p1, :cond_0

    sget-object v3, Lorg/springframework/http/MediaType;->ALL:Lorg/springframework/http/MediaType;

    invoke-virtual {v3, p1}, Lorg/springframework/http/MediaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v2

    .line 134
    :cond_1
    invoke-virtual {p0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->getSupportedMediaTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/springframework/http/MediaType;

    .line 135
    .local v1, supportedMediaType:Lorg/springframework/http/MediaType;
    invoke-virtual {v1, p1}, Lorg/springframework/http/MediaType;->isCompatibleWith(Lorg/springframework/http/MediaType;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 139
    .end local v1           #supportedMediaType:Lorg/springframework/http/MediaType;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getContentLength(Ljava/lang/Object;Lorg/springframework/http/MediaType;)Ljava/lang/Long;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDefaultContentType(Ljava/lang/Object;)Lorg/springframework/http/MediaType;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/springframework/http/MediaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->getSupportedMediaTypes()Ljava/util/List;

    move-result-object v0

    .line 188
    .local v0, mediaTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/MediaType;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/springframework/http/MediaType;

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
    .line 80
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    iget-object v0, p0, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->supportedMediaTypes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final read(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .locals 1
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
    .line 147
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract readInternal(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
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
.end method

.method public setSupportedMediaTypes(Ljava/util/List;)V
    .locals 1
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
    .line 75
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    .local p1, supportedMediaTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/MediaType;>;"
    const-string v0, "\'supportedMediaTypes\' must not be empty"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->supportedMediaTypes:Ljava/util/List;

    .line 77
    return-void
.end method

.method protected abstract supports(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
.end method

.method public final write(Ljava/lang/Object;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V
    .locals 6
    .parameter
    .parameter "contentType"
    .parameter "outputMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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
    .line 158
    .local p0, this:Lorg/springframework/http/converter/AbstractHttpMessageConverter;,"Lorg/springframework/http/converter/AbstractHttpMessageConverter<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v1

    .line 159
    .local v1, headers:Lorg/springframework/http/HttpHeaders;
    invoke-virtual {v1}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v2

    if-nez v2, :cond_2

    .line 160
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/springframework/http/MediaType;->isWildcardType()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lorg/springframework/http/MediaType;->isWildcardSubtype()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    :cond_0
    invoke-virtual {p0, p1}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->getDefaultContentType(Ljava/lang/Object;)Lorg/springframework/http/MediaType;

    move-result-object p2

    .line 163
    :cond_1
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {v1, p2}, Lorg/springframework/http/HttpHeaders;->setContentType(Lorg/springframework/http/MediaType;)V

    .line 167
    :cond_2
    invoke-virtual {v1}, Lorg/springframework/http/HttpHeaders;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 168
    invoke-virtual {v1}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->getContentLength(Ljava/lang/Object;Lorg/springframework/http/MediaType;)Ljava/lang/Long;

    move-result-object v0

    .line 169
    .local v0, contentLength:Ljava/lang/Long;
    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/springframework/http/HttpHeaders;->setContentLength(J)V

    .line 173
    .end local v0           #contentLength:Ljava/lang/Long;
    :cond_3
    invoke-virtual {p0, p1, p3}, Lorg/springframework/http/converter/AbstractHttpMessageConverter;->writeInternal(Ljava/lang/Object;Lorg/springframework/http/HttpOutputMessage;)V

    .line 174
    invoke-interface {p3}, Lorg/springframework/http/HttpOutputMessage;->getBody()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 175
    return-void
.end method

.method protected abstract writeInternal(Ljava/lang/Object;Lorg/springframework/http/HttpOutputMessage;)V
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
.end method

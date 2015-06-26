.class Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;
.super Ljava/lang/Object;
.source "RestTemplate.java"

# interfaces
.implements Lorg/springframework/web/client/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/client/RestTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptHeaderRequestCallback"
.end annotation


# instance fields
.field private final responseType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/springframework/web/client/RestTemplate;


# direct methods
.method private constructor <init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p2, responseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;->this$0:Lorg/springframework/web/client/RestTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-object p2, p0, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;->responseType:Ljava/lang/Class;

    .line 536
    return-void
.end method

.method synthetic constructor <init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 530
    invoke-direct {p0, p1, p2}, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public doWithRequest(Lorg/springframework/http/client/ClientHttpRequest;)V
    .locals 10
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v7, p0, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;->responseType:Ljava/lang/Class;

    if-eqz v7, :cond_4

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v0, allSupportedMediaTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/MediaType;>;"
    iget-object v7, p0, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;->this$0:Lorg/springframework/web/client/RestTemplate;

    invoke-virtual {v7}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/springframework/http/converter/HttpMessageConverter;

    .line 542
    .local v3, messageConverter:Lorg/springframework/http/converter/HttpMessageConverter;,"Lorg/springframework/http/converter/HttpMessageConverter<*>;"
    iget-object v7, p0, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;->responseType:Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Lorg/springframework/http/converter/HttpMessageConverter;->canRead(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 543
    invoke-interface {v3}, Lorg/springframework/http/converter/HttpMessageConverter;->getSupportedMediaTypes()Ljava/util/List;

    move-result-object v6

    .line 544
    .local v6, supportedMediaTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/MediaType;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/springframework/http/MediaType;

    .line 545
    .local v4, supportedMediaType:Lorg/springframework/http/MediaType;
    invoke-virtual {v4}, Lorg/springframework/http/MediaType;->getCharSet()Ljava/nio/charset/Charset;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 546
    new-instance v5, Lorg/springframework/http/MediaType;

    invoke-virtual {v4}, Lorg/springframework/http/MediaType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lorg/springframework/http/MediaType;->getSubtype()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/springframework/http/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4           #supportedMediaType:Lorg/springframework/http/MediaType;
    .local v5, supportedMediaType:Lorg/springframework/http/MediaType;
    move-object v4, v5

    .line 549
    .end local v5           #supportedMediaType:Lorg/springframework/http/MediaType;
    .restart local v4       #supportedMediaType:Lorg/springframework/http/MediaType;
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #messageConverter:Lorg/springframework/http/converter/HttpMessageConverter;,"Lorg/springframework/http/converter/HttpMessageConverter<*>;"
    .end local v4           #supportedMediaType:Lorg/springframework/http/MediaType;
    .end local v6           #supportedMediaTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/MediaType;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 554
    invoke-static {v0}, Lorg/springframework/http/MediaType;->sortBySpecificity(Ljava/util/List;)V

    .line 555
    const-string v7, "RestTemplate"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 556
    const-string v7, "RestTemplate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting request Accept header to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_3
    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpRequest;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/springframework/http/HttpHeaders;->setAccept(Ljava/util/List;)V

    .line 561
    .end local v0           #allSupportedMediaTypes:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/MediaType;>;"
    :cond_4
    return-void
.end method

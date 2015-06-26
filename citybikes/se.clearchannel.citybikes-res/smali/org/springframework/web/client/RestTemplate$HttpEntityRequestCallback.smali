.class Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
.super Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;
.source "RestTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/client/RestTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpEntityRequestCallback"
.end annotation


# instance fields
.field private final requestEntity:Lorg/springframework/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/springframework/http/HttpEntity",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/springframework/web/client/RestTemplate;


# direct methods
.method private constructor <init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "requestBody"

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 574
    return-void
.end method

.method private constructor <init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter "requestBody"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p3, responseType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;->this$0:Lorg/springframework/web/client/RestTemplate;

    .line 578
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 579
    instance-of v0, p2, Lorg/springframework/http/HttpEntity;

    if-eqz v0, :cond_0

    .line 580
    check-cast p2, Lorg/springframework/http/HttpEntity;

    .end local p2
    iput-object p2, p0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;->requestEntity:Lorg/springframework/http/HttpEntity;

    .line 588
    :goto_0
    return-void

    .line 582
    .restart local p2
    :cond_0
    if-eqz p2, :cond_1

    .line 583
    new-instance v0, Lorg/springframework/http/HttpEntity;

    invoke-direct {v0, p2}, Lorg/springframework/http/HttpEntity;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;->requestEntity:Lorg/springframework/http/HttpEntity;

    goto :goto_0

    .line 586
    :cond_1
    sget-object v0, Lorg/springframework/http/HttpEntity;->EMPTY:Lorg/springframework/http/HttpEntity;

    iput-object v0, p0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;->requestEntity:Lorg/springframework/http/HttpEntity;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 568
    invoke-direct {p0, p1, p2, p3}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Lorg/springframework/web/client/RestTemplate$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 568
    invoke-direct {p0, p1, p2}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public doWithRequest(Lorg/springframework/http/client/ClientHttpRequest;)V
    .locals 12
    .parameter "httpRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-super {p0, p1}, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;->doWithRequest(Lorg/springframework/http/client/ClientHttpRequest;)V

    .line 594
    iget-object v8, p0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;->requestEntity:Lorg/springframework/http/HttpEntity;

    invoke-virtual {v8}, Lorg/springframework/http/HttpEntity;->hasBody()Z

    move-result v8

    if-nez v8, :cond_2

    .line 595
    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpRequest;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v0

    .line 596
    .local v0, httpHeaders:Lorg/springframework/http/HttpHeaders;
    iget-object v8, p0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;->requestEntity:Lorg/springframework/http/HttpEntity;

    invoke-virtual {v8}, Lorg/springframework/http/HttpEntity;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v6

    .line 597
    .local v6, requestHeaders:Lorg/springframework/http/HttpHeaders;
    invoke-virtual {v6}, Lorg/springframework/http/HttpHeaders;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 598
    invoke-virtual {v0, v6}, Lorg/springframework/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 600
    :cond_0
    invoke-virtual {v0}, Lorg/springframework/http/HttpHeaders;->getContentLength()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 601
    const-wide/16 v8, 0x0

    invoke-virtual {v0, v8, v9}, Lorg/springframework/http/HttpHeaders;->setContentLength(J)V

    .line 635
    .end local v0           #httpHeaders:Lorg/springframework/http/HttpHeaders;
    :cond_1
    :goto_0
    return-void

    .line 605
    .end local v6           #requestHeaders:Lorg/springframework/http/HttpHeaders;
    :cond_2
    iget-object v8, p0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;->requestEntity:Lorg/springframework/http/HttpEntity;

    invoke-virtual {v8}, Lorg/springframework/http/HttpEntity;->getBody()Ljava/lang/Object;

    move-result-object v4

    .line 606
    .local v4, requestBody:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 607
    .local v7, requestType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v8, p0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;->requestEntity:Lorg/springframework/http/HttpEntity;

    invoke-virtual {v8}, Lorg/springframework/http/HttpEntity;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v6

    .line 608
    .restart local v6       #requestHeaders:Lorg/springframework/http/HttpHeaders;
    invoke-virtual {v6}, Lorg/springframework/http/HttpHeaders;->getContentType()Lorg/springframework/http/MediaType;

    move-result-object v5

    .line 609
    .local v5, requestContentType:Lorg/springframework/http/MediaType;
    iget-object v8, p0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;->this$0:Lorg/springframework/web/client/RestTemplate;

    invoke-virtual {v8}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/springframework/http/converter/HttpMessageConverter;

    .line 610
    .local v3, messageConverter:Lorg/springframework/http/converter/HttpMessageConverter;
    invoke-interface {v3, v7, v5}, Lorg/springframework/http/converter/HttpMessageConverter;->canWrite(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 611
    invoke-virtual {v6}, Lorg/springframework/http/HttpHeaders;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 612
    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpRequest;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/springframework/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 614
    :cond_4
    const-string v8, "RestTemplate"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 615
    if-eqz v5, :cond_6

    .line 616
    const-string v8, "RestTemplate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] as \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" using ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_5
    :goto_1
    invoke-interface {v3, v4, v5, p1}, Lorg/springframework/http/converter/HttpMessageConverter;->write(Ljava/lang/Object;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V

    goto :goto_0

    .line 620
    :cond_6
    const-string v8, "RestTemplate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] using ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 628
    .end local v3           #messageConverter:Lorg/springframework/http/converter/HttpMessageConverter;
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not write request: no suitable HttpMessageConverter found for request type ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, message:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 631
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and content type ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 633
    :cond_8
    new-instance v8, Lorg/springframework/web/client/RestClientException;

    invoke-direct {v8, v2}, Lorg/springframework/web/client/RestClientException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

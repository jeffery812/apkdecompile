.class public Lorg/springframework/web/client/RestTemplate;
.super Lorg/springframework/http/client/support/InterceptingHttpAccessor;
.source "RestTemplate.java"

# interfaces
.implements Lorg/springframework/web/client/RestOperations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/springframework/web/client/RestTemplate$1;,
        Lorg/springframework/web/client/RestTemplate$HttpUrlTemplate;,
        Lorg/springframework/web/client/RestTemplate$HeadersExtractor;,
        Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;,
        Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,
        Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;,
        Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestTemplate"


# instance fields
.field private errorHandler:Lorg/springframework/web/client/ResponseErrorHandler;

.field private final headersExtractor:Lorg/springframework/web/client/ResponseExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/springframework/web/client/ResponseExtractor",
            "<",
            "Lorg/springframework/http/HttpHeaders;",
            ">;"
        }
    .end annotation
.end field

.field private messageConverters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/springframework/web/client/RestTemplate;-><init>(Z)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lorg/springframework/http/client/ClientHttpRequestFactory;)V
    .locals 1
    .parameter "requestFactory"

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/springframework/web/client/RestTemplate;-><init>(ZLorg/springframework/http/client/ClientHttpRequestFactory;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "includeDefaultConverters"

    .prologue
    .line 169
    invoke-direct {p0}, Lorg/springframework/http/client/support/InterceptingHttpAccessor;-><init>()V

    .line 144
    new-instance v0, Lorg/springframework/web/client/RestTemplate$HeadersExtractor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/springframework/web/client/RestTemplate$HeadersExtractor;-><init>(Lorg/springframework/web/client/RestTemplate$1;)V

    iput-object v0, p0, Lorg/springframework/web/client/RestTemplate;->headersExtractor:Lorg/springframework/web/client/ResponseExtractor;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/springframework/web/client/RestTemplate;->messageConverters:Ljava/util/List;

    .line 148
    new-instance v0, Lorg/springframework/web/client/DefaultResponseErrorHandler;

    invoke-direct {v0}, Lorg/springframework/web/client/DefaultResponseErrorHandler;-><init>()V

    iput-object v0, p0, Lorg/springframework/web/client/RestTemplate;->errorHandler:Lorg/springframework/web/client/ResponseErrorHandler;

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lorg/springframework/web/client/RestTemplate;->messageConverters:Ljava/util/List;

    invoke-static {v0}, Lorg/springframework/web/client/RestTemplate$DefaultMessageConverters;->init(Ljava/util/List;)V

    .line 173
    :cond_0
    return-void
.end method

.method public constructor <init>(ZLorg/springframework/http/client/ClientHttpRequestFactory;)V
    .locals 0
    .parameter "includeDefaultConverters"
    .parameter "requestFactory"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lorg/springframework/web/client/RestTemplate;-><init>(Z)V

    .line 201
    invoke-virtual {p0, p2}, Lorg/springframework/web/client/RestTemplate;->setRequestFactory(Lorg/springframework/http/client/ClientHttpRequestFactory;)V

    .line 202
    return-void
.end method

.method private handleResponseError(Lorg/springframework/http/HttpMethod;Ljava/net/URI;Lorg/springframework/http/client/ClientHttpResponse;)V
    .locals 3
    .parameter "method"
    .parameter "url"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    const-string v0, "RestTemplate"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    :try_start_0
    const-string v0, "RestTemplate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/springframework/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" resulted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/springframework/http/client/ClientHttpResponse;->getStatusCode()Lorg/springframework/http/HttpStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/springframework/http/client/ClientHttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); invoking error handler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/springframework/web/client/RestTemplate;->getErrorHandler()Lorg/springframework/web/client/ResponseErrorHandler;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/springframework/web/client/ResponseErrorHandler;->handleError(Lorg/springframework/http/client/ClientHttpResponse;)V

    .line 525
    return-void

    .line 520
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private logResponseStatus(Lorg/springframework/http/HttpMethod;Ljava/net/URI;Lorg/springframework/http/client/ClientHttpResponse;)V
    .locals 3
    .parameter "method"
    .parameter "url"
    .parameter "response"

    .prologue
    .line 501
    const-string v0, "RestTemplate"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    :try_start_0
    const-string v0, "RestTemplate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/springframework/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " request for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" resulted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/springframework/http/client/ClientHttpResponse;->getStatusCode()Lorg/springframework/http/HttpStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/springframework/http/client/ClientHttpResponse;->getStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .local p2, urlVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v3, 0x0

    .line 385
    sget-object v2, Lorg/springframework/http/HttpMethod;->DELETE:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;

    .line 386
    return-void
.end method

.method public varargs delete(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "url"
    .parameter "urlVariables"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 381
    sget-object v2, Lorg/springframework/http/HttpMethod;->DELETE:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    return-void
.end method

.method public delete(Ljava/net/URI;)V
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 389
    sget-object v0, Lorg/springframework/http/HttpMethod;->DELETE:Lorg/springframework/http/HttpMethod;

    invoke-virtual {p0, p1, v0, v1, v1}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    .line 390
    return-void
.end method

.method protected doExecute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;
    .locals 6
    .parameter "url"
    .parameter "method"
    .parameter "requestCallback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/web/client/RequestCallback;",
            "Lorg/springframework/web/client/ResponseExtractor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 468
    .local p4, responseExtractor:Lorg/springframework/web/client/ResponseExtractor;,"Lorg/springframework/web/client/ResponseExtractor<TT;>;"
    const-string v3, "\'url\' must not be null"

    invoke-static {p1, v3}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    const-string v3, "\'method\' must not be null"

    invoke-static {p2, v3}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    const/4 v2, 0x0

    .line 472
    .local v2, response:Lorg/springframework/http/client/ClientHttpResponse;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/springframework/web/client/RestTemplate;->createRequest(Ljava/net/URI;Lorg/springframework/http/HttpMethod;)Lorg/springframework/http/client/ClientHttpRequest;

    move-result-object v1

    .line 473
    .local v1, request:Lorg/springframework/http/client/ClientHttpRequest;
    if-eqz p3, :cond_0

    .line 474
    invoke-interface {p3, v1}, Lorg/springframework/web/client/RequestCallback;->doWithRequest(Lorg/springframework/http/client/ClientHttpRequest;)V

    .line 476
    :cond_0
    invoke-interface {v1}, Lorg/springframework/http/client/ClientHttpRequest;->execute()Lorg/springframework/http/client/ClientHttpResponse;

    move-result-object v2

    .line 477
    invoke-virtual {p0}, Lorg/springframework/web/client/RestTemplate;->getErrorHandler()Lorg/springframework/web/client/ResponseErrorHandler;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/springframework/web/client/ResponseErrorHandler;->hasError(Lorg/springframework/http/client/ClientHttpResponse;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 478
    invoke-direct {p0, p2, p1, v2}, Lorg/springframework/web/client/RestTemplate;->logResponseStatus(Lorg/springframework/http/HttpMethod;Ljava/net/URI;Lorg/springframework/http/client/ClientHttpResponse;)V

    .line 483
    :goto_0
    if-eqz p4, :cond_4

    .line 484
    invoke-interface {p4, v2}, Lorg/springframework/web/client/ResponseExtractor;->extractData(Lorg/springframework/http/client/ClientHttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 494
    if-eqz v2, :cond_1

    .line 495
    invoke-interface {v2}, Lorg/springframework/http/client/ClientHttpResponse;->close()V

    :cond_1
    :goto_1
    return-object v3

    .line 481
    :cond_2
    :try_start_1
    invoke-direct {p0, p2, p1, v2}, Lorg/springframework/web/client/RestTemplate;->handleResponseError(Lorg/springframework/http/HttpMethod;Ljava/net/URI;Lorg/springframework/http/client/ClientHttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 490
    .end local v1           #request:Lorg/springframework/http/client/ClientHttpRequest;
    :catch_0
    move-exception v0

    .line 491
    .local v0, ex:Ljava/io/IOException;
    :try_start_2
    new-instance v3, Lorg/springframework/web/client/ResourceAccessException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/springframework/web/client/ResourceAccessException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 494
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 495
    invoke-interface {v2}, Lorg/springframework/http/client/ClientHttpResponse;->close()V

    :cond_3
    throw v3

    .line 487
    .restart local v1       #request:Lorg/springframework/http/client/ClientHttpRequest;
    :cond_4
    const/4 v3, 0x0

    .line 494
    if-eqz v2, :cond_1

    .line 495
    invoke-interface {v2}, Lorg/springframework/http/client/ClientHttpResponse;->close()V

    goto :goto_1
.end method

.method public exchange(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/http/HttpEntity;Ljava/lang/Class;Ljava/util/Map;)Lorg/springframework/http/ResponseEntity;
    .locals 6
    .parameter "url"
    .parameter "method"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/http/HttpEntity",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 420
    .local p3, requestEntity:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<*>;"
    .local p4, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p5, uriVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v3, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p3, p4, v0}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 421
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    new-instance v4, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;

    invoke-direct {v4, p0, p4}, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V

    .local v4, responseExtractor:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 422
    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/ResponseEntity;

    return-object v0
.end method

.method public varargs exchange(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/http/HttpEntity;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/springframework/http/ResponseEntity;
    .locals 6
    .parameter "url"
    .parameter "method"
    .parameter
    .parameter
    .parameter "uriVariables"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/http/HttpEntity",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 413
    .local p3, requestEntity:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<*>;"
    .local p4, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v3, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p3, p4, v0}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 414
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    new-instance v4, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;

    invoke-direct {v4, p0, p4}, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V

    .local v4, responseExtractor:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 415
    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/ResponseEntity;

    return-object v0
.end method

.method public exchange(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/http/HttpEntity;Ljava/lang/Class;)Lorg/springframework/http/ResponseEntity;
    .locals 3
    .parameter "url"
    .parameter "method"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/http/HttpEntity",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 427
    .local p3, requestEntity:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<*>;"
    .local p4, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p3, p4, v2}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 428
    .local v0, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    new-instance v1, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;

    invoke-direct {v1, p0, p4}, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V

    .line 429
    .local v1, responseExtractor:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/springframework/http/ResponseEntity;

    return-object v2
.end method

.method public execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3
    .parameter "url"
    .parameter "method"
    .parameter "requestCallback"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/web/client/RequestCallback;",
            "Lorg/springframework/web/client/ResponseExtractor",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 445
    .local p4, responseExtractor:Lorg/springframework/web/client/ResponseExtractor;,"Lorg/springframework/web/client/ResponseExtractor<TT;>;"
    .local p5, urlVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v1, Lorg/springframework/web/client/RestTemplate$HttpUrlTemplate;

    invoke-direct {v1, p1}, Lorg/springframework/web/client/RestTemplate$HttpUrlTemplate;-><init>(Ljava/lang/String;)V

    .line 446
    .local v1, uriTemplate:Lorg/springframework/web/util/UriTemplate;
    invoke-virtual {v1, p5}, Lorg/springframework/web/util/UriTemplate;->expand(Ljava/util/Map;)Ljava/net/URI;

    move-result-object v0

    .line 447
    .local v0, expanded:Ljava/net/URI;
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/springframework/web/client/RestTemplate;->doExecute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public varargs execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "url"
    .parameter "method"
    .parameter "requestCallback"
    .parameter
    .parameter "urlVariables"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/web/client/RequestCallback;",
            "Lorg/springframework/web/client/ResponseExtractor",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 437
    .local p4, responseExtractor:Lorg/springframework/web/client/ResponseExtractor;,"Lorg/springframework/web/client/ResponseExtractor<TT;>;"
    new-instance v1, Lorg/springframework/web/client/RestTemplate$HttpUrlTemplate;

    invoke-direct {v1, p1}, Lorg/springframework/web/client/RestTemplate$HttpUrlTemplate;-><init>(Ljava/lang/String;)V

    .line 438
    .local v1, uriTemplate:Lorg/springframework/web/util/UriTemplate;
    invoke-virtual {v1, p5}, Lorg/springframework/web/util/UriTemplate;->expand([Ljava/lang/Object;)Ljava/net/URI;

    move-result-object v0

    .line 439
    .local v0, expanded:Ljava/net/URI;
    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/springframework/web/client/RestTemplate;->doExecute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;
    .locals 1
    .parameter "url"
    .parameter "method"
    .parameter "requestCallback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Lorg/springframework/http/HttpMethod;",
            "Lorg/springframework/web/client/RequestCallback;",
            "Lorg/springframework/web/client/ResponseExtractor",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 453
    .local p4, responseExtractor:Lorg/springframework/web/client/ResponseExtractor;,"Lorg/springframework/web/client/ResponseExtractor<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/springframework/web/client/RestTemplate;->doExecute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Lorg/springframework/web/client/ResponseErrorHandler;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/springframework/web/client/RestTemplate;->errorHandler:Lorg/springframework/web/client/ResponseErrorHandler;

    return-object v0
.end method

.method public getForEntity(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lorg/springframework/http/ResponseEntity;
    .locals 6
    .parameter "url"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 264
    .local p2, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, urlVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v3, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p2, v0}, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 265
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;
    new-instance v4, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;

    invoke-direct {v4, p0, p2}, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V

    .line 267
    .local v4, responseExtractor:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->GET:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/ResponseEntity;

    return-object v0
.end method

.method public varargs getForEntity(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/springframework/http/ResponseEntity;
    .locals 6
    .parameter "url"
    .parameter
    .parameter "urlVariables"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 256
    .local p2, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v3, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p2, v0}, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 257
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;
    new-instance v4, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;

    invoke-direct {v4, p0, p2}, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V

    .line 259
    .local v4, responseExtractor:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->GET:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/ResponseEntity;

    return-object v0
.end method

.method public getForEntity(Ljava/net/URI;Ljava/lang/Class;)Lorg/springframework/http/ResponseEntity;
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 271
    .local p2, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 272
    .local v0, requestCallback:Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;
    new-instance v1, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;

    invoke-direct {v1, p0, p2}, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V

    .line 274
    .local v1, responseExtractor:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->GET:Lorg/springframework/http/HttpMethod;

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/springframework/http/ResponseEntity;

    return-object v2
.end method

.method public getForObject(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 6
    .parameter "url"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 241
    .local p2, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, urlVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v3, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p2, v0}, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 242
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;
    new-instance v4, Lorg/springframework/web/client/HttpMessageConverterExtractor;

    invoke-virtual {p0}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, p2, v0}, Lorg/springframework/web/client/HttpMessageConverterExtractor;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 244
    .local v4, responseExtractor:Lorg/springframework/web/client/HttpMessageConverterExtractor;,"Lorg/springframework/web/client/HttpMessageConverterExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->GET:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs getForObject(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "url"
    .parameter
    .parameter "urlVariables"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 234
    .local p2, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v3, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p2, v0}, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 235
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;
    new-instance v4, Lorg/springframework/web/client/HttpMessageConverterExtractor;

    invoke-virtual {p0}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, p2, v0}, Lorg/springframework/web/client/HttpMessageConverterExtractor;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 237
    .local v4, responseExtractor:Lorg/springframework/web/client/HttpMessageConverterExtractor;,"Lorg/springframework/web/client/HttpMessageConverterExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->GET:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getForObject(Ljava/net/URI;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 248
    .local p2, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 249
    .local v0, requestCallback:Lorg/springframework/web/client/RestTemplate$AcceptHeaderRequestCallback;
    new-instance v1, Lorg/springframework/web/client/HttpMessageConverterExtractor;

    invoke-virtual {p0}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lorg/springframework/web/client/HttpMessageConverterExtractor;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 251
    .local v1, responseExtractor:Lorg/springframework/web/client/HttpMessageConverterExtractor;,"Lorg/springframework/web/client/HttpMessageConverterExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->GET:Lorg/springframework/http/HttpMethod;

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public getMessageConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/converter/HttpMessageConverter",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/springframework/web/client/RestTemplate;->messageConverters:Ljava/util/List;

    return-object v0
.end method

.method public headForHeaders(Ljava/lang/String;Ljava/util/Map;)Lorg/springframework/http/HttpHeaders;
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/springframework/http/HttpHeaders;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 284
    .local p2, urlVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->HEAD:Lorg/springframework/http/HttpMethod;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/springframework/web/client/RestTemplate;->headersExtractor:Lorg/springframework/web/client/ResponseExtractor;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/HttpHeaders;

    return-object v0
.end method

.method public varargs headForHeaders(Ljava/lang/String;[Ljava/lang/Object;)Lorg/springframework/http/HttpHeaders;
    .locals 6
    .parameter "url"
    .parameter "urlVariables"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 280
    sget-object v2, Lorg/springframework/http/HttpMethod;->HEAD:Lorg/springframework/http/HttpMethod;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/springframework/web/client/RestTemplate;->headersExtractor:Lorg/springframework/web/client/ResponseExtractor;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/HttpHeaders;

    return-object v0
.end method

.method public headForHeaders(Ljava/net/URI;)Lorg/springframework/http/HttpHeaders;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 288
    sget-object v0, Lorg/springframework/http/HttpMethod;->HEAD:Lorg/springframework/http/HttpMethod;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/springframework/web/client/RestTemplate;->headersExtractor:Lorg/springframework/web/client/ResponseExtractor;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/HttpHeaders;

    return-object v0
.end method

.method public optionsForAllow(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Set;
    .locals 7
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/util/Set",
            "<",
            "Lorg/springframework/http/HttpMethod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 400
    .local p2, urlVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->OPTIONS:Lorg/springframework/http/HttpMethod;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/springframework/web/client/RestTemplate;->headersExtractor:Lorg/springframework/web/client/ResponseExtractor;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/springframework/http/HttpHeaders;

    .line 401
    .local v6, headers:Lorg/springframework/http/HttpHeaders;
    invoke-virtual {v6}, Lorg/springframework/http/HttpHeaders;->getAllow()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public varargs optionsForAllow(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Set;
    .locals 7
    .parameter "url"
    .parameter "urlVariables"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/springframework/http/HttpMethod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 395
    sget-object v2, Lorg/springframework/http/HttpMethod;->OPTIONS:Lorg/springframework/http/HttpMethod;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/springframework/web/client/RestTemplate;->headersExtractor:Lorg/springframework/web/client/ResponseExtractor;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/springframework/http/HttpHeaders;

    .line 396
    .local v6, headers:Lorg/springframework/http/HttpHeaders;
    invoke-virtual {v6}, Lorg/springframework/http/HttpHeaders;->getAllow()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public optionsForAllow(Ljava/net/URI;)Ljava/util/Set;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/springframework/http/HttpMethod;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 405
    sget-object v1, Lorg/springframework/http/HttpMethod;->OPTIONS:Lorg/springframework/http/HttpMethod;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/springframework/web/client/RestTemplate;->headersExtractor:Lorg/springframework/web/client/ResponseExtractor;

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/HttpHeaders;

    .line 406
    .local v0, headers:Lorg/springframework/http/HttpHeaders;
    invoke-virtual {v0}, Lorg/springframework/http/HttpHeaders;->getAllow()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public postForEntity(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;)Lorg/springframework/http/ResponseEntity;
    .locals 6
    .parameter "url"
    .parameter "request"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 348
    .local p3, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, uriVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v3, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p2, p3, v0}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 349
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    new-instance v4, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;

    invoke-direct {v4, p0, p3}, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V

    .line 351
    .local v4, responseExtractor:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/ResponseEntity;

    return-object v0
.end method

.method public varargs postForEntity(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/springframework/http/ResponseEntity;
    .locals 6
    .parameter "url"
    .parameter "request"
    .parameter
    .parameter "uriVariables"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 337
    .local p3, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v3, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p2, p3, v0}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 338
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    new-instance v4, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;

    invoke-direct {v4, p0, p3}, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V

    .line 340
    .local v4, responseExtractor:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/ResponseEntity;

    return-object v0
.end method

.method public postForEntity(Ljava/net/URI;Ljava/lang/Object;Ljava/lang/Class;)Lorg/springframework/http/ResponseEntity;
    .locals 3
    .parameter "url"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 355
    .local p3, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, p3, v2}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 356
    .local v0, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    new-instance v1, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;

    invoke-direct {v1, p0, p3}, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V

    .line 358
    .local v1, responseExtractor:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/springframework/http/ResponseEntity;

    return-object v2
.end method

.method public postForLocation(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/net/URI;
    .locals 7
    .parameter "url"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/net/URI;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 301
    .local p3, urlVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v3, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p2, v0}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 302
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    sget-object v2, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    iget-object v4, p0, Lorg/springframework/web/client/RestTemplate;->headersExtractor:Lorg/springframework/web/client/ResponseExtractor;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/springframework/http/HttpHeaders;

    .line 303
    .local v6, headers:Lorg/springframework/http/HttpHeaders;
    invoke-virtual {v6}, Lorg/springframework/http/HttpHeaders;->getLocation()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public varargs postForLocation(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/net/URI;
    .locals 7
    .parameter "url"
    .parameter "request"
    .parameter "urlVariables"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v3, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p2, v0}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 295
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    sget-object v2, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    iget-object v4, p0, Lorg/springframework/web/client/RestTemplate;->headersExtractor:Lorg/springframework/web/client/ResponseExtractor;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/springframework/http/HttpHeaders;

    .line 296
    .local v6, headers:Lorg/springframework/http/HttpHeaders;
    invoke-virtual {v6}, Lorg/springframework/http/HttpHeaders;->getLocation()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public postForLocation(Ljava/net/URI;Ljava/lang/Object;)Ljava/net/URI;
    .locals 4
    .parameter "url"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v1, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 308
    .local v1, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    sget-object v2, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    iget-object v3, p0, Lorg/springframework/web/client/RestTemplate;->headersExtractor:Lorg/springframework/web/client/ResponseExtractor;

    invoke-virtual {p0, p1, v2, v1, v3}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/HttpHeaders;

    .line 309
    .local v0, headers:Lorg/springframework/http/HttpHeaders;
    invoke-virtual {v0}, Lorg/springframework/http/HttpHeaders;->getLocation()Ljava/net/URI;

    move-result-object v2

    return-object v2
.end method

.method public postForObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .locals 6
    .parameter "url"
    .parameter "request"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 322
    .local p3, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, uriVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v3, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p2, p3, v0}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 323
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    new-instance v4, Lorg/springframework/web/client/HttpMessageConverterExtractor;

    invoke-virtual {p0}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, p3, v0}, Lorg/springframework/web/client/HttpMessageConverterExtractor;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 325
    .local v4, responseExtractor:Lorg/springframework/web/client/HttpMessageConverterExtractor;,"Lorg/springframework/web/client/HttpMessageConverterExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs postForObject(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "url"
    .parameter "request"
    .parameter
    .parameter "uriVariables"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 314
    .local p3, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v3, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p2, p3, v0}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 315
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    new-instance v4, Lorg/springframework/web/client/HttpMessageConverterExtractor;

    invoke-virtual {p0}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, p3, v0}, Lorg/springframework/web/client/HttpMessageConverterExtractor;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 317
    .local v4, responseExtractor:Lorg/springframework/web/client/HttpMessageConverterExtractor;,"Lorg/springframework/web/client/HttpMessageConverterExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public postForObject(Ljava/net/URI;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "url"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .line 329
    .local p3, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, p3, v2}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Ljava/lang/Class;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 330
    .local v0, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    new-instance v1, Lorg/springframework/web/client/HttpMessageConverterExtractor;

    invoke-virtual {p0}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Lorg/springframework/web/client/HttpMessageConverterExtractor;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    .line 332
    .local v1, responseExtractor:Lorg/springframework/web/client/HttpMessageConverterExtractor;,"Lorg/springframework/web/client/HttpMessageConverterExtractor<TT;>;"
    sget-object v2, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6
    .parameter "url"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    .local p3, urlVariables:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v4, 0x0

    .line 369
    new-instance v3, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    invoke-direct {v3, p0, p2, v4}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 370
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    sget-object v2, Lorg/springframework/http/HttpMethod;->PUT:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;Ljava/util/Map;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method public varargs put(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .parameter "url"
    .parameter "request"
    .parameter "urlVariables"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 364
    new-instance v3, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    invoke-direct {v3, p0, p2, v4}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 365
    .local v3, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    sget-object v2, Lorg/springframework/http/HttpMethod;->PUT:Lorg/springframework/http/HttpMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    return-void
.end method

.method public put(Ljava/net/URI;Ljava/lang/Object;)V
    .locals 3
    .parameter "url"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/springframework/web/client/RestClientException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 374
    new-instance v0, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;

    invoke-direct {v0, p0, p2, v2}, Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;-><init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Object;Lorg/springframework/web/client/RestTemplate$1;)V

    .line 375
    .local v0, requestCallback:Lorg/springframework/web/client/RestTemplate$HttpEntityRequestCallback;
    sget-object v1, Lorg/springframework/http/HttpMethod;->PUT:Lorg/springframework/http/HttpMethod;

    invoke-virtual {p0, p1, v1, v0, v2}, Lorg/springframework/web/client/RestTemplate;->execute(Ljava/net/URI;Lorg/springframework/http/HttpMethod;Lorg/springframework/web/client/RequestCallback;Lorg/springframework/web/client/ResponseExtractor;)Ljava/lang/Object;

    .line 376
    return-void
.end method

.method public setErrorHandler(Lorg/springframework/web/client/ResponseErrorHandler;)V
    .locals 1
    .parameter "errorHandler"

    .prologue
    .line 221
    const-string v0, "\'errorHandler\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lorg/springframework/web/client/RestTemplate;->errorHandler:Lorg/springframework/web/client/ResponseErrorHandler;

    .line 223
    return-void
.end method

.method public setMessageConverters(Ljava/util/List;)V
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
    .line 210
    .local p1, messageConverters:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    const-string v0, "\'messageConverters\' must not be empty"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 211
    iput-object p1, p0, Lorg/springframework/web/client/RestTemplate;->messageConverters:Ljava/util/List;

    .line 212
    return-void
.end method

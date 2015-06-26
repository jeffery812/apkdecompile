.class Lorg/springframework/http/client/InterceptingClientHttpRequest$RequestExecution;
.super Ljava/lang/Object;
.source "InterceptingClientHttpRequest.java"

# interfaces
.implements Lorg/springframework/http/client/ClientHttpRequestExecution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/http/client/InterceptingClientHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestExecution"
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/springframework/http/client/ClientHttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/springframework/http/client/InterceptingClientHttpRequest;


# direct methods
.method private constructor <init>(Lorg/springframework/http/client/InterceptingClientHttpRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lorg/springframework/http/client/InterceptingClientHttpRequest$RequestExecution;->this$0:Lorg/springframework/http/client/InterceptingClientHttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    #getter for: Lorg/springframework/http/client/InterceptingClientHttpRequest;->interceptors:Ljava/util/List;
    invoke-static {p1}, Lorg/springframework/http/client/InterceptingClientHttpRequest;->access$100(Lorg/springframework/http/client/InterceptingClientHttpRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/http/client/InterceptingClientHttpRequest$RequestExecution;->iterator:Ljava/util/Iterator;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lorg/springframework/http/client/InterceptingClientHttpRequest;Lorg/springframework/http/client/InterceptingClientHttpRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/springframework/http/client/InterceptingClientHttpRequest$RequestExecution;-><init>(Lorg/springframework/http/client/InterceptingClientHttpRequest;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/springframework/http/HttpRequest;[B)Lorg/springframework/http/client/ClientHttpResponse;
    .locals 5
    .parameter "request"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v2, p0, Lorg/springframework/http/client/InterceptingClientHttpRequest$RequestExecution;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lorg/springframework/http/client/InterceptingClientHttpRequest$RequestExecution;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/springframework/http/client/ClientHttpRequestInterceptor;

    .line 81
    .local v1, nextInterceptor:Lorg/springframework/http/client/ClientHttpRequestInterceptor;
    invoke-interface {v1, p1, p2, p0}, Lorg/springframework/http/client/ClientHttpRequestInterceptor;->intercept(Lorg/springframework/http/HttpRequest;[BLorg/springframework/http/client/ClientHttpRequestExecution;)Lorg/springframework/http/client/ClientHttpResponse;

    move-result-object v2

    .line 91
    .end local v1           #nextInterceptor:Lorg/springframework/http/client/ClientHttpRequestInterceptor;
    :goto_0
    return-object v2

    .line 84
    :cond_0
    iget-object v2, p0, Lorg/springframework/http/client/InterceptingClientHttpRequest$RequestExecution;->this$0:Lorg/springframework/http/client/InterceptingClientHttpRequest;

    #getter for: Lorg/springframework/http/client/InterceptingClientHttpRequest;->requestFactory:Lorg/springframework/http/client/ClientHttpRequestFactory;
    invoke-static {v2}, Lorg/springframework/http/client/InterceptingClientHttpRequest;->access$200(Lorg/springframework/http/client/InterceptingClientHttpRequest;)Lorg/springframework/http/client/ClientHttpRequestFactory;

    move-result-object v2

    invoke-interface {p1}, Lorg/springframework/http/HttpRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-interface {p1}, Lorg/springframework/http/HttpRequest;->getMethod()Lorg/springframework/http/HttpMethod;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/springframework/http/client/ClientHttpRequestFactory;->createRequest(Ljava/net/URI;Lorg/springframework/http/HttpMethod;)Lorg/springframework/http/client/ClientHttpRequest;

    move-result-object v0

    .line 86
    .local v0, delegate:Lorg/springframework/http/client/ClientHttpRequest;
    invoke-interface {v0}, Lorg/springframework/http/client/ClientHttpRequest;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v2

    invoke-interface {p1}, Lorg/springframework/http/HttpRequest;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/springframework/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 88
    array-length v2, p2

    if-lez v2, :cond_1

    .line 89
    invoke-interface {v0}, Lorg/springframework/http/client/ClientHttpRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {p2, v2}, Lorg/springframework/util/FileCopyUtils;->copy([BLjava/io/OutputStream;)V

    .line 91
    :cond_1
    invoke-interface {v0}, Lorg/springframework/http/client/ClientHttpRequest;->execute()Lorg/springframework/http/client/ClientHttpResponse;

    move-result-object v2

    goto :goto_0
.end method

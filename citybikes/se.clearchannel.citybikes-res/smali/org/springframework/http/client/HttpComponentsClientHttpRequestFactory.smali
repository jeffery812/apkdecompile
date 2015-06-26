.class public Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;
.super Ljava/lang/Object;
.source "HttpComponentsClientHttpRequestFactory.java"

# interfaces
.implements Lorg/springframework/http/client/ClientHttpRequestFactory;
.implements Lorg/springframework/beans/factory/DisposableBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONNECTIONS_PER_ROUTE:I = 0x5

.field private static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x64

.field private static final DEFAULT_READ_TIMEOUT_MILLISECONDS:I = 0xea60


# instance fields
.field private httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 76
    .local v2, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 77
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 79
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 80
    .local v1, params:Lorg/apache/http/params/HttpParams;
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 81
    .local v0, connectionManager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    const/16 v3, 0x64

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 82
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 84
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 85
    const v3, 0xea60

    invoke-virtual {p0, v3}, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->setReadTimeout(I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .parameter "httpClient"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "HttpClient must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 95
    return-void
.end method


# virtual methods
.method protected createHttpContext(Lorg/springframework/http/HttpMethod;Ljava/net/URI;)Lorg/apache/http/protocol/HttpContext;
    .locals 1
    .parameter "httpMethod"
    .parameter "uri"

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createHttpRequest(Lorg/springframework/http/HttpMethod;Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .parameter "httpMethod"
    .parameter "uri"

    .prologue
    .line 144
    sget-object v0, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory$1;->$SwitchMap$org$springframework$http$HttpMethod:[I

    invoke-virtual {p1}, Lorg/springframework/http/HttpMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HTTP method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 158
    :goto_0
    return-object v0

    .line 148
    :pswitch_1
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    goto :goto_0

    .line 150
    :pswitch_2
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    goto :goto_0

    .line 152
    :pswitch_3
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    goto :goto_0

    .line 154
    :pswitch_4
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    goto :goto_0

    .line 156
    :pswitch_5
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    goto :goto_0

    .line 158
    :pswitch_6
    new-instance v0, Lorg/apache/http/client/methods/HttpTrace;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/net/URI;)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public createRequest(Ljava/net/URI;Lorg/springframework/http/HttpMethod;)Lorg/springframework/http/client/ClientHttpRequest;
    .locals 4
    .parameter "uri"
    .parameter "httpMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0, p2, p1}, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->createHttpRequest(Lorg/springframework/http/HttpMethod;Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 132
    .local v0, httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {p0, v0}, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->postProcessHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 133
    new-instance v1, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;

    invoke-virtual {p0}, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-virtual {p0, p2, p1}, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->createHttpContext(Lorg/springframework/http/HttpMethod;Ljava/net/URI;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/springframework/http/client/HttpComponentsClientHttpRequest;-><init>(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)V

    return-object v1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 194
    return-void
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method protected postProcessHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 2
    .parameter "httpRequest"

    .prologue
    .line 173
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 174
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 175
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 117
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Timeout must be a non-negative value"

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.connection.timeout"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 119
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter "httpClient"

    .prologue
    .line 102
    iput-object p1, p0, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 103
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 126
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Timeout must be a non-negative value"

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 128
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

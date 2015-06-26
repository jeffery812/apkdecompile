.class public Lorg/springframework/http/client/CommonsClientHttpRequestFactory;
.super Ljava/lang/Object;
.source "CommonsClientHttpRequestFactory.java"

# interfaces
.implements Lorg/springframework/http/client/ClientHttpRequestFactory;
.implements Lorg/springframework/beans/factory/DisposableBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/springframework/http/client/CommonsClientHttpRequestFactory$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_READ_TIMEOUT_MILLISECONDS:I = 0xea60


# instance fields
.field private httpClient:Lorg/apache/commons/httpclient/HttpClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lorg/apache/commons/httpclient/HttpClient;

    new-instance v1, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    invoke-direct {v1}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/HttpClient;-><init>(Lorg/apache/commons/httpclient/HttpConnectionManager;)V

    iput-object v0, p0, Lorg/springframework/http/client/CommonsClientHttpRequestFactory;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    .line 64
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lorg/springframework/http/client/CommonsClientHttpRequestFactory;->setReadTimeout(I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpClient;)V
    .locals 1
    .parameter "httpClient"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "httpClient must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iput-object p1, p0, Lorg/springframework/http/client/CommonsClientHttpRequestFactory;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    .line 74
    return-void
.end method


# virtual methods
.method protected createCommonsHttpMethod(Lorg/springframework/http/HttpMethod;Ljava/lang/String;)Lorg/apache/commons/httpclient/HttpMethodBase;
    .locals 3
    .parameter "httpMethod"
    .parameter "uri"

    .prologue
    .line 125
    sget-object v0, Lorg/springframework/http/client/CommonsClientHttpRequestFactory$1;->$SwitchMap$org$springframework$http$HttpMethod:[I

    invoke-virtual {p1}, Lorg/springframework/http/HttpMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
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

    .line 127
    :pswitch_0
    new-instance v0, Lorg/apache/commons/httpclient/methods/GetMethod;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/GetMethod;-><init>(Ljava/lang/String;)V

    .line 139
    :goto_0
    return-object v0

    .line 129
    :pswitch_1
    new-instance v0, Lorg/apache/commons/httpclient/methods/DeleteMethod;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/DeleteMethod;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_2
    new-instance v0, Lorg/apache/commons/httpclient/methods/HeadMethod;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/HeadMethod;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :pswitch_3
    new-instance v0, Lorg/apache/commons/httpclient/methods/OptionsMethod;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/OptionsMethod;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_4
    new-instance v0, Lorg/apache/commons/httpclient/methods/PostMethod;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/PostMethod;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_5
    new-instance v0, Lorg/apache/commons/httpclient/methods/PutMethod;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/PutMethod;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_6
    new-instance v0, Lorg/apache/commons/httpclient/methods/TraceMethod;

    invoke-direct {v0, p2}, Lorg/apache/commons/httpclient/methods/TraceMethod;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 125
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
    .locals 3
    .parameter "uri"
    .parameter "httpMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/springframework/http/client/CommonsClientHttpRequestFactory;->createCommonsHttpMethod(Lorg/springframework/http/HttpMethod;Ljava/lang/String;)Lorg/apache/commons/httpclient/HttpMethodBase;

    move-result-object v0

    .line 114
    .local v0, commonsHttpMethod:Lorg/apache/commons/httpclient/HttpMethodBase;
    invoke-virtual {p0, v0}, Lorg/springframework/http/client/CommonsClientHttpRequestFactory;->postProcessCommonsHttpMethod(Lorg/apache/commons/httpclient/HttpMethodBase;)V

    .line 115
    new-instance v1, Lorg/springframework/http/client/CommonsClientHttpRequest;

    invoke-virtual {p0}, Lorg/springframework/http/client/CommonsClientHttpRequestFactory;->getHttpClient()Lorg/apache/commons/httpclient/HttpClient;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/springframework/http/client/CommonsClientHttpRequest;-><init>(Lorg/apache/commons/httpclient/HttpClient;Lorg/apache/commons/httpclient/HttpMethodBase;)V

    return-object v1
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/springframework/http/client/CommonsClientHttpRequestFactory;->getHttpClient()Lorg/apache/commons/httpclient/HttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v0

    .line 160
    .local v0, connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;
    instance-of v1, v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    if-eqz v1, :cond_0

    .line 161
    check-cast v0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;

    .end local v0           #connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;->shutdown()V

    .line 163
    :cond_0
    return-void
.end method

.method public getHttpClient()Lorg/apache/commons/httpclient/HttpClient;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/springframework/http/client/CommonsClientHttpRequestFactory;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    return-object v0
.end method

.method protected postProcessCommonsHttpMethod(Lorg/apache/commons/httpclient/HttpMethodBase;)V
    .locals 0
    .parameter "httpMethod"

    .prologue
    .line 153
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 97
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Timeout must be a non-negative value"

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/springframework/http/client/CommonsClientHttpRequestFactory;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setConnectionTimeout(I)V

    .line 99
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHttpClient(Lorg/apache/commons/httpclient/HttpClient;)V
    .locals 0
    .parameter "httpClient"

    .prologue
    .line 81
    iput-object p1, p0, Lorg/springframework/http/client/CommonsClientHttpRequestFactory;->httpClient:Lorg/apache/commons/httpclient/HttpClient;

    .line 82
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 107
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Timeout must be a non-negative value"

    invoke-static {v0, v1}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lorg/springframework/http/client/CommonsClientHttpRequestFactory;->getHttpClient()Lorg/apache/commons/httpclient/HttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpClient;->getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionManagerParams;->setSoTimeout(I)V

    .line 109
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

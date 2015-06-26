.class public Lorg/springframework/http/client/SimpleClientHttpRequestFactory;
.super Ljava/lang/Object;
.source "SimpleClientHttpRequestFactory.java"

# interfaces
.implements Lorg/springframework/http/client/ClientHttpRequestFactory;


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I


# instance fields
.field private bufferRequestBody:Z

.field private chunkSize:I

.field private connectTimeout:I

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->bufferRequestBody:Z

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->chunkSize:I

    .line 48
    iput v1, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->connectTimeout:I

    .line 50
    iput v1, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->readTimeout:I

    return-void
.end method


# virtual methods
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
    .line 115
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    iget-object v2, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->proxy:Ljava/net/Proxy;

    invoke-virtual {p0, v1, v2}, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 116
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {p2}, Lorg/springframework/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->prepareConnection(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 117
    iget-boolean v1, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->bufferRequestBody:Z

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;

    invoke-direct {v1, v0}, Lorg/springframework/http/client/SimpleBufferingClientHttpRequest;-><init>(Ljava/net/HttpURLConnection;)V

    .line 120
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/springframework/http/client/SimpleStreamingClientHttpRequest;

    iget v2, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->chunkSize:I

    invoke-direct {v1, v0, v2}, Lorg/springframework/http/client/SimpleStreamingClientHttpRequest;-><init>(Ljava/net/HttpURLConnection;I)V

    goto :goto_0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 2
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    .line 137
    .local v0, urlConnection:Ljava/net/URLConnection;
    :goto_0
    const-class v1, Ljava/net/HttpURLConnection;

    invoke-static {v1, v0}, Lorg/springframework/util/Assert;->isInstanceOf(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 138
    check-cast v0, Ljava/net/HttpURLConnection;

    .end local v0           #urlConnection:Ljava/net/URLConnection;
    return-object v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_0
.end method

.method protected prepareConnection(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .locals 3
    .parameter "connection"
    .parameter "httpMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    iget v0, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->connectTimeout:I

    if-ltz v0, :cond_0

    .line 152
    iget v0, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->connectTimeout:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 154
    :cond_0
    iget v0, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->readTimeout:I

    if-ltz v0, :cond_1

    .line 155
    iget v0, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->readTimeout:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 157
    :cond_1
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 158
    const-string v0, "GET"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 163
    :goto_0
    const-string v0, "PUT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "POST"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 168
    :goto_1
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 169
    return-void

    .line 161
    :cond_3
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    goto :goto_0

    .line 166
    :cond_4
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_1
.end method

.method public setBufferRequestBody(Z)V
    .locals 0
    .parameter "bufferRequestBody"

    .prologue
    .line 73
    iput-boolean p1, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->bufferRequestBody:Z

    .line 74
    return-void
.end method

.method public setChunkSize(I)V
    .locals 0
    .parameter "chunkSize"

    .prologue
    .line 86
    iput p1, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->chunkSize:I

    .line 87
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .parameter "connectTimeout"

    .prologue
    .line 98
    iput p1, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->connectTimeout:I

    .line 99
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 56
    iput-object p1, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->proxy:Ljava/net/Proxy;

    .line 57
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .parameter "readTimeout"

    .prologue
    .line 110
    iput p1, p0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;->readTimeout:I

    .line 111
    return-void
.end method

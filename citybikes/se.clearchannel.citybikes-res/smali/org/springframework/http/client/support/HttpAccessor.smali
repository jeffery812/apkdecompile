.class public abstract Lorg/springframework/http/client/support/HttpAccessor;
.super Ljava/lang/Object;
.source "HttpAccessor.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private requestFactory:Lorg/springframework/http/client/ClientHttpRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/springframework/http/client/support/HttpAccessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/springframework/http/client/support/HttpAccessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 53
    new-instance v0, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;

    invoke-direct {v0}, Lorg/springframework/http/client/SimpleClientHttpRequestFactory;-><init>()V

    iput-object v0, p0, Lorg/springframework/http/client/support/HttpAccessor;->requestFactory:Lorg/springframework/http/client/ClientHttpRequestFactory;

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;

    invoke-direct {v0}, Lorg/springframework/http/client/HttpComponentsClientHttpRequestFactory;-><init>()V

    iput-object v0, p0, Lorg/springframework/http/client/support/HttpAccessor;->requestFactory:Lorg/springframework/http/client/ClientHttpRequestFactory;

    goto :goto_0
.end method


# virtual methods
.method protected createRequest(Ljava/net/URI;Lorg/springframework/http/HttpMethod;)Lorg/springframework/http/client/ClientHttpRequest;
    .locals 4
    .parameter "url"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/springframework/http/client/support/HttpAccessor;->getRequestFactory()Lorg/springframework/http/client/ClientHttpRequestFactory;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/springframework/http/client/ClientHttpRequestFactory;->createRequest(Ljava/net/URI;Lorg/springframework/http/HttpMethod;)Lorg/springframework/http/client/ClientHttpRequest;

    move-result-object v0

    .line 85
    .local v0, request:Lorg/springframework/http/client/ClientHttpRequest;
    sget-object v1, Lorg/springframework/http/client/support/HttpAccessor;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lorg/springframework/http/client/support/HttpAccessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/springframework/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-object v0
.end method

.method public getRequestFactory()Lorg/springframework/http/client/ClientHttpRequestFactory;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/springframework/http/client/support/HttpAccessor;->requestFactory:Lorg/springframework/http/client/ClientHttpRequestFactory;

    return-object v0
.end method

.method public setRequestFactory(Lorg/springframework/http/client/ClientHttpRequestFactory;)V
    .locals 1
    .parameter "requestFactory"

    .prologue
    .line 64
    const-string v0, "\'requestFactory\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lorg/springframework/http/client/support/HttpAccessor;->requestFactory:Lorg/springframework/http/client/ClientHttpRequestFactory;

    .line 66
    return-void
.end method

.class public abstract Lorg/springframework/http/client/support/InterceptingHttpAccessor;
.super Lorg/springframework/http/client/support/HttpAccessor;
.source "InterceptingHttpAccessor.java"


# instance fields
.field private interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/client/ClientHttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/springframework/http/client/support/HttpAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/client/ClientHttpRequestInterceptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/springframework/http/client/support/InterceptingHttpAccessor;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public getRequestFactory()Lorg/springframework/http/client/ClientHttpRequestFactory;
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lorg/springframework/http/client/support/HttpAccessor;->getRequestFactory()Lorg/springframework/http/client/ClientHttpRequestFactory;

    move-result-object v0

    .line 56
    .local v0, delegate:Lorg/springframework/http/client/ClientHttpRequestFactory;
    invoke-virtual {p0}, Lorg/springframework/http/client/support/InterceptingHttpAccessor;->getInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lorg/springframework/http/client/InterceptingClientHttpRequestFactory;

    invoke-virtual {p0}, Lorg/springframework/http/client/support/InterceptingHttpAccessor;->getInterceptors()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/springframework/http/client/InterceptingClientHttpRequestFactory;-><init>(Lorg/springframework/http/client/ClientHttpRequestFactory;Ljava/util/List;)V

    move-object v0, v1

    .line 60
    .end local v0           #delegate:Lorg/springframework/http/client/ClientHttpRequestFactory;
    :cond_0
    return-object v0
.end method

.method public setInterceptors(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/client/ClientHttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, interceptors:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/client/ClientHttpRequestInterceptor;>;"
    iput-object p1, p0, Lorg/springframework/http/client/support/InterceptingHttpAccessor;->interceptors:Ljava/util/List;

    .line 44
    return-void
.end method

.class public Lorg/springframework/web/client/support/RestGatewaySupport;
.super Ljava/lang/Object;
.source "RestGatewaySupport.java"


# instance fields
.field private restTemplate:Lorg/springframework/web/client/RestTemplate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lorg/springframework/web/client/RestTemplate;

    invoke-direct {v0}, Lorg/springframework/web/client/RestTemplate;-><init>()V

    iput-object v0, p0, Lorg/springframework/web/client/support/RestGatewaySupport;->restTemplate:Lorg/springframework/web/client/RestTemplate;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/springframework/http/client/ClientHttpRequestFactory;)V
    .locals 1
    .parameter "requestFactory"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "\'requestFactory\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lorg/springframework/web/client/RestTemplate;

    invoke-direct {v0, p1}, Lorg/springframework/web/client/RestTemplate;-><init>(Lorg/springframework/http/client/ClientHttpRequestFactory;)V

    iput-object v0, p0, Lorg/springframework/web/client/support/RestGatewaySupport;->restTemplate:Lorg/springframework/web/client/RestTemplate;

    .line 53
    return-void
.end method


# virtual methods
.method public getRestTemplate()Lorg/springframework/web/client/RestTemplate;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/springframework/web/client/support/RestGatewaySupport;->restTemplate:Lorg/springframework/web/client/RestTemplate;

    return-object v0
.end method

.method public setRestTemplate(Lorg/springframework/web/client/RestTemplate;)V
    .locals 1
    .parameter "restTemplate"

    .prologue
    .line 60
    const-string v0, "\'restTemplate\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lorg/springframework/web/client/support/RestGatewaySupport;->restTemplate:Lorg/springframework/web/client/RestTemplate;

    .line 62
    return-void
.end method

.class public Lse/clearchannel/citybikes/api/RestApiClient;
.super Ljava/lang/Object;
.source "RestApiClient.java"


# static fields
.field private static final GET_ALL_RACKS_URL:Ljava/lang/String; = "https://secure.citybikes.se/services/getracks"

.field private static final GET_RACK_DATA_URL:Ljava/lang/String; = "https://secure.citybikes.se/services/getrack?rackId={rackId}"

.field private static final REPORT_SERVICE_URL:Ljava/lang/String; = "https://secure.citybikes.se/services/requestservice"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHttpHeaders()Lorg/springframework/http/HttpHeaders;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Lorg/springframework/http/HttpHeaders;

    invoke-direct {v0}, Lorg/springframework/http/HttpHeaders;-><init>()V

    .line 98
    .local v0, requestHeaders:Lorg/springframework/http/HttpHeaders;
    invoke-static {}, Lse/clearchannel/citybikes/MainActivity;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/springframework/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lse/clearchannel/citybikes/api/security/Authentication;->getNewToken()Lse/clearchannel/citybikes/api/security/Authentication;

    move-result-object v1

    .line 101
    .local v1, token:Lse/clearchannel/citybikes/api/security/Authentication;
    const-string v2, "Auth-Hash"

    invoke-virtual {v1}, Lse/clearchannel/citybikes/api/security/Authentication;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "Auth-Operator"

    invoke-virtual {v1}, Lse/clearchannel/citybikes/api/security/Authentication;->getOperatorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "Auth-String"

    invoke-virtual {v1}, Lse/clearchannel/citybikes/api/security/Authentication;->getUniqueRequestString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/springframework/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method private getRequestEntity()Lorg/springframework/http/HttpEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/springframework/http/HttpEntity",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lse/clearchannel/citybikes/api/RestApiClient;->getHttpHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v1

    .line 109
    .local v1, requestHeaders:Lorg/springframework/http/HttpHeaders;
    sget-object v2, Lorg/springframework/http/MediaType;->APPLICATION_XML:Lorg/springframework/http/MediaType;

    invoke-virtual {v1, v2}, Lorg/springframework/http/HttpHeaders;->setContentType(Lorg/springframework/http/MediaType;)V

    .line 111
    new-instance v0, Lorg/springframework/http/HttpEntity;

    invoke-direct {v0, v1}, Lorg/springframework/http/HttpEntity;-><init>(Lorg/springframework/util/MultiValueMap;)V

    .line 112
    .local v0, requestEntity:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<*>;"
    return-object v0
.end method


# virtual methods
.method public getBikeRack(Ljava/lang/Long;)Lse/clearchannel/citybikes/api/domain/BikeRack;
    .locals 14
    .parameter "id"

    .prologue
    .line 52
    new-instance v0, Lorg/springframework/web/client/RestTemplate;

    invoke-direct {v0}, Lorg/springframework/web/client/RestTemplate;-><init>()V

    .line 53
    .local v0, restTemplate:Lorg/springframework/web/client/RestTemplate;
    new-instance v9, Lorg/springframework/http/converter/xml/SimpleXmlHttpMessageConverter;

    invoke-direct {v9}, Lorg/springframework/http/converter/xml/SimpleXmlHttpMessageConverter;-><init>()V

    .line 54
    .local v9, formConverter:Lorg/springframework/http/converter/xml/SimpleXmlHttpMessageConverter;
    invoke-virtual {v0}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v7

    .line 55
    .local v7, converters:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v0, v7}, Lorg/springframework/web/client/RestTemplate;->setMessageConverters(Ljava/util/List;)V

    .line 57
    invoke-direct {p0}, Lse/clearchannel/citybikes/api/RestApiClient;->getRequestEntity()Lorg/springframework/http/HttpEntity;

    move-result-object v3

    .line 58
    .local v3, requestEntity:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<*>;"
    const-string v6, ""

    .line 59
    .local v6, body:Ljava/lang/String;
    invoke-direct {p0}, Lse/clearchannel/citybikes/api/RestApiClient;->getHttpHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v10

    .line 62
    .local v10, headers:Lorg/springframework/http/HttpHeaders;
    :try_start_0
    const-string v1, "https://secure.citybikes.se/services/getrack?rackId={rackId}"

    sget-object v2, Lorg/springframework/http/HttpMethod;->GET:Lorg/springframework/http/HttpMethod;

    const-class v4, Lse/clearchannel/citybikes/api/domain/BikeRack;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v5, v13

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->exchange(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/http/HttpEntity;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/springframework/http/ResponseEntity;

    move-result-object v12

    .line 63
    .local v12, responseEntity:Lorg/springframework/http/ResponseEntity;,"Lorg/springframework/http/ResponseEntity<Lse/clearchannel/citybikes/api/domain/BikeRack;>;"
    invoke-virtual {v12}, Lorg/springframework/http/ResponseEntity;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-virtual {v12}, Lorg/springframework/http/ResponseEntity;->getBody()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lse/clearchannel/citybikes/api/domain/BikeRack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v11, rack:Lse/clearchannel/citybikes/api/domain/BikeRack;
    return-object v11

    .line 65
    .end local v11           #rack:Lse/clearchannel/citybikes/api/domain/BikeRack;
    .end local v12           #responseEntity:Lorg/springframework/http/ResponseEntity;,"Lorg/springframework/http/ResponseEntity<Lse/clearchannel/citybikes/api/domain/BikeRack;>;"
    :catch_0
    move-exception v8

    .line 66
    .local v8, e:Ljava/lang/Exception;
    new-instance v1, Lse/clearchannel/citybikes/api/ApiClientException;

    invoke-direct {v1, v8}, Lse/clearchannel/citybikes/api/ApiClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRackList()Lse/clearchannel/citybikes/api/domain/RackList;
    .locals 11

    .prologue
    .line 31
    new-instance v0, Lorg/springframework/web/client/RestTemplate;

    invoke-direct {v0}, Lorg/springframework/web/client/RestTemplate;-><init>()V

    .line 32
    .local v0, restTemplate:Lorg/springframework/web/client/RestTemplate;
    new-instance v9, Lorg/springframework/http/converter/xml/SimpleXmlHttpMessageConverter;

    invoke-direct {v9}, Lorg/springframework/http/converter/xml/SimpleXmlHttpMessageConverter;-><init>()V

    .line 34
    .local v9, formConverter:Lorg/springframework/http/converter/xml/SimpleXmlHttpMessageConverter;
    invoke-virtual {v0}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v6

    .line 35
    .local v6, converters:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v0, v6}, Lorg/springframework/web/client/RestTemplate;->setMessageConverters(Ljava/util/List;)V

    .line 37
    invoke-direct {p0}, Lse/clearchannel/citybikes/api/RestApiClient;->getRequestEntity()Lorg/springframework/http/HttpEntity;

    move-result-object v3

    .line 41
    .local v3, requestEntity:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<*>;"
    :try_start_0
    const-string v1, "https://secure.citybikes.se/services/getracks"

    sget-object v2, Lorg/springframework/http/HttpMethod;->GET:Lorg/springframework/http/HttpMethod;

    const-class v4, Lse/clearchannel/citybikes/api/domain/RackList;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->exchange(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/http/HttpEntity;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/springframework/http/ResponseEntity;

    move-result-object v8

    .line 42
    .local v8, exchange:Lorg/springframework/http/ResponseEntity;,"Lorg/springframework/http/ResponseEntity<Lse/clearchannel/citybikes/api/domain/RackList;>;"
    invoke-virtual {v8}, Lorg/springframework/http/ResponseEntity;->getBody()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lse/clearchannel/citybikes/api/domain/RackList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .local v10, rackList:Lse/clearchannel/citybikes/api/domain/RackList;
    return-object v10

    .line 43
    .end local v8           #exchange:Lorg/springframework/http/ResponseEntity;,"Lorg/springframework/http/ResponseEntity<Lse/clearchannel/citybikes/api/domain/RackList;>;"
    .end local v10           #rackList:Lse/clearchannel/citybikes/api/domain/RackList;
    :catch_0
    move-exception v7

    .line 44
    .local v7, e:Ljava/lang/Exception;
    new-instance v1, Lse/clearchannel/citybikes/api/ApiClientException;

    invoke-direct {v1, v7}, Lse/clearchannel/citybikes/api/ApiClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sendServiceReport(Lorg/springframework/util/MultiValueMap;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, formData:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/springframework/web/client/RestTemplate;

    invoke-direct {v0}, Lorg/springframework/web/client/RestTemplate;-><init>()V

    .line 74
    .local v0, restTemplate:Lorg/springframework/web/client/RestTemplate;
    new-instance v8, Lorg/springframework/http/converter/FormHttpMessageConverter;

    invoke-direct {v8}, Lorg/springframework/http/converter/FormHttpMessageConverter;-><init>()V

    .line 75
    .local v8, formConverter:Lorg/springframework/http/converter/FormHttpMessageConverter;
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/springframework/http/converter/FormHttpMessageConverter;->setCharset(Ljava/nio/charset/Charset;)V

    .line 76
    invoke-virtual {v0}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v6

    .line 77
    .local v6, converters:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/http/converter/HttpMessageConverter<*>;>;"
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lorg/springframework/http/converter/StringHttpMessageConverter;

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/springframework/http/converter/StringHttpMessageConverter;-><init>(Ljava/nio/charset/Charset;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v0, v6}, Lorg/springframework/web/client/RestTemplate;->setMessageConverters(Ljava/util/List;)V

    .line 83
    invoke-direct {p0}, Lse/clearchannel/citybikes/api/RestApiClient;->getHttpHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v9

    .line 85
    .local v9, requestHeaders:Lorg/springframework/http/HttpHeaders;
    new-instance v3, Lorg/springframework/http/HttpEntity;

    invoke-direct {v3, p1, v9}, Lorg/springframework/http/HttpEntity;-><init>(Ljava/lang/Object;Lorg/springframework/util/MultiValueMap;)V

    .line 88
    .local v3, requestEntity:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :try_start_0
    const-string v1, "https://secure.citybikes.se/services/requestservice"

    sget-object v2, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lorg/springframework/web/client/RestTemplate;->exchange(Ljava/lang/String;Lorg/springframework/http/HttpMethod;Lorg/springframework/http/HttpEntity;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/springframework/http/ResponseEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-void

    .line 90
    :catch_0
    move-exception v7

    .line 92
    .local v7, e:Ljava/lang/Exception;
    new-instance v1, Lse/clearchannel/citybikes/api/ApiClientException;

    invoke-direct {v1, v7}, Lse/clearchannel/citybikes/api/ApiClientException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

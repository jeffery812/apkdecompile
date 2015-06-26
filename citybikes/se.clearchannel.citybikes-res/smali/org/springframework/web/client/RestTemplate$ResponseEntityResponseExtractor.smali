.class Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;
.super Ljava/lang/Object;
.source "RestTemplate.java"

# interfaces
.implements Lorg/springframework/web/client/ResponseExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/client/RestTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseEntityResponseExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/springframework/web/client/ResponseExtractor",
        "<",
        "Lorg/springframework/http/ResponseEntity",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lorg/springframework/web/client/HttpMessageConverterExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/springframework/web/client/HttpMessageConverterExtractor",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/springframework/web/client/RestTemplate;


# direct methods
.method public constructor <init>(Lorg/springframework/web/client/RestTemplate;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, this:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    .local p2, responseType:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;->this$0:Lorg/springframework/web/client/RestTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    if-eqz p2, :cond_0

    const-class v0, Ljava/lang/Void;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    new-instance v0, Lorg/springframework/web/client/HttpMessageConverterExtractor;

    invoke-virtual {p1}, Lorg/springframework/web/client/RestTemplate;->getMessageConverters()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/springframework/web/client/HttpMessageConverterExtractor;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    iput-object v0, p0, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;->delegate:Lorg/springframework/web/client/HttpMessageConverterExtractor;

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;->delegate:Lorg/springframework/web/client/HttpMessageConverterExtractor;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic extractData(Lorg/springframework/http/client/ClientHttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 641
    .local p0, this:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    invoke-virtual {p0, p1}, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;->extractData(Lorg/springframework/http/client/ClientHttpResponse;)Lorg/springframework/http/ResponseEntity;

    move-result-object v0

    return-object v0
.end method

.method public extractData(Lorg/springframework/http/client/ClientHttpResponse;)Lorg/springframework/http/ResponseEntity;
    .locals 4
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/http/client/ClientHttpResponse;",
            ")",
            "Lorg/springframework/http/ResponseEntity",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    .local p0, this:Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;,"Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor<TT;>;"
    iget-object v1, p0, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;->delegate:Lorg/springframework/web/client/HttpMessageConverterExtractor;

    if-eqz v1, :cond_0

    .line 655
    iget-object v1, p0, Lorg/springframework/web/client/RestTemplate$ResponseEntityResponseExtractor;->delegate:Lorg/springframework/web/client/HttpMessageConverterExtractor;

    invoke-virtual {v1, p1}, Lorg/springframework/web/client/HttpMessageConverterExtractor;->extractData(Lorg/springframework/http/client/ClientHttpResponse;)Ljava/lang/Object;

    move-result-object v0

    .line 656
    .local v0, body:Ljava/lang/Object;,"TT;"
    new-instance v1, Lorg/springframework/http/ResponseEntity;

    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v2

    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getStatusCode()Lorg/springframework/http/HttpStatus;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lorg/springframework/http/ResponseEntity;-><init>(Ljava/lang/Object;Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/HttpStatus;)V

    .line 659
    .end local v0           #body:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/springframework/http/ResponseEntity;

    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v2

    invoke-interface {p1}, Lorg/springframework/http/client/ClientHttpResponse;->getStatusCode()Lorg/springframework/http/HttpStatus;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/springframework/http/ResponseEntity;-><init>(Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/HttpStatus;)V

    goto :goto_0
.end method

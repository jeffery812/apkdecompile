.class public Lorg/springframework/http/ResponseEntity;
.super Lorg/springframework/http/HttpEntity;
.source "ResponseEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/springframework/http/HttpEntity",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final statusCode:Lorg/springframework/http/HttpStatus;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/springframework/http/HttpStatus;)V
    .locals 0
    .parameter
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/springframework/http/HttpStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Lorg/springframework/http/ResponseEntity;,"Lorg/springframework/http/ResponseEntity<TT;>;"
    .local p1, body:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lorg/springframework/http/HttpEntity;-><init>(Ljava/lang/Object;)V

    .line 65
    iput-object p2, p0, Lorg/springframework/http/ResponseEntity;->statusCode:Lorg/springframework/http/HttpStatus;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/HttpStatus;)V
    .locals 0
    .parameter
    .parameter
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/springframework/http/HttpStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lorg/springframework/http/ResponseEntity;,"Lorg/springframework/http/ResponseEntity<TT;>;"
    .local p1, body:Ljava/lang/Object;,"TT;"
    .local p2, headers:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/springframework/http/HttpEntity;-><init>(Ljava/lang/Object;Lorg/springframework/util/MultiValueMap;)V

    .line 86
    iput-object p3, p0, Lorg/springframework/http/ResponseEntity;->statusCode:Lorg/springframework/http/HttpStatus;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/springframework/http/HttpStatus;)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 54
    .local p0, this:Lorg/springframework/http/ResponseEntity;,"Lorg/springframework/http/ResponseEntity<TT;>;"
    invoke-direct {p0}, Lorg/springframework/http/HttpEntity;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/springframework/http/ResponseEntity;->statusCode:Lorg/springframework/http/HttpStatus;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/springframework/util/MultiValueMap;Lorg/springframework/http/HttpStatus;)V
    .locals 0
    .parameter
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/springframework/http/HttpStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lorg/springframework/http/ResponseEntity;,"Lorg/springframework/http/ResponseEntity<TT;>;"
    .local p1, headers:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lorg/springframework/http/HttpEntity;-><init>(Lorg/springframework/util/MultiValueMap;)V

    .line 75
    iput-object p2, p0, Lorg/springframework/http/ResponseEntity;->statusCode:Lorg/springframework/http/HttpStatus;

    .line 76
    return-void
.end method


# virtual methods
.method public getStatusCode()Lorg/springframework/http/HttpStatus;
    .locals 1

    .prologue
    .line 94
    .local p0, this:Lorg/springframework/http/ResponseEntity;,"Lorg/springframework/http/ResponseEntity<TT;>;"
    iget-object v0, p0, Lorg/springframework/http/ResponseEntity;->statusCode:Lorg/springframework/http/HttpStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .local p0, this:Lorg/springframework/http/ResponseEntity;,"Lorg/springframework/http/ResponseEntity<TT;>;"
    const/16 v4, 0x2c

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/springframework/http/ResponseEntity;->statusCode:Lorg/springframework/http/HttpStatus;

    invoke-virtual {v3}, Lorg/springframework/http/HttpStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    iget-object v3, p0, Lorg/springframework/http/ResponseEntity;->statusCode:Lorg/springframework/http/HttpStatus;

    invoke-virtual {v3}, Lorg/springframework/http/HttpStatus;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Lorg/springframework/http/ResponseEntity;->getBody()Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, body:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Lorg/springframework/http/ResponseEntity;->getHeaders()Lorg/springframework/http/HttpHeaders;

    move-result-object v2

    .line 106
    .local v2, headers:Lorg/springframework/http/HttpHeaders;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    if-eqz v2, :cond_1

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    :cond_1
    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

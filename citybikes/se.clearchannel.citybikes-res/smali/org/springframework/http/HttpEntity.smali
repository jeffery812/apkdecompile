.class public Lorg/springframework/http/HttpEntity;
.super Ljava/lang/Object;
.source "HttpEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lorg/springframework/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/springframework/http/HttpEntity",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final body:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final headers:Lorg/springframework/http/HttpHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lorg/springframework/http/HttpEntity;

    invoke-direct {v0}, Lorg/springframework/http/HttpEntity;-><init>()V

    sput-object v0, Lorg/springframework/http/HttpEntity;->EMPTY:Lorg/springframework/http/HttpEntity;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<TT;>;"
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, v0}, Lorg/springframework/http/HttpEntity;-><init>(Ljava/lang/Object;Lorg/springframework/util/MultiValueMap;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<TT;>;"
    .local p1, body:Ljava/lang/Object;,"TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/springframework/http/HttpEntity;-><init>(Ljava/lang/Object;Lorg/springframework/util/MultiValueMap;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/springframework/util/MultiValueMap;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, this:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<TT;>;"
    .local p1, body:Ljava/lang/Object;,"TT;"
    .local p2, headers:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/springframework/http/HttpEntity;->body:Ljava/lang/Object;

    .line 96
    new-instance v0, Lorg/springframework/http/HttpHeaders;

    invoke-direct {v0}, Lorg/springframework/http/HttpHeaders;-><init>()V

    .line 97
    .local v0, tempHeaders:Lorg/springframework/http/HttpHeaders;
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {v0, p2}, Lorg/springframework/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 100
    :cond_0
    invoke-static {v0}, Lorg/springframework/http/HttpHeaders;->readOnlyHttpHeaders(Lorg/springframework/http/HttpHeaders;)Lorg/springframework/http/HttpHeaders;

    move-result-object v1

    iput-object v1, p0, Lorg/springframework/http/HttpEntity;->headers:Lorg/springframework/http/HttpHeaders;

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/springframework/util/MultiValueMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/springframework/util/MultiValueMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<TT;>;"
    .local p1, headers:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/springframework/http/HttpEntity;-><init>(Ljava/lang/Object;Lorg/springframework/util/MultiValueMap;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, this:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<TT;>;"
    iget-object v0, p0, Lorg/springframework/http/HttpEntity;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeaders()Lorg/springframework/http/HttpHeaders;
    .locals 1

    .prologue
    .line 108
    .local p0, this:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<TT;>;"
    iget-object v0, p0, Lorg/springframework/http/HttpEntity;->headers:Lorg/springframework/http/HttpHeaders;

    return-object v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 122
    .local p0, this:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<TT;>;"
    iget-object v0, p0, Lorg/springframework/http/HttpEntity;->body:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    .local p0, this:Lorg/springframework/http/HttpEntity;,"Lorg/springframework/http/HttpEntity<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/springframework/http/HttpEntity;->body:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lorg/springframework/http/HttpEntity;->body:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lorg/springframework/http/HttpEntity;->headers:Lorg/springframework/http/HttpHeaders;

    if-eqz v1, :cond_0

    .line 131
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    :cond_0
    iget-object v1, p0, Lorg/springframework/http/HttpEntity;->headers:Lorg/springframework/http/HttpHeaders;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lorg/springframework/http/HttpEntity;->headers:Lorg/springframework/http/HttpHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Lorg/simpleframework/xml/convert/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# instance fields
.field private final binder:Lorg/simpleframework/xml/convert/RegistryBinder;

.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Lorg/simpleframework/xml/convert/Converter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    .line 55
    new-instance v0, Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/RegistryBinder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    .line 56
    return-void
.end method

.method private create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/convert/RegistryBinder;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 90
    .local v0, converter:Lorg/simpleframework/xml/convert/Converter;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Registry;
    .locals 1
    .parameter "type"
    .parameter "converter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/convert/RegistryBinder;->bind(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 111
    :cond_0
    return-object p0
.end method

.method public bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;
    .locals 1
    .parameter "type"
    .parameter "converter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    :cond_0
    return-object p0
.end method

.method public lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Converter;

    .line 71
    .local v0, converter:Lorg/simpleframework/xml/convert/Converter;
    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/Registry;->create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 74
    .end local v0           #converter:Lorg/simpleframework/xml/convert/Converter;
    :cond_0
    return-object v0
.end method

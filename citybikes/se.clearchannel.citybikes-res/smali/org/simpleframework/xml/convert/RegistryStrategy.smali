.class public Lorg/simpleframework/xml/convert/RegistryStrategy;
.super Ljava/lang/Object;
.source "RegistryStrategy.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Strategy;


# instance fields
.field private final registry:Lorg/simpleframework/xml/convert/Registry;

.field private final strategy:Lorg/simpleframework/xml/strategy/Strategy;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/convert/Registry;)V
    .locals 1
    .parameter "registry"

    .prologue
    .line 72
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/convert/RegistryStrategy;-><init>(Lorg/simpleframework/xml/convert/Registry;Lorg/simpleframework/xml/strategy/Strategy;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/convert/Registry;Lorg/simpleframework/xml/strategy/Strategy;)V
    .locals 0
    .parameter "registry"
    .parameter "strategy"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->registry:Lorg/simpleframework/xml/convert/Registry;

    .line 86
    iput-object p2, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    .line 87
    return-void
.end method

.method private isReference(Lorg/simpleframework/xml/strategy/Value;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 236
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookup(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Lorg/simpleframework/xml/convert/Converter;
    .locals 2
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 220
    .local v0, real:Ljava/lang/Class;
    if-eqz p2, :cond_0

    .line 221
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 223
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->registry:Lorg/simpleframework/xml/convert/Registry;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/convert/Registry;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    return-object v1
.end method

.method private lookup(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/convert/Converter;
    .locals 2
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 201
    .local v0, real:Ljava/lang/Class;
    if-eqz p2, :cond_0

    .line 202
    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 204
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->registry:Lorg/simpleframework/xml/convert/Registry;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/convert/Registry;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v1

    return-object v1
.end method

.method private read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/strategy/Value;
    .locals 4
    .parameter "type"
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;",
            "Lorg/simpleframework/xml/strategy/Value;",
            ")",
            "Lorg/simpleframework/xml/strategy/Value;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    .local p2, node:Lorg/simpleframework/xml/stream/NodeMap;,"Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/InputNode;>;"
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/convert/RegistryStrategy;->lookup(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 126
    .local v0, converter:Lorg/simpleframework/xml/convert/Converter;
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/stream/InputNode;

    .line 128
    .local v2, source:Lorg/simpleframework/xml/stream/InputNode;
    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v0, v2}, Lorg/simpleframework/xml/convert/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, data:Ljava/lang/Object;
    if-eqz p3, :cond_0

    .line 132
    invoke-interface {p3, v1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    .line 134
    :cond_0
    new-instance v3, Lorg/simpleframework/xml/convert/Reference;

    invoke-direct {v3, p3, v1}, Lorg/simpleframework/xml/convert/Reference;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Object;)V

    move-object p3, v3

    .line 136
    .end local v1           #data:Ljava/lang/Object;
    .end local p3
    :cond_1
    return-object p3
.end method

.method private write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z
    .locals 3
    .parameter "type"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Ljava/lang/Object;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    .local p3, node:Lorg/simpleframework/xml/stream/NodeMap;,"Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/OutputNode;>;"
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/convert/RegistryStrategy;->lookup(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 179
    .local v0, converter:Lorg/simpleframework/xml/convert/Converter;
    invoke-interface {p3}, Lorg/simpleframework/xml/stream/NodeMap;->getNode()Lorg/simpleframework/xml/stream/Node;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/stream/OutputNode;

    .line 181
    .local v1, source:Lorg/simpleframework/xml/stream/OutputNode;
    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, v1, p2}, Lorg/simpleframework/xml/convert/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 183
    const/4 v2, 0x1

    .line 185
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;
    .locals 2
    .parameter "type"
    .parameter
    .parameter "map"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;",
            "Ljava/util/Map;",
            ")",
            "Lorg/simpleframework/xml/strategy/Value;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    .local p2, node:Lorg/simpleframework/xml/stream/NodeMap;,"Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/InputNode;>;"
    iget-object v1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v1, p1, p2, p3}, Lorg/simpleframework/xml/strategy/Strategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    .line 105
    .local v0, value:Lorg/simpleframework/xml/strategy/Value;
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/convert/RegistryStrategy;->isReference(Lorg/simpleframework/xml/strategy/Value;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    .end local v0           #value:Lorg/simpleframework/xml/strategy/Value;
    :goto_0
    return-object v0

    .restart local v0       #value:Lorg/simpleframework/xml/strategy/Value;
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/convert/RegistryStrategy;->read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object v0

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z
    .locals 2
    .parameter "type"
    .parameter "value"
    .parameter
    .parameter "map"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/strategy/Type;",
            "Ljava/lang/Object;",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;",
            "Ljava/util/Map;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    .local p3, node:Lorg/simpleframework/xml/stream/NodeMap;,"Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/OutputNode;>;"
    iget-object v1, p0, Lorg/simpleframework/xml/convert/RegistryStrategy;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/simpleframework/xml/strategy/Strategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;Ljava/util/Map;)Z

    move-result v0

    .line 157
    .local v0, reference:Z
    if-nez v0, :cond_0

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/convert/RegistryStrategy;->write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z

    move-result v0

    .line 160
    .end local v0           #reference:Z
    :cond_0
    return v0
.end method

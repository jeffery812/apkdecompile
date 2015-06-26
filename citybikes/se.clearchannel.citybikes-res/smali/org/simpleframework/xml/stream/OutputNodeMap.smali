.class Lorg/simpleframework/xml/stream/OutputNodeMap;
.super Ljava/util/LinkedHashMap;
.source "OutputNodeMap.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/NodeMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/stream/OutputNode;",
        ">;",
        "Lorg/simpleframework/xml/stream/NodeMap",
        "<",
        "Lorg/simpleframework/xml/stream/OutputNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final source:Lorg/simpleframework/xml/stream/OutputNode;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/OutputNodeMap;->get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1
    .parameter "name"

    .prologue
    .line 115
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNode()Lorg/simpleframework/xml/stream/Node;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputNodeMap;->getNode()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputNodeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/stream/OutputNodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 82
    new-instance v0, Lorg/simpleframework/xml/stream/OutputAttribute;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-direct {v0, v1, p1, p2}, Lorg/simpleframework/xml/stream/OutputAttribute;-><init>(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v0, node:Lorg/simpleframework/xml/stream/OutputNode;
    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputNodeMap;->source:Lorg/simpleframework/xml/stream/OutputNode;

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/stream/OutputNodeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/OutputNodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1
    .parameter "name"

    .prologue
    .line 101
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    return-object v0
.end method

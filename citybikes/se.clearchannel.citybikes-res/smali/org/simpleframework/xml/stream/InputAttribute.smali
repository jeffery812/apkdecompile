.class Lorg/simpleframework/xml/stream/InputAttribute;
.super Ljava/lang/Object;
.source "InputAttribute.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/InputNode;


# instance fields
.field private name:Ljava/lang/String;

.field private parent:Lorg/simpleframework/xml/stream/InputNode;

.field private prefix:Ljava/lang/String;

.field private reference:Ljava/lang/String;

.field private source:Ljava/lang/Object;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputAttribute;->parent:Lorg/simpleframework/xml/stream/InputNode;

    .line 74
    iput-object p3, p0, Lorg/simpleframework/xml/stream/InputAttribute;->value:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lorg/simpleframework/xml/stream/InputAttribute;->name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/Attribute;)V
    .locals 1
    .parameter "parent"
    .parameter "attribute"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->getReference()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->reference:Ljava/lang/String;

    .line 88
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->getPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->prefix:Ljava/lang/String;

    .line 89
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->getSource()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->source:Ljava/lang/Object;

    .line 90
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->value:Ljava/lang/String;

    .line 91
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->name:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputAttribute;->parent:Lorg/simpleframework/xml/stream/InputNode;

    .line 93
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 1
    .parameter "name"

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Lorg/simpleframework/xml/stream/InputNodeMap;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/InputNodeMap;-><init>(Lorg/simpleframework/xml/stream/InputNode;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()Lorg/simpleframework/xml/stream/InputNode;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 1
    .parameter "name"

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lorg/simpleframework/xml/stream/InputNode;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->parent:Lorg/simpleframework/xml/stream/InputNode;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/simpleframework/xml/stream/Node;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/InputAttribute;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lorg/simpleframework/xml/stream/Position;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->parent:Lorg/simpleframework/xml/stream/InputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isElement()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public skip()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 276
    const-string v0, "attribute %s=\'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/stream/InputAttribute;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/stream/InputAttribute;->value:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

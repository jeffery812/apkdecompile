.class Lorg/simpleframework/xml/core/PrimitiveValue;
.super Ljava/lang/Object;
.source "PrimitiveValue.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final entry:Lorg/simpleframework/xml/core/Entry;

.field private final factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

.field private final root:Lorg/simpleframework/xml/core/Primitive;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1
    .parameter "context"
    .parameter "entry"
    .parameter "type"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lorg/simpleframework/xml/core/PrimitiveFactory;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/PrimitiveFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    .line 92
    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    .line 93
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    .line 94
    iput-object p1, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->context:Lorg/simpleframework/xml/core/Context;

    .line 95
    iput-object p2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    .line 96
    iput-object p3, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 97
    return-void
.end method

.method private isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z
    .locals 2
    .parameter "node"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->factory:Lorg/simpleframework/xml/core/PrimitiveFactory;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-virtual {v0, v1, p2, p1}, Lorg/simpleframework/xml/core/PrimitiveFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method private readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "node"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    if-eqz p2, :cond_0

    .line 178
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 179
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    .line 181
    :cond_0
    if-nez p1, :cond_1

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "node"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v2, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, name:Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 159
    .local v0, child:Lorg/simpleframework/xml/stream/InputNode;
    if-nez v0, :cond_0

    .line 160
    const/4 v2, 0x0

    .line 162
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v2, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z
    .locals 1
    .parameter "node"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 243
    if-eqz p2, :cond_0

    .line 244
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-interface {p1, p2}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    .line 247
    :cond_0
    if-nez p1, :cond_1

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Primitive;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    goto :goto_0
.end method

.method private validateElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z
    .locals 3
    .parameter "node"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v2, p2}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, name:Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 225
    .local v0, child:Lorg/simpleframework/xml/stream/InputNode;
    if-nez v0, :cond_0

    .line 226
    const/4 v2, 0x1

    .line 228
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/Primitive;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v2

    goto :goto_0
.end method

.method private writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "node"
    .parameter "item"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 308
    if-eqz p2, :cond_1

    .line 309
    if-eqz p3, :cond_0

    .line 310
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p3}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 311
    const/4 v0, 0x0

    invoke-interface {p1, p3, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object p1

    .line 313
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 315
    :cond_1
    return-void
.end method

.method private writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "node"
    .parameter "item"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v2, p3}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, name:Ljava/lang/String;
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 290
    .local v0, child:Lorg/simpleframework/xml/stream/OutputNode;
    if-eqz p2, :cond_0

    .line 291
    invoke-direct {p0, v0, p2}, Lorg/simpleframework/xml/core/PrimitiveValue;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->root:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v2, v0, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 295
    :cond_0
    return-void
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, expect:Ljava/lang/Class;
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->isInline()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    if-nez v1, :cond_0

    .line 115
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_0
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/PrimitiveValue;->readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 119
    :goto_0
    return-object v2

    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/PrimitiveValue;->readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "node"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v1, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 138
    .local v0, expect:Ljava/lang/Class;
    if-eqz p2, :cond_0

    .line 139
    new-instance v1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v2, "Can not read value of %s for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/PrimitiveValue;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 199
    .local v0, expect:Ljava/lang/Class;
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->isInline()Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    if-nez v1, :cond_0

    .line 203
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_0
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/PrimitiveValue;->validateElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z

    move-result v2

    .line 207
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/PrimitiveValue;->validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 3
    .parameter "node"
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 264
    .local v0, expect:Ljava/lang/Class;
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Entry;->isInline()Z

    move-result v2

    if-nez v2, :cond_1

    .line 267
    if-nez v1, :cond_0

    .line 268
    iget-object v2, p0, Lorg/simpleframework/xml/core/PrimitiveValue;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/core/Context;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 270
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/PrimitiveValue;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/PrimitiveValue;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

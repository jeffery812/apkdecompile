.class Lorg/simpleframework/xml/core/CompositeInlineMap;
.super Ljava/lang/Object;
.source "CompositeInlineMap.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Repeater;


# instance fields
.field private final entry:Lorg/simpleframework/xml/core/Entry;

.field private final factory:Lorg/simpleframework/xml/core/MapFactory;

.field private final key:Lorg/simpleframework/xml/core/Converter;

.field private final style:Lorg/simpleframework/xml/stream/Style;

.field private final value:Lorg/simpleframework/xml/core/Converter;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1
    .parameter "context"
    .parameter "entry"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lorg/simpleframework/xml/core/MapFactory;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/MapFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    .line 96
    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/Entry;->getValue(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->value:Lorg/simpleframework/xml/core/Converter;

    .line 97
    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/Entry;->getKey(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->key:Lorg/simpleframework/xml/core/Converter;

    .line 98
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->style:Lorg/simpleframework/xml/stream/Style;

    .line 99
    iput-object p2, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->entry:Lorg/simpleframework/xml/core/Entry;

    .line 100
    return-void
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Map;)Ljava/lang/Object;
    .locals 5
    .parameter "node"
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 163
    .local v0, from:Lorg/simpleframework/xml/stream/InputNode;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, name:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    .line 166
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v4, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    .line 167
    .local v1, index:Ljava/lang/Object;
    iget-object v4, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v4, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, item:Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 170
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    invoke-interface {v0, v3}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    .line 173
    goto :goto_0

    .line 174
    .end local v1           #index:Ljava/lang/Object;
    .end local v2           #item:Ljava/lang/Object;
    :cond_1
    return-object p2
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Map;Lorg/simpleframework/xml/stream/Mode;)V
    .locals 7
    .parameter "node"
    .parameter "map"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v6, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->entry:Lorg/simpleframework/xml/core/Entry;

    invoke-virtual {v6}, Lorg/simpleframework/xml/core/Entry;->getEntry()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, root:Ljava/lang/String;
    iget-object v6, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v6, v5}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, name:Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 245
    .local v1, index:Ljava/lang/Object;
    invoke-interface {p1, v3}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v4

    .line 246
    .local v4, next:Lorg/simpleframework/xml/stream/OutputNode;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 248
    .local v2, item:Ljava/lang/Object;
    invoke-interface {v4, p3}, Lorg/simpleframework/xml/stream/OutputNode;->setMode(Lorg/simpleframework/xml/stream/Mode;)V

    .line 249
    iget-object v6, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v6, v4, v1}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 250
    iget-object v6, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v6, v4, v2}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    .end local v1           #index:Ljava/lang/Object;
    .end local v2           #item:Ljava/lang/Object;
    .end local v4           #next:Lorg/simpleframework/xml/stream/OutputNode;
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
    .line 116
    iget-object v2, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->factory:Lorg/simpleframework/xml/core/MapFactory;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/MapFactory;->getInstance()Ljava/lang/Object;

    move-result-object v1

    .local v1, value:Ljava/lang/Object;
    move-object v0, v1

    .line 117
    check-cast v0, Ljava/util/Map;

    .line 119
    .local v0, table:Ljava/util/Map;
    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeInlineMap;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    .line 122
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "node"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    .line 141
    .local v0, map:Ljava/util/Map;
    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/CompositeInlineMap;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/CompositeInlineMap;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 192
    .local v0, from:Lorg/simpleframework/xml/stream/InputNode;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, name:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    .line 195
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->key:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v3, p1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    :cond_0
    :goto_1
    return v2

    .line 198
    :cond_1
    iget-object v3, p0, Lorg/simpleframework/xml/core/CompositeInlineMap;->value:Lorg/simpleframework/xml/core/Converter;

    invoke-interface {v3, p1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/InputNode;->getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object p1

    goto :goto_0

    .line 203
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 4
    .parameter "node"
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 218
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getParent()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    .line 219
    .local v2, parent:Lorg/simpleframework/xml/stream/OutputNode;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getMode()Lorg/simpleframework/xml/stream/Mode;

    move-result-object v1

    .local v1, mode:Lorg/simpleframework/xml/stream/Mode;
    move-object v0, p2

    .line 220
    check-cast v0, Ljava/util/Map;

    .line 222
    .local v0, map:Ljava/util/Map;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->remove()V

    .line 225
    :cond_0
    invoke-direct {p0, v2, v0, v1}, Lorg/simpleframework/xml/core/CompositeInlineMap;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/util/Map;Lorg/simpleframework/xml/stream/Mode;)V

    .line 226
    return-void
.end method

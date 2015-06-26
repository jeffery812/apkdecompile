.class Lorg/simpleframework/xml/stream/Builder;
.super Ljava/lang/Object;
.source "Builder.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/Style;


# instance fields
.field private final attributes:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final elements:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final style:Lorg/simpleframework/xml/stream/Style;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/Style;)V
    .locals 1
    .parameter "style"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->attributes:Lorg/simpleframework/xml/util/Cache;

    .line 71
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->elements:Lorg/simpleframework/xml/util/Cache;

    .line 72
    iput-object p1, p0, Lorg/simpleframework/xml/stream/Builder;->style:Lorg/simpleframework/xml/stream/Style;

    .line 73
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 86
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Builder;->attributes:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 96
    .end local v0           #value:Ljava/lang/String;
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 91
    .end local v1           #value:Ljava/lang/String;
    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Builder;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Builder;->attributes:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    move-object v1, v0

    .line 96
    .end local v0           #value:Ljava/lang/String;
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 110
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Builder;->elements:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 120
    .end local v0           #value:Ljava/lang/String;
    .local v1, value:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 115
    .end local v1           #value:Ljava/lang/String;
    .restart local v0       #value:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Builder;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    iget-object v2, p0, Lorg/simpleframework/xml/stream/Builder;->elements:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v2, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    move-object v1, v0

    .line 120
    .end local v0           #value:Ljava/lang/String;
    .restart local v1       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 133
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->attributes:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public setElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 146
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->elements:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

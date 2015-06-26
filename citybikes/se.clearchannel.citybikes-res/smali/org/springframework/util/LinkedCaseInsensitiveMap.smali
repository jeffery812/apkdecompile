.class public Lorg/springframework/util/LinkedCaseInsensitiveMap;
.super Ljava/util/LinkedHashMap;
.source "LinkedCaseInsensitiveMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final caseInsensitiveKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/springframework/util/LinkedCaseInsensitiveMap;-><init>(Ljava/util/Locale;)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 74
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/springframework/util/LinkedCaseInsensitiveMap;-><init>(ILjava/util/Locale;)V

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/util/Locale;)V
    .locals 1
    .parameter "initialCapacity"
    .parameter "locale"

    .prologue
    .line 85
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/springframework/util/LinkedCaseInsensitiveMap;->caseInsensitiveKeys:Ljava/util/Map;

    .line 87
    if-eqz p2, :cond_0

    .end local p2
    :goto_0
    iput-object p2, p0, Lorg/springframework/util/LinkedCaseInsensitiveMap;->locale:Ljava/util/Locale;

    .line 88
    return-void

    .line 87
    .restart local p2
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 62
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/springframework/util/LinkedCaseInsensitiveMap;->caseInsensitiveKeys:Ljava/util/Map;

    .line 64
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lorg/springframework/util/LinkedCaseInsensitiveMap;->locale:Ljava/util/Locale;

    .line 65
    return-void

    .line 64
    .restart local p1
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 132
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    iget-object v0, p0, Lorg/springframework/util/LinkedCaseInsensitiveMap;->caseInsensitiveKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 133
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 134
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 109
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/springframework/util/LinkedCaseInsensitiveMap;->caseInsensitiveKeys:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/springframework/util/LinkedCaseInsensitiveMap;->convertKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected convertKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 146
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    iget-object v0, p0, Lorg/springframework/util/LinkedCaseInsensitiveMap;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/springframework/util/LinkedCaseInsensitiveMap;->caseInsensitiveKeys:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/springframework/util/LinkedCaseInsensitiveMap;->convertKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lorg/springframework/util/LinkedCaseInsensitiveMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lorg/springframework/util/LinkedCaseInsensitiveMap;->caseInsensitiveKeys:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lorg/springframework/util/LinkedCaseInsensitiveMap;->convertKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/String;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    return-void

    .line 102
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+Ljava/lang/String;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/springframework/util/LinkedCaseInsensitiveMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lorg/springframework/util/LinkedCaseInsensitiveMap;,"Lorg/springframework/util/LinkedCaseInsensitiveMap<TV;>;"
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/springframework/util/LinkedCaseInsensitiveMap;->caseInsensitiveKeys:Ljava/util/Map;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/springframework/util/LinkedCaseInsensitiveMap;->convertKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

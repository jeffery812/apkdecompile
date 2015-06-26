.class public abstract Lorg/springframework/util/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,
        Lorg/springframework/util/CollectionUtils$EnumerationIterator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    return-void
.end method

.method public static arrayToList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "source"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static contains(Ljava/util/Enumeration;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter "element"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    if-eqz p0, :cond_1

    .line 142
    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, candidate:Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/springframework/util/ObjectUtils;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x1

    .line 149
    .end local v0           #candidate:Ljava/lang/Object;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static contains(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter "element"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    if-eqz p0, :cond_1

    .line 124
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, candidate:Ljava/lang/Object;
    invoke-static {v0, p1}, Lorg/springframework/util/ObjectUtils;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x1

    .line 131
    .end local v0           #candidate:Ljava/lang/Object;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, source:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, candidates:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 179
    invoke-static {p0}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v2

    .line 182
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 183
    .local v0, candidate:Ljava/lang/Object;
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static containsInstance(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter "element"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    if-eqz p0, :cond_1

    .line 162
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 163
    .local v0, candidate:Ljava/lang/Object;
    if-ne v0, p1, :cond_0

    .line 164
    const/4 v2, 0x1

    .line 168
    .end local v0           #candidate:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static findCommonElementType(Ljava/util/Collection;)Ljava/lang/Class;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v3, 0x0

    .line 286
    invoke-static {p0}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 299
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :cond_1
    const/4 v0, 0x0

    .line 290
    .local v0, candidate:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 291
    .local v2, val:Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 292
    if-nez v0, :cond_3

    .line 293
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 294
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v0, v4, :cond_2

    move-object v0, v3

    .line 295
    goto :goto_0
.end method

.method public static findFirstMatch(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, source:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, candidates:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    .line 199
    invoke-static {p0}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v0, v2

    .line 207
    :goto_0
    return-object v0

    .line 202
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 203
    .local v0, candidate:Ljava/lang/Object;
    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0           #candidate:Ljava/lang/Object;
    :cond_3
    move-object v0, v2

    .line 207
    goto :goto_0
.end method

.method public static findValueOfType(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 219
    invoke-static {p0}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 232
    :cond_0
    :goto_0
    return-object v2

    .line 222
    :cond_1
    const/4 v2, 0x0

    .line 223
    .local v2, value:Ljava/lang/Object;,"TT;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2           #value:Ljava/lang/Object;,"TT;"
    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, element:Ljava/lang/Object;
    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    :cond_3
    if-eqz v2, :cond_4

    move-object v2, v3

    .line 227
    goto :goto_0

    .line 229
    :cond_4
    move-object v2, v0

    .restart local v2       #value:Ljava/lang/Object;,"TT;"
    goto :goto_1
.end method

.method public static findValueOfType(Ljava/util/Collection;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .local p1, types:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 244
    invoke-static {p0}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v4, v5

    .line 253
    :cond_1
    :goto_0
    return-object v4

    .line 247
    :cond_2
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Class;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 248
    .local v3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, v3}, Lorg/springframework/util/CollectionUtils;->findValueOfType(Ljava/util/Collection;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 249
    .local v4, value:Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #value:Ljava/lang/Object;
    :cond_3
    move-object v4, v5

    .line 253
    goto :goto_0
.end method

.method public static hasUniqueObject(Ljava/util/Collection;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v4, 0x0

    .line 263
    invoke-static {p0}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    :goto_0
    return v4

    .line 266
    :cond_0
    const/4 v2, 0x0

    .line 267
    .local v2, hasCandidate:Z
    const/4 v0, 0x0

    .line 268
    .local v0, candidate:Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v0           #candidate:Ljava/lang/Object;
    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 269
    .local v1, elem:Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 270
    const/4 v2, 0x1

    .line 271
    move-object v0, v1

    .restart local v0       #candidate:Ljava/lang/Object;
    goto :goto_1

    .line 272
    .end local v0           #candidate:Ljava/lang/Object;
    :cond_2
    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 276
    .end local v1           #elem:Ljava/lang/Object;
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mergeArrayIntoCollection(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 7
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 82
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Collection must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 84
    :cond_0
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, arr:[Ljava/lang/Object;
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/Object;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 86
    .local v2, elem:Ljava/lang/Object;
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    .end local v2           #elem:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public static mergePropertiesIntoMap(Ljava/util/Properties;Ljava/util/Map;)V
    .locals 5
    .parameter "props"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 100
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Map must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_0
    if-eqz p0, :cond_2

    .line 103
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 108
    invoke-virtual {p0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 110
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<*>;"
    .end local v1           #key:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static toArray(Ljava/util/Enumeration;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "E:TA;>(",
            "Ljava/util/Enumeration",
            "<TE;>;[TA;)[TA;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TA;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v0, elements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TA;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toIterator(Ljava/util/Enumeration;)Ljava/util/Iterator;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration",
            "<TE;>;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, enumeration:Ljava/util/Enumeration;,"Ljava/util/Enumeration<TE;>;"
    new-instance v0, Lorg/springframework/util/CollectionUtils$EnumerationIterator;

    invoke-direct {v0, p0}, Lorg/springframework/util/CollectionUtils$EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public static toMultiValueMap(Ljava/util/Map;)Lorg/springframework/util/MultiValueMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;)",
            "Lorg/springframework/util/MultiValueMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/List<TV;>;>;"
    new-instance v0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;

    invoke-direct {v0, p0}, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static unmodifiableMultiValueMap(Lorg/springframework/util/MultiValueMap;)Lorg/springframework/util/MultiValueMap;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/springframework/util/MultiValueMap",
            "<+TK;+TV;>;)",
            "Lorg/springframework/util/MultiValueMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, map:Lorg/springframework/util/MultiValueMap;,"Lorg/springframework/util/MultiValueMap<+TK;+TV;>;"
    const-string v5, "\'map\' must not be null"

    invoke-static {p0, v5}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Lorg/springframework/util/MultiValueMap;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 343
    .local v2, result:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/List<TV;>;>;"
    invoke-interface {p0}, Lorg/springframework/util/MultiValueMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 344
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+Ljava/util/List<+TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 345
    .local v4, values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 347
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+Ljava/util/List<+TV;>;>;"
    .end local v4           #values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 348
    .local v3, unmodifiableMap:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/List<TV;>;>;"
    invoke-static {v3}, Lorg/springframework/util/CollectionUtils;->toMultiValueMap(Ljava/util/Map;)Lorg/springframework/util/MultiValueMap;

    move-result-object v5

    return-object v5
.end method

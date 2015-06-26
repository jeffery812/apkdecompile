.class Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;
.super Ljava/lang/Object;
.source "CollectionUtils.java"

# interfaces
.implements Lorg/springframework/util/MultiValueMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/util/CollectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiValueMapAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/springframework/util/MultiValueMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<TK;Ljava/util/List<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    const-string v0, "\'map\' must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iput-object p1, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    .line 388
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 392
    .local v0, values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 394
    .restart local v0       #values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    iget-object v1, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 457
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 458
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 433
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 437
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 474
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    if-ne p0, p1, :cond_0

    .line 475
    const/4 v0, 0x1

    .line 477
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 441
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 400
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 401
    .local v0, values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 482
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 429
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 379
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->put(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 445
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/util/List;,"Ljava/util/List<TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljava/util/List",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+Ljava/util/List<TV;>;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 454
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 379
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 406
    .local v0, values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v1, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    return-void
.end method

.method public setAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
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

    .line 412
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 414
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 425
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toSingleValueMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 418
    .local v2, singleValueMap:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TK;TV;>;"
    iget-object v3, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 419
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/util/List<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 421
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/util/List<TV;>;>;"
    :cond_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, this:Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;,"Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/springframework/util/CollectionUtils$MultiValueMapAdapter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

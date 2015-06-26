.class public Lbbc/mobile/news/cache/CategoryCache;
.super Ljava/lang/Object;
.source "CategoryCache.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CategoryCache"

.field private static final mInstance:Lbbc/mobile/news/cache/CategoryCache;


# instance fields
.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbbc/mobile/news/model/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lbbc/mobile/news/cache/CategoryCache;

    invoke-direct {v0}, Lbbc/mobile/news/cache/CategoryCache;-><init>()V

    sput-object v0, Lbbc/mobile/news/cache/CategoryCache;->mInstance:Lbbc/mobile/news/cache/CategoryCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/cache/CategoryCache;->mHashMap:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method public static final declared-synchronized getInstance()Lbbc/mobile/news/cache/CategoryCache;
    .locals 2

    .prologue
    .line 23
    const-class v0, Lbbc/mobile/news/cache/CategoryCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbbc/mobile/news/cache/CategoryCache;->mInstance:Lbbc/mobile/news/cache/CategoryCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/CategoryCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Lbbc/mobile/news/model/Category;
    .locals 3
    .parameter "id"

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/cache/CategoryCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 36
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 31
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lbbc/mobile/news/model/Category;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Category;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Category;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lbbc/mobile/news/model/Category;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lbbc/mobile/news/model/Category;
    .locals 1
    .parameter "id"

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/CategoryCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Category;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllCategorys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lbbc/mobile/news/cache/CategoryCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasCategory(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/CategoryCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Lbbc/mobile/news/model/Category;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/CategoryCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, categorys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Category;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Category;

    .line 62
    .local v0, category:Lbbc/mobile/news/model/Category;
    invoke-virtual {p0, v0}, Lbbc/mobile/news/cache/CategoryCache;->put(Lbbc/mobile/news/model/Category;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    .end local v0           #category:Lbbc/mobile/news/model/Category;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

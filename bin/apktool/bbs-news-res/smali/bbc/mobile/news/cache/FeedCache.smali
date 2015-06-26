.class public Lbbc/mobile/news/cache/FeedCache;
.super Ljava/lang/Object;
.source "FeedCache.java"


# static fields
.field private static final INSTANCE:Lbbc/mobile/news/cache/FeedCache; = null

.field public static final TAG:Ljava/lang/String; = "FeedCache"


# instance fields
.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbbc/mobile/news/model/Feed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lbbc/mobile/news/cache/FeedCache;

    invoke-direct {v0}, Lbbc/mobile/news/cache/FeedCache;-><init>()V

    sput-object v0, Lbbc/mobile/news/cache/FeedCache;->INSTANCE:Lbbc/mobile/news/cache/FeedCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/cache/FeedCache;->mHashMap:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method public static final declared-synchronized getInstance()Lbbc/mobile/news/cache/FeedCache;
    .locals 2

    .prologue
    .line 25
    const-class v0, Lbbc/mobile/news/cache/FeedCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbbc/mobile/news/cache/FeedCache;->INSTANCE:Lbbc/mobile/news/cache/FeedCache;
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
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/FeedCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lbbc/mobile/news/model/Feed;
    .locals 2
    .parameter "name"

    .prologue
    .line 34
    monitor-enter p0

    if-nez p1, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/FeedCache;->mHashMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Feed;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFeed()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lbbc/mobile/news/cache/FeedCache;->mHashMap:Ljava/util/HashMap;

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

    .line 61
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    .line 56
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lbbc/mobile/news/model/Feed;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Feed;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lbbc/mobile/news/model/Feed;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasFeed(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/FeedCache;->mHashMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
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

.method public declared-synchronized put(Lbbc/mobile/news/model/Feed;)V
    .locals 3
    .parameter "feed"

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/FeedCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 29
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
            "Lbbc/mobile/news/model/Feed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 52
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Feed;

    .line 51
    .local v0, feed:Lbbc/mobile/news/model/Feed;
    invoke-virtual {p0, v0}, Lbbc/mobile/news/cache/FeedCache;->put(Lbbc/mobile/news/model/Feed;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    .end local v0           #feed:Lbbc/mobile/news/model/Feed;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

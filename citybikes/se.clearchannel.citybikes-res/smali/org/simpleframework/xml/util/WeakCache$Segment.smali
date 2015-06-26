.class Lorg/simpleframework/xml/util/WeakCache$Segment;
.super Ljava/util/WeakHashMap;
.source "WeakCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/util/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/WeakHashMap",
        "<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/util/WeakCache;


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/util/WeakCache;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache$Segment;,"Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    iput-object p1, p0, Lorg/simpleframework/xml/util/WeakCache$Segment;->this$0:Lorg/simpleframework/xml/util/WeakCache;

    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/simpleframework/xml/util/WeakCache;Lorg/simpleframework/xml/util/WeakCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache$Segment;,"Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;-><init>(Lorg/simpleframework/xml/util/WeakCache;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized cache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache$Segment;,"Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/util/WeakCache$Segment;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 284
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache$Segment;,"Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->containsKey(Ljava/lang/Object;)Z
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

.method public declared-synchronized fetch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache$Segment;,"Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized take(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache$Segment;,"Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

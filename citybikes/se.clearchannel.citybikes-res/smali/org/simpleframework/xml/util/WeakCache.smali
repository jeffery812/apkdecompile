.class public Lorg/simpleframework/xml/util/WeakCache;
.super Ljava/lang/Object;
.source "WeakCache.java"

# interfaces
.implements Lorg/simpleframework/xml/util/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/util/WeakCache$1;,
        Lorg/simpleframework/xml/util/WeakCache$Segment;,
        Lorg/simpleframework/xml/util/WeakCache$SegmentList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/util/Cache",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private list:Lorg/simpleframework/xml/util/WeakCache$SegmentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/WeakCache",
            "<TT;>.Segment",
            "List;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache;,"Lorg/simpleframework/xml/util/WeakCache<TT;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/util/WeakCache;-><init>(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 60
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache;,"Lorg/simpleframework/xml/util/WeakCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/simpleframework/xml/util/WeakCache$SegmentList;

    invoke-direct {v0, p0, p1}, Lorg/simpleframework/xml/util/WeakCache$SegmentList;-><init>(Lorg/simpleframework/xml/util/WeakCache;I)V

    iput-object v0, p0, Lorg/simpleframework/xml/util/WeakCache;->list:Lorg/simpleframework/xml/util/WeakCache$SegmentList;

    .line 62
    return-void
.end method

.method private map(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/simpleframework/xml/util/WeakCache",
            "<TT;>.Segment;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache;,"Lorg/simpleframework/xml/util/WeakCache<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/xml/util/WeakCache;->list:Lorg/simpleframework/xml/util/WeakCache$SegmentList;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cache(Ljava/lang/Object;Ljava/lang/Object;)V
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
    .line 84
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache;,"Lorg/simpleframework/xml/util/WeakCache<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache;->map(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/util/WeakCache$Segment;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 123
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache;,"Lorg/simpleframework/xml/util/WeakCache<TT;>;"
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache;->map(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fetch(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 110
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache;,"Lorg/simpleframework/xml/util/WeakCache<TT;>;"
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache;->map(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 65
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache;,"Lorg/simpleframework/xml/util/WeakCache<TT;>;"
    iget-object v2, p0, Lorg/simpleframework/xml/util/WeakCache;->list:Lorg/simpleframework/xml/util/WeakCache$SegmentList;

    invoke-virtual {v2}, Lorg/simpleframework/xml/util/WeakCache$SegmentList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/util/WeakCache$Segment;

    .line 66
    .local v1, segment:Lorg/simpleframework/xml/util/WeakCache$Segment;,"Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    invoke-virtual {v1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    const/4 v2, 0x0

    .line 70
    .end local v1           #segment:Lorg/simpleframework/xml/util/WeakCache$Segment;,"Lorg/simpleframework/xml/util/WeakCache<TT;>.Segment;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public take(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 97
    .local p0, this:Lorg/simpleframework/xml/util/WeakCache;,"Lorg/simpleframework/xml/util/WeakCache<TT;>;"
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/util/WeakCache;->map(Ljava/lang/Object;)Lorg/simpleframework/xml/util/WeakCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/WeakCache$Segment;->take(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

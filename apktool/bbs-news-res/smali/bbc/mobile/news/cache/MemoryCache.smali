.class public Lbbc/mobile/news/cache/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# static fields
.field private static final HARD_CACHE_CAPACITY:I = 0x19

.field private static final sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/net/URL;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final sHardBitmapCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/net/URL;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lbbc/mobile/news/cache/MemoryCache;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lbbc/mobile/news/cache/MemoryCache$1;

    const/16 v1, 0xc

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lbbc/mobile/news/cache/MemoryCache$1;-><init>(Lbbc/mobile/news/cache/MemoryCache;IFZ)V

    iput-object v0, p0, Lbbc/mobile/news/cache/MemoryCache;->sHardBitmapCache:Ljava/util/LinkedHashMap;

    .line 16
    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lbbc/mobile/news/cache/MemoryCache;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lbbc/mobile/news/cache/MemoryCache;->sHardBitmapCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 38
    sget-object v0, Lbbc/mobile/news/cache/MemoryCache;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 39
    return-void
.end method

.method public getBitmap(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "url"

    .prologue
    .line 47
    iget-object v3, p0, Lbbc/mobile/news/cache/MemoryCache;->sHardBitmapCache:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 48
    :try_start_0
    iget-object v2, p0, Lbbc/mobile/news/cache/MemoryCache;->sHardBitmapCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 53
    :try_start_1
    iget-object v2, p0, Lbbc/mobile/news/cache/MemoryCache;->sHardBitmapCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    :goto_0
    :try_start_2
    iget-object v2, p0, Lbbc/mobile/news/cache/MemoryCache;->sHardBitmapCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit v3

    move-object v2, v0

    .line 76
    :goto_1
    return-object v2

    .line 47
    :cond_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    sget-object v2, Lbbc/mobile/news/cache/MemoryCache;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 65
    .local v1, bitmapReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_2

    .line 66
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 67
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 69
    goto :goto_1

    .line 47
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 72
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #bitmapReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :cond_1
    sget-object v2, Lbbc/mobile/news/cache/MemoryCache;->sSoftBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 55
    .end local v1           #bitmapReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public putBitmap(Ljava/net/URL;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 81
    if-eqz p2, :cond_0

    .line 82
    iget-object v1, p0, Lbbc/mobile/news/cache/MemoryCache;->sHardBitmapCache:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/MemoryCache;->sHardBitmapCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    monitor-exit v1

    .line 86
    :cond_0
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

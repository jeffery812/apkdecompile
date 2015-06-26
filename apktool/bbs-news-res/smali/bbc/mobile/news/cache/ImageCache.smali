.class public Lbbc/mobile/news/cache/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final USE_SOFT_REFERENCES:Z = true

.field private static hardCache:Lbbc/mobile/news/cache/LRUImageCache; = null

.field private static mCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbbc/mobile/news/cache/TrackingSoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mImageCacheEnabled:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lbbc/mobile/news/cache/ImageCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/cache/ImageCache;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbbc/mobile/news/cache/ImageCache;->mCache:Ljava/util/HashMap;

    .line 29
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "key"

    .prologue
    .line 35
    sget-object v2, Lbbc/mobile/news/cache/ImageCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v2, Lbbc/mobile/news/cache/ImageCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/cache/TrackingSoftReference;

    .line 40
    .local v1, bitmapRef:Lbbc/mobile/news/cache/TrackingSoftReference;,"Lbbc/mobile/news/cache/TrackingSoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_1

    .line 42
    sget-object v2, Lbbc/mobile/news/cache/ImageCache;->TAG:Ljava/lang/String;

    const-string v3, "soft reference found OK!"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1}, Lbbc/mobile/news/cache/TrackingSoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 46
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 47
    sget-object v2, Lbbc/mobile/news/cache/ImageCache;->TAG:Ljava/lang/String;

    const-string v3, "bitmap found in reference!"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 49
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    sget-object v2, Lbbc/mobile/news/cache/ImageCache;->TAG:Ljava/lang/String;

    const-string v3, "bitmap has been GC\'ed"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    sget-object v2, Lbbc/mobile/news/cache/ImageCache;->TAG:Ljava/lang/String;

    const-string v3, "soft reference NOT FOUND"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 68
    new-instance v0, Lbbc/mobile/news/cache/TrackingSoftReference;

    invoke-direct {v0, p2}, Lbbc/mobile/news/cache/TrackingSoftReference;-><init>(Ljava/lang/Object;)V

    .line 69
    .local v0, softRef:Lbbc/mobile/news/cache/TrackingSoftReference;,"Lbbc/mobile/news/cache/TrackingSoftReference<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0, p1}, Lbbc/mobile/news/cache/TrackingSoftReference;->setTrackObject(Ljava/lang/Object;)V

    .line 70
    sget-object v1, Lbbc/mobile/news/cache/ImageCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

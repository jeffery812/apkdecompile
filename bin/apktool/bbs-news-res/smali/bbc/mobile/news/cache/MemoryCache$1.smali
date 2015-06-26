.class Lbbc/mobile/news/cache/MemoryCache$1;
.super Ljava/util/LinkedHashMap;
.source "MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/cache/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/net/URL;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1d85601e4c1abefbL


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/cache/MemoryCache;


# direct methods
.method constructor <init>(Lbbc/mobile/news/cache/MemoryCache;IFZ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/cache/MemoryCache$1;->this$0:Lbbc/mobile/news/cache/MemoryCache;

    .line 20
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/net/URL;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/net/URL;Landroid/graphics/Bitmap;>;"
    invoke-virtual {p0}, Lbbc/mobile/news/cache/MemoryCache$1;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 29
    invoke-static {}, Lbbc/mobile/news/cache/MemoryCache;->access$0()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

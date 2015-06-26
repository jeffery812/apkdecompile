.class public Lbbc/mobile/news/util/BitmapCacheOptimizer;
.super Ljava/lang/Thread;
.source "BitmapCacheOptimizer.java"


# static fields
.field private static final CACHE_LOWER_LIMIT:I = 0x200000

.field private static final CACHE_UPPER_LIMIT:I = 0x700000

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbbc/mobile/news/util/BitmapCacheOptimizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/util/BitmapCacheOptimizer;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "BitmapCacheOptimizer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private final clearCache()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 54
    new-instance v2, Ljava/io/File;

    const/4 v6, 0x2

    invoke-static {v6}, Lbbc/mobile/news/webclient/WebClient;->getCacheDir(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v2, directory:Ljava/io/File;
    const-wide/16 v0, 0x0

    .line 57
    .local v0, currentSize:J
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 59
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_0

    .line 60
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v5, filesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v8, v4

    move v6, v7

    :goto_0
    if-lt v6, v8, :cond_1

    .line 73
    new-instance v6, Lbbc/mobile/news/util/BitmapCacheOptimizer$1;

    invoke-direct {v6, p0}, Lbbc/mobile/news/util/BitmapCacheOptimizer$1;-><init>(Lbbc/mobile/news/util/BitmapCacheOptimizer;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 96
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #filesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_0
    return-void

    .line 61
    .restart local v4       #files:[Ljava/io/File;
    .restart local v5       #filesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_1
    aget-object v3, v4, v6

    .line 62
    .local v3, file:Ljava/io/File;
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v0, v10

    .line 61
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 86
    .end local v3           #file:Ljava/io/File;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 87
    .restart local v3       #file:Ljava/io/File;
    sget-object v8, Lbbc/mobile/news/util/BitmapCacheOptimizer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " current: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " target: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/high16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lbbc/mobile/news/helper/BBCLog;->ii(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const-wide/32 v8, 0x200000

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    sub-long/2addr v0, v8

    .line 92
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public static final getCacheSize()J
    .locals 10

    .prologue
    .line 24
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x2

    invoke-static {v3}, Lbbc/mobile/news/webclient/WebClient;->getCacheDir(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, directory:Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 27
    .local v4, size:J
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 30
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 31
    array-length v6, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v6, :cond_1

    .line 37
    .end local v2           #files:[Ljava/io/File;
    :cond_0
    return-wide v4

    .line 31
    .restart local v2       #files:[Ljava/io/File;
    :cond_1
    aget-object v1, v2, v3

    .line 32
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 31
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static final isCacheOverLimit()Z
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Lbbc/mobile/news/util/BitmapCacheOptimizer;->getCacheSize()J

    move-result-wide v0

    const-wide/32 v2, 0x700000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lbbc/mobile/news/util/BitmapCacheOptimizer;->clearCache()V

    .line 50
    return-void
.end method

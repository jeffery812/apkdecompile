.class public Lbbc/mobile/news/webclient/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# static fields
.field private static final LOGGING:Z

.field private static final TAG:Ljava/lang/String;

.field private static final mMemoryCache:Lbbc/mobile/news/cache/ImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lbbc/mobile/news/webclient/BitmapManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/webclient/BitmapManager;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Lbbc/mobile/news/cache/ImageCache;

    invoke-direct {v0}, Lbbc/mobile/news/cache/ImageCache;-><init>()V

    sput-object v0, Lbbc/mobile/news/webclient/BitmapManager;->mMemoryCache:Lbbc/mobile/news/cache/ImageCache;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final downloadBitmapFromNetwork(Landroid/content/Context;Ljava/net/URI;)Z
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    .line 34
    new-instance v6, Lbbc/mobile/news/webclient/WebClient;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v9}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 36
    .local v6, webClient:Lbbc/mobile/news/webclient/WebClient;
    invoke-static {v9}, Lbbc/mobile/news/webclient/WebClient;->getCacheDir(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, cacheDir:Ljava/lang/String;
    invoke-virtual {v6}, Lbbc/mobile/news/webclient/WebClient;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, uid:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 41
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .local v2, outputFile:Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 46
    .local v4, result:J
    :try_start_0
    const-string v8, "NETWORKREQUEST-image"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "url: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lbbc/mobile/news/webclient/BitmapManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, p0, v2, v8, v9}, Lbbc/mobile/news/webclient/WebClient;->downloadFileToDisk(Landroid/content/Context;Ljava/io/File;Lbbc/mobile/news/webclient/WebClient$OnProgressListener;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 52
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    .line 58
    .end local v2           #outputFile:Ljava/io/File;
    .end local v4           #result:J
    :cond_0
    :goto_1
    return v7

    .line 48
    .restart local v2       #outputFile:Ljava/io/File;
    .restart local v4       #result:J
    :catch_0
    move-exception v1

    .line 49
    .local v1, exception:Ljava/io/IOException;
    sget-object v8, Lbbc/mobile/news/webclient/BitmapManager;->TAG:Ljava/lang/String;

    const-string v9, "Exception thrown when downloading file to disk"

    invoke-static {v8, v9, v1}, Lbbc/mobile/news/webclient/BitmapManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 55
    .end local v1           #exception:Ljava/io/IOException;
    .end local v2           #outputFile:Ljava/io/File;
    .end local v4           #result:J
    :cond_1
    sget-object v8, Lbbc/mobile/news/webclient/BitmapManager;->TAG:Ljava/lang/String;

    const-string v9, "getSizedBitampFromDisk() cache directory, uid or webClient is null... returning null"

    invoke-static {v8, v9}, Lbbc/mobile/news/webclient/BitmapManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static final getSizedBitmap(Ljava/net/URI;III)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "uri"
    .parameter "strategy"
    .parameter "widthDimentionResID"
    .parameter "heightDimentionResID"

    .prologue
    .line 110
    new-instance v6, Lbbc/mobile/news/webclient/WebClient;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 111
    .local v6, webClient:Lbbc/mobile/news/webclient/WebClient;
    invoke-virtual {v6}, Lbbc/mobile/news/webclient/WebClient;->getFile()Ljava/io/File;

    move-result-object v2

    .line 112
    .local v2, file:Ljava/io/File;
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 114
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 143
    :cond_1
    :goto_0
    return-object v0

    .line 117
    :cond_2
    const/4 v0, 0x0

    .line 120
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 121
    .local v5, resources:Landroid/content/res/Resources;
    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 122
    .local v7, width:I
    invoke-virtual {v5, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 124
    .local v3, height:I
    invoke-static {v2}, Lbbc/mobile/news/webclient/WebClient;->existsInCache(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 125
    invoke-static {v2, v7, v3}, Lbbc/mobile/news/util/ImageUtils;->getSizedBitmapFromDisk(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    sget-object v8, Lbbc/mobile/news/webclient/BitmapManager;->mMemoryCache:Lbbc/mobile/news/cache/ImageCache;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lbbc/mobile/news/cache/ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v3           #height:I
    .end local v5           #resources:Landroid/content/res/Resources;
    .end local v7           #width:I
    :catch_0
    move-exception v4

    .line 136
    .local v4, resNotFoundException:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 139
    .end local v4           #resNotFoundException:Landroid/content/res/Resources$NotFoundException;
    :goto_1
    if-eqz v0, :cond_1

    .line 140
    sget-object v8, Lbbc/mobile/news/webclient/BitmapManager;->mMemoryCache:Lbbc/mobile/news/cache/ImageCache;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lbbc/mobile/news/cache/ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 133
    .restart local v3       #height:I
    .restart local v5       #resources:Landroid/content/res/Resources;
    .restart local v7       #width:I
    :cond_3
    :try_start_1
    invoke-static {v1, p0, v7, v3}, Lbbc/mobile/news/webclient/BitmapManager;->getSizedBitmapFromNetwork(Landroid/content/Context;Ljava/net/URI;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static final getSizedBitmapFromDisk(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "file"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 105
    invoke-static {p0, p1, p2}, Lbbc/mobile/news/util/ImageUtils;->getSizedBitmapFromDisk(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final getSizedBitmapFromNetwork(Landroid/content/Context;Ljava/net/URI;II)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "uri"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x0

    .line 63
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v8, v9

    .line 101
    :goto_0
    return-object v8

    .line 67
    :cond_1
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 66
    check-cast v8, Landroid/net/ConnectivityManager;

    .line 68
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 71
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-nez v2, :cond_2

    move-object v8, v9

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v9

    .line 74
    goto :goto_0

    .line 78
    :cond_3
    :try_start_0
    new-instance v7, Lbbc/mobile/news/webclient/WebClient;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    invoke-direct {v7, v8, v10}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v7, webClient:Lbbc/mobile/news/webclient/WebClient;
    const/4 v8, 0x2

    invoke-static {v8}, Lbbc/mobile/news/webclient/WebClient;->getCacheDir(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, cacheDir:Ljava/lang/String;
    invoke-virtual {v7}, Lbbc/mobile/news/webclient/WebClient;->getUid()Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, uid:Ljava/lang/String;
    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    .line 85
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v3, outputFile:Ljava/io/File;
    const-string v8, "NETWORKREQUEST-image"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "url: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lbbc/mobile/news/webclient/BitmapManager;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, p0, v3, v8, v10}, Lbbc/mobile/news/webclient/WebClient;->downloadFileToDisk(Landroid/content/Context;Ljava/io/File;Lbbc/mobile/news/webclient/WebClient$OnProgressListener;Ljava/lang/String;)J

    move-result-wide v4

    .line 89
    .local v4, result:J
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-eqz v8, :cond_5

    .line 90
    invoke-static {v3, p2, p3}, Lbbc/mobile/news/util/ImageUtils;->getSizedBitmapFromDisk(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_0

    .line 94
    .end local v3           #outputFile:Ljava/io/File;
    .end local v4           #result:J
    :cond_4
    sget-object v8, Lbbc/mobile/news/webclient/BitmapManager;->TAG:Ljava/lang/String;

    const-string v10, "getSizedBitampFromDisk() cache directory, uid or webClient is null... returning null"

    invoke-static {v8, v10}, Lbbc/mobile/news/webclient/BitmapManager;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #cacheDir:Ljava/lang/String;
    .end local v6           #uid:Ljava/lang/String;
    .end local v7           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :cond_5
    :goto_1
    move-object v8, v9

    .line 101
    goto :goto_0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, ioException:Ljava/io/IOException;
    sget-object v8, Lbbc/mobile/news/webclient/BitmapManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v1}, Lbbc/mobile/news/webclient/BitmapManager;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static final isInDiskCache(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 156
    new-instance v0, Lbbc/mobile/news/webclient/WebClient;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 157
    .local v0, webClient:Lbbc/mobile/news/webclient/WebClient;
    invoke-virtual {v0}, Lbbc/mobile/news/webclient/WebClient;->existsInCache()Z

    move-result v1

    return v1
.end method

.method public static isInDiskCache(Ljava/net/URI;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbbc/mobile/news/webclient/BitmapManager;->isInDiskCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isInDiskCache(Ljava/net/URL;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbbc/mobile/news/webclient/BitmapManager;->isInDiskCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 164
    return-void
.end method

.method private static final log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 169
    return-void
.end method

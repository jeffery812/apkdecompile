.class public Lbbc/mobile/news/feed/ImageHandler;
.super Lbbc/mobile/news/feed/BackendHandler;
.source "ImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/feed/ImageHandler$MessageParams;
    }
.end annotation


# static fields
.field private static final DISK_HANDLER:I = 0x1

.field protected static final GET_IMAGE:I = 0x2

.field private static final NETWORK_HANDLER:I = 0x2

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHandlerType:I

.field private mMemoryCache:Lbbc/mobile/news/cache/MemoryCache;

.field private mSecondaryHandler:Lbbc/mobile/news/feed/ImageHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lbbc/mobile/news/feed/ImageHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/feed/ImageHandler;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-Disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/feed/BackendHandler;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lbbc/mobile/news/cache/MemoryCache;

    invoke-direct {v0}, Lbbc/mobile/news/cache/MemoryCache;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mMemoryCache:Lbbc/mobile/news/cache/MemoryCache;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mHandlerType:I

    .line 38
    new-instance v0, Lbbc/mobile/news/feed/ImageHandler;

    iget-object v1, p0, Lbbc/mobile/news/feed/ImageHandler;->mMemoryCache:Lbbc/mobile/news/cache/MemoryCache;

    invoke-direct {v0, p1, v1}, Lbbc/mobile/news/feed/ImageHandler;-><init>(Ljava/lang/String;Lbbc/mobile/news/cache/MemoryCache;)V

    iput-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mSecondaryHandler:Lbbc/mobile/news/feed/ImageHandler;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lbbc/mobile/news/cache/MemoryCache;)V
    .locals 2
    .parameter "name"
    .parameter "memoryCache"

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-Network"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/feed/BackendHandler;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lbbc/mobile/news/feed/ImageHandler;->mMemoryCache:Lbbc/mobile/news/cache/MemoryCache;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mHandlerType:I

    .line 46
    return-void
.end method

.method private declared-synchronized getBitmap(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;Ljava/io/File;)V
    .locals 7
    .parameter "imageView"
    .parameter "url"
    .parameter "file"

    .prologue
    .line 145
    monitor-enter p0

    if-nez p2, :cond_1

    .line 181
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 149
    :cond_1
    :try_start_0
    iget-object v5, p0, Lbbc/mobile/news/feed/ImageHandler;->mMemoryCache:Lbbc/mobile/news/cache/MemoryCache;

    invoke-virtual {v5, p2}, Lbbc/mobile/news/cache/MemoryCache;->getBitmap(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 151
    iget-object v5, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    .line 153
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 155
    .local v3, resources:Landroid/content/res/Resources;
    sget v5, Lbbc/mobile/news/R$dimen;->thumbnail_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 156
    .local v4, width:I
    sget v5, Lbbc/mobile/news/R$dimen;->thumbnail_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 160
    .local v2, height:I
    iget v5, p0, Lbbc/mobile/news/feed/ImageHandler;->mHandlerType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    if-eqz p3, :cond_3

    .line 162
    invoke-static {p3, v4, v2}, Lbbc/mobile/news/webclient/BitmapManager;->getSizedBitmapFromDisk(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 175
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #height:I
    .end local v3           #resources:Landroid/content/res/Resources;
    .end local v4           #width:I
    :cond_2
    :goto_1
    iget-object v5, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 178
    iget-object v5, p0, Lbbc/mobile/news/feed/ImageHandler;->mMemoryCache:Lbbc/mobile/news/cache/MemoryCache;

    iget-object v6, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, p2, v6}, Lbbc/mobile/news/cache/MemoryCache;->putBitmap(Ljava/net/URL;Landroid/graphics/Bitmap;)V

    .line 179
    iget-object v5, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, v5}, Lbbc/mobile/news/feed/ImageHandler;->updateImage(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 167
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #height:I
    .restart local v3       #resources:Landroid/content/res/Resources;
    .restart local v4       #width:I
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-static {v0, v5, v4, v2}, Lbbc/mobile/news/webclient/BitmapManager;->getSizedBitmapFromNetwork(Landroid/content/Context;Ljava/net/URI;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, e:Ljava/net/URISyntaxException;
    const/4 v5, 0x0

    :try_start_2
    iput-object v5, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private isValidRequest(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;)Z
    .locals 1
    .parameter "imageView"
    .parameter "requestURL"

    .prologue
    .line 201
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateImage(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "imageView"
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/feed/ImageHandler;->isValidRequest(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v0, v1}, Lbbc/mobile/news/view/ImageViewCallback;->updateImage(Ljava/net/URL;Landroid/graphics/Bitmap;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clearBitmapRequests()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImage(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;Z)V
    .locals 5
    .parameter "imageView"
    .parameter "imageUrl"
    .parameter "threadSafe"

    .prologue
    .line 185
    iget-object v2, p0, Lbbc/mobile/news/feed/ImageHandler;->mMemoryCache:Lbbc/mobile/news/cache/MemoryCache;

    invoke-virtual {v2, p2}, Lbbc/mobile/news/cache/MemoryCache;->getBitmap(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    .local v0, cachedBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 189
    invoke-interface {p1, p2, v0, p3}, Lbbc/mobile/news/view/ImageViewCallback;->updateImage(Ljava/net/URL;Landroid/graphics/Bitmap;Z)Z

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v2, p0, Lbbc/mobile/news/feed/ImageHandler;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 193
    invoke-interface {p1, p3}, Lbbc/mobile/news/view/ImageViewCallback;->showPlaceholder(Z)V

    .line 194
    new-instance v1, Lbbc/mobile/news/feed/ImageHandler$MessageParams;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, p0, v2, p2}, Lbbc/mobile/news/feed/ImageHandler$MessageParams;-><init>(Lbbc/mobile/news/feed/ImageHandler;Ljava/lang/ref/WeakReference;Ljava/net/URL;)V

    .line 195
    .local v1, params:Lbbc/mobile/news/feed/ImageHandler$MessageParams;
    iget-object v2, p0, Lbbc/mobile/news/feed/ImageHandler;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lbbc/mobile/news/feed/ImageHandler;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13
    .parameter "message"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 57
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    :pswitch_0
    return v12

    .line 67
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lbbc/mobile/news/feed/ImageHandler$MessageParams;

    .line 68
    .local v4, params:Lbbc/mobile/news/feed/ImageHandler$MessageParams;
    #getter for: Lbbc/mobile/news/feed/ImageHandler$MessageParams;->mImageViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lbbc/mobile/news/feed/ImageHandler$MessageParams;->access$0(Lbbc/mobile/news/feed/ImageHandler$MessageParams;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbbc/mobile/news/view/ImageViewCallback;

    .line 69
    .local v2, imageView:Lbbc/mobile/news/view/ImageViewCallback;
    #getter for: Lbbc/mobile/news/feed/ImageHandler$MessageParams;->mUrl:Ljava/net/URL;
    invoke-static {v4}, Lbbc/mobile/news/feed/ImageHandler$MessageParams;->access$1(Lbbc/mobile/news/feed/ImageHandler$MessageParams;)Ljava/net/URL;

    move-result-object v6

    .line 73
    .local v6, url:Ljava/net/URL;
    iput-object v11, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 75
    invoke-direct {p0, v2, v6}, Lbbc/mobile/news/feed/ImageHandler;->isValidRequest(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    iget-object v7, p0, Lbbc/mobile/news/feed/ImageHandler;->mMemoryCache:Lbbc/mobile/news/cache/MemoryCache;

    invoke-virtual {v7, v6}, Lbbc/mobile/news/cache/MemoryCache;->getBitmap(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    .line 79
    iget-object v7, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_3

    .line 83
    :try_start_0
    new-instance v7, Lbbc/mobile/news/webclient/WebClient;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7}, Lbbc/mobile/news/webclient/WebClient;->getFile()Ljava/io/File;

    move-result-object v1

    .line 85
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 87
    invoke-direct {p0, v2, v6, v1}, Lbbc/mobile/news/feed/ImageHandler;->getBitmap(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 106
    .local v0, exception:Ljava/lang/OutOfMemoryError;
    iget-object v7, p0, Lbbc/mobile/news/feed/ImageHandler;->mMemoryCache:Lbbc/mobile/news/cache/MemoryCache;

    invoke-virtual {v7}, Lbbc/mobile/news/cache/MemoryCache;->clearCache()V

    .line 107
    iput-object v11, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 90
    .end local v0           #exception:Ljava/lang/OutOfMemoryError;
    .restart local v1       #file:Ljava/io/File;
    :cond_1
    :try_start_1
    iget v7, p0, Lbbc/mobile/news/feed/ImageHandler;->mHandlerType:I

    if-ne v7, v12, :cond_2

    .line 93
    new-instance v3, Lbbc/mobile/news/feed/ImageHandler$MessageParams;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, p0, v7, v6}, Lbbc/mobile/news/feed/ImageHandler$MessageParams;-><init>(Lbbc/mobile/news/feed/ImageHandler;Ljava/lang/ref/WeakReference;Ljava/net/URL;)V

    .line 94
    .local v3, newparams:Lbbc/mobile/news/feed/ImageHandler$MessageParams;
    iget-object v7, p0, Lbbc/mobile/news/feed/ImageHandler;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 95
    .local v5, proxyedMessage:Landroid/os/Message;
    iget-object v7, p0, Lbbc/mobile/news/feed/ImageHandler;->mSecondaryHandler:Lbbc/mobile/news/feed/ImageHandler;

    invoke-virtual {v7}, Lbbc/mobile/news/feed/ImageHandler;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 96
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 98
    .end local v3           #newparams:Lbbc/mobile/news/feed/ImageHandler$MessageParams;
    .end local v5           #proxyedMessage:Landroid/os/Message;
    :cond_2
    iget v7, p0, Lbbc/mobile/news/feed/ImageHandler;->mHandlerType:I

    if-ne v7, v10, :cond_0

    .line 100
    const/4 v7, 0x0

    invoke-direct {p0, v2, v6, v7}, Lbbc/mobile/news/feed/ImageHandler;->getBitmap(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    .end local v1           #file:Ljava/io/File;
    :cond_3
    iget-object v7, p0, Lbbc/mobile/news/feed/ImageHandler;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v6, v7}, Lbbc/mobile/news/feed/ImageHandler;->updateImage(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mMemoryCache:Lbbc/mobile/news/cache/MemoryCache;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mMemoryCache:Lbbc/mobile/news/cache/MemoryCache;

    invoke-virtual {v0}, Lbbc/mobile/news/cache/MemoryCache;->clearCache()V

    .line 228
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mSecondaryHandler:Lbbc/mobile/news/feed/ImageHandler;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mSecondaryHandler:Lbbc/mobile/news/feed/ImageHandler;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/ImageHandler;->clearBitmapRequests()V

    .line 230
    iget-object v0, p0, Lbbc/mobile/news/feed/ImageHandler;->mSecondaryHandler:Lbbc/mobile/news/feed/ImageHandler;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/ImageHandler;->quit()V

    .line 233
    :cond_1
    invoke-super {p0}, Lbbc/mobile/news/feed/BackendHandler;->quit()V

    .line 234
    return-void
.end method

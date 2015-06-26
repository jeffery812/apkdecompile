.class public Lorg/springframework/core/io/AssetResource;
.super Lorg/springframework/core/io/AbstractResource;
.source "AssetResource.java"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .parameter "assetManager"
    .parameter "fileName"

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/springframework/core/io/AbstractResource;-><init>()V

    .line 32
    const-string v0, "assetManager must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    const-string v0, "fileName must not be null"

    invoke-static {p2, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/springframework/core/io/AssetResource;->assetManager:Landroid/content/res/AssetManager;

    .line 35
    iput-object p2, p0, Lorg/springframework/core/io/AssetResource;->fileName:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lorg/springframework/core/io/AssetResource;->assetManager:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lorg/springframework/core/io/AssetResource;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 80
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lorg/springframework/core/io/AssetResource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/springframework/core/io/AssetResource;->fileName:Ljava/lang/String;

    check-cast p1, Lorg/springframework/core/io/AssetResource;

    .end local p1
    iget-object v1, p1, Lorg/springframework/core/io/AssetResource;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exists()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 44
    :try_start_0
    iget-object v3, p0, Lorg/springframework/core/io/AssetResource;->assetManager:Landroid/content/res/AssetManager;

    iget-object v4, p0, Lorg/springframework/core/io/AssetResource;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    .local v1, inputStream:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 46
    const/4 v2, 0x1

    .line 51
    .end local v1           #inputStream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asset ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/springframework/core/io/AssetResource;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, Lorg/springframework/core/io/AssetResource;->assetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lorg/springframework/core/io/AssetResource;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 69
    .local v0, inputStream:Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 70
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/springframework/core/io/AssetResource;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be opened because it does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/springframework/core/io/AssetResource;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

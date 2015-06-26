.class public Lorg/springframework/core/io/FileSystemResource;
.super Lorg/springframework/core/io/AbstractResource;
.source "FileSystemResource.java"

# interfaces
.implements Lorg/springframework/core/io/WritableResource;


# instance fields
.field private final file:Ljava/io/File;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/springframework/core/io/AbstractResource;-><init>()V

    .line 57
    const-string v0, "File must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->path:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/springframework/core/io/AbstractResource;-><init>()V

    .line 72
    const-string v0, "Path must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    .line 74
    invoke-static {p1}, Lorg/springframework/util/StringUtils;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->path:Ljava/lang/String;

    .line 75
    return-void
.end method


# virtual methods
.method public createRelative(Ljava/lang/String;)Lorg/springframework/core/io/Resource;
    .locals 2
    .parameter "relativePath"

    .prologue
    .line 146
    iget-object v1, p0, Lorg/springframework/core/io/FileSystemResource;->path:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/springframework/util/StringUtils;->applyRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, pathToUse:Ljava/lang/String;
    new-instance v1, Lorg/springframework/core/io/FileSystemResource;

    invoke-direct {v1, v0}, Lorg/springframework/core/io/FileSystemResource;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 194
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lorg/springframework/core/io/FileSystemResource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->path:Ljava/lang/String;

    check-cast p1, Lorg/springframework/core/io/FileSystemResource;

    .end local p1
    iget-object v1, p1, Lorg/springframework/core/io/FileSystemResource;->path:Ljava/lang/String;

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
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/springframework/core/io/FileSystemResource;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

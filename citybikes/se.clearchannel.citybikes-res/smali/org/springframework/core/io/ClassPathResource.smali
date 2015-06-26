.class public Lorg/springframework/core/io/ClassPathResource;
.super Lorg/springframework/core/io/AbstractFileResolvingResource;
.source "ClassPathResource.java"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 62
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-direct {p0, p1, v0}, Lorg/springframework/core/io/ClassPathResource;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;-><init>()V

    .line 93
    const-string v0, "Path must not be null"

    invoke-static {p1, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lorg/springframework/util/StringUtils;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 2
    .parameter "path"
    .parameter "classLoader"

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;-><init>()V

    .line 75
    const-string v1, "Path must not be null"

    invoke-static {p1, v1}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lorg/springframework/util/StringUtils;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, pathToUse:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    iput-object v0, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    .line 81
    if-eqz p2, :cond_1

    .end local p2
    :goto_0
    iput-object p2, p0, Lorg/springframework/core/io/ClassPathResource;->classLoader:Ljava/lang/ClassLoader;

    .line 82
    return-void

    .line 81
    .restart local p2
    :cond_1
    invoke-static {}, Lorg/springframework/util/ClassUtils;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .locals 1
    .parameter "path"
    .parameter "classLoader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/springframework/core/io/AbstractFileResolvingResource;-><init>()V

    .line 106
    invoke-static {p1}, Lorg/springframework/util/StringUtils;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lorg/springframework/core/io/ClassPathResource;->classLoader:Ljava/lang/ClassLoader;

    .line 108
    iput-object p3, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    .line 109
    return-void
.end method


# virtual methods
.method public createRelative(Ljava/lang/String;)Lorg/springframework/core/io/Resource;
    .locals 4
    .parameter "relativePath"

    .prologue
    .line 192
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/springframework/util/StringUtils;->applyRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, pathToUse:Ljava/lang/String;
    new-instance v1, Lorg/springframework/core/io/ClassPathResource;

    iget-object v2, p0, Lorg/springframework/core/io/ClassPathResource;->classLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    invoke-direct {v1, v0, v2, v3}, Lorg/springframework/core/io/ClassPathResource;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    if-ne p1, p0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    instance-of v3, p1, Lorg/springframework/core/io/ClassPathResource;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 232
    check-cast v0, Lorg/springframework/core/io/ClassPathResource;

    .line 233
    .local v0, otherRes:Lorg/springframework/core/io/ClassPathResource;
    iget-object v3, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    iget-object v4, v0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/springframework/core/io/ClassPathResource;->classLoader:Ljava/lang/ClassLoader;

    iget-object v4, v0, Lorg/springframework/core/io/ClassPathResource;->classLoader:Ljava/lang/ClassLoader;

    invoke-static {v3, v4}, Lorg/springframework/util/ObjectUtils;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    iget-object v4, v0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    invoke-static {v3, v4}, Lorg/springframework/util/ObjectUtils;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #otherRes:Lorg/springframework/core/io/ClassPathResource;
    :cond_3
    move v1, v2

    .line 237
    goto :goto_0
.end method

.method public exists()Z
    .locals 3

    .prologue
    .line 135
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 141
    .local v0, url:Ljava/net/URL;
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 139
    .end local v0           #url:Ljava/net/URL;
    :cond_0
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .restart local v0       #url:Ljava/net/URL;
    goto :goto_0

    .line 141
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/springframework/core/io/ClassPathResource;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/springframework/core/io/ClassPathResource;->classLoader:Ljava/lang/ClassLoader;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class path resource ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    invoke-static {v1}, Lorg/springframework/util/ClassUtils;->classPackageAsResourcePath(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    invoke-static {v0}, Lorg/springframework/util/StringUtils;->getFilename(Ljava/lang/String;)Ljava/lang/String;

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
    .line 151
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 157
    .local v0, is:Ljava/io/InputStream;
    :goto_0
    if-nez v0, :cond_1

    .line 158
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/springframework/core/io/ClassPathResource;->getDescription()Ljava/lang/String;

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

    .line 155
    .end local v0           #is:Ljava/io/InputStream;
    :cond_0
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 161
    :cond_1
    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->clazz:Ljava/lang/Class;

    iget-object v2, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 178
    .local v0, url:Ljava/net/URL;
    :goto_0
    if-nez v0, :cond_1

    .line 179
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/springframework/core/io/ClassPathResource;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cannot be resolved to URL because it does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    .end local v0           #url:Ljava/net/URL;
    :cond_0
    iget-object v1, p0, Lorg/springframework/core/io/ClassPathResource;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .restart local v0       #url:Ljava/net/URL;
    goto :goto_0

    .line 182
    :cond_1
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/springframework/core/io/ClassPathResource;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

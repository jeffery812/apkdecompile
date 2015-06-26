.class public Lorg/springframework/core/io/InputStreamResource;
.super Lorg/springframework/core/io/AbstractResource;
.source "InputStreamResource.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final inputStream:Ljava/io/InputStream;

.field private read:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "inputStream"

    .prologue
    .line 54
    const-string v0, "resource loaded through InputStream"

    invoke-direct {p0, p1, v0}, Lorg/springframework/core/io/InputStreamResource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "inputStream"
    .parameter "description"

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/springframework/core/io/AbstractResource;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/springframework/core/io/InputStreamResource;->read:Z

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lorg/springframework/core/io/InputStreamResource;->inputStream:Ljava/io/InputStream;

    .line 67
    if-eqz p2, :cond_1

    .end local p2
    :goto_0
    iput-object p2, p0, Lorg/springframework/core/io/InputStreamResource;->description:Ljava/lang/String;

    .line 68
    return-void

    .line 67
    .restart local p2
    :cond_1
    const-string p2, ""

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 113
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lorg/springframework/core/io/InputStreamResource;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/springframework/core/io/InputStreamResource;

    .end local p1
    iget-object v0, p1, Lorg/springframework/core/io/InputStreamResource;->inputStream:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/springframework/core/io/InputStreamResource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/springframework/core/io/InputStreamResource;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/springframework/core/io/InputStreamResource;->read:Z

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InputStream has already been read - do not use InputStreamResource if a stream needs to be read multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/springframework/core/io/InputStreamResource;->read:Z

    .line 97
    iget-object v0, p0, Lorg/springframework/core/io/InputStreamResource;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/springframework/core/io/InputStreamResource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

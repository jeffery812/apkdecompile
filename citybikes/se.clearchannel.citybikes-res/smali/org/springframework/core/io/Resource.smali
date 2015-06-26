.class public interface abstract Lorg/springframework/core/io/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Lorg/springframework/core/io/InputStreamSource;


# virtual methods
.method public abstract contentLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createRelative(Ljava/lang/String;)Lorg/springframework/core/io/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract exists()Z
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getFile()Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFilename()Ljava/lang/String;
.end method

.method public abstract getURI()Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getURL()Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isReadable()Z
.end method

.method public abstract lastModified()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

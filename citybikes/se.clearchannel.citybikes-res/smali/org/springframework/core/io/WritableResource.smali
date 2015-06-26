.class public interface abstract Lorg/springframework/core/io/WritableResource;
.super Ljava/lang/Object;
.source "WritableResource.java"

# interfaces
.implements Lorg/springframework/core/io/Resource;


# virtual methods
.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isWritable()Z
.end method

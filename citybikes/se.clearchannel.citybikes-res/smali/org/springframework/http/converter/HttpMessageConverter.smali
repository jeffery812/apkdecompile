.class public interface abstract Lorg/springframework/http/converter/HttpMessageConverter;
.super Ljava/lang/Object;
.source "HttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract canRead(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/springframework/http/MediaType;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract canWrite(Ljava/lang/Class;Lorg/springframework/http/MediaType;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/springframework/http/MediaType;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract getSupportedMediaTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/http/MediaType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract read(Ljava/lang/Class;Lorg/springframework/http/HttpInputMessage;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/springframework/http/HttpInputMessage;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotReadableException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/lang/Object;Lorg/springframework/http/MediaType;Lorg/springframework/http/HttpOutputMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/springframework/http/MediaType;",
            "Lorg/springframework/http/HttpOutputMessage;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/springframework/http/converter/HttpMessageNotWritableException;
        }
    .end annotation
.end method

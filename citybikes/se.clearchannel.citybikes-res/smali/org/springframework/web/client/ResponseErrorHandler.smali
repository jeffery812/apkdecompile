.class public interface abstract Lorg/springframework/web/client/ResponseErrorHandler;
.super Ljava/lang/Object;
.source "ResponseErrorHandler.java"


# virtual methods
.method public abstract handleError(Lorg/springframework/http/client/ClientHttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract hasError(Lorg/springframework/http/client/ClientHttpResponse;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

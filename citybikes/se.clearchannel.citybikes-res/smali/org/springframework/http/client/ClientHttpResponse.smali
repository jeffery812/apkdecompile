.class public interface abstract Lorg/springframework/http/client/ClientHttpResponse;
.super Ljava/lang/Object;
.source "ClientHttpResponse.java"

# interfaces
.implements Lorg/springframework/http/HttpInputMessage;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getRawStatusCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getStatusCode()Lorg/springframework/http/HttpStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getStatusText()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

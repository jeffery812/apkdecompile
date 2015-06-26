.class public interface abstract Lorg/springframework/http/client/ClientHttpRequest;
.super Ljava/lang/Object;
.source "ClientHttpRequest.java"

# interfaces
.implements Lorg/springframework/http/HttpRequest;
.implements Lorg/springframework/http/HttpOutputMessage;


# virtual methods
.method public abstract execute()Lorg/springframework/http/client/ClientHttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

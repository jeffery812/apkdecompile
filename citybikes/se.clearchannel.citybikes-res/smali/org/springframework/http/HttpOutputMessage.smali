.class public interface abstract Lorg/springframework/http/HttpOutputMessage;
.super Ljava/lang/Object;
.source "HttpOutputMessage.java"

# interfaces
.implements Lorg/springframework/http/HttpMessage;


# virtual methods
.method public abstract getBody()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

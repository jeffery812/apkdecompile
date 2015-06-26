.class public interface abstract Lorg/springframework/http/HttpInputMessage;
.super Ljava/lang/Object;
.source "HttpInputMessage.java"

# interfaces
.implements Lorg/springframework/http/HttpMessage;


# virtual methods
.method public abstract getBody()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.class Lorg/springframework/http/client/SimpleStreamingClientHttpRequest$NonClosingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SimpleStreamingClientHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/http/client/SimpleStreamingClientHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonClosingOutputStream"
.end annotation


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;Lorg/springframework/http/client/SimpleStreamingClientHttpRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lorg/springframework/http/client/SimpleStreamingClientHttpRequest$NonClosingOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    return-void
.end method

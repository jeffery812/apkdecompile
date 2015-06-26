.class public Lorg/springframework/http/converter/HttpMessageConversionException;
.super Lorg/springframework/core/NestedRuntimeException;
.source "HttpMessageConversionException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/springframework/core/NestedRuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/springframework/core/NestedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

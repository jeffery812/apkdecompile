.class public Lorg/springframework/http/converter/HttpMessageNotReadableException;
.super Lorg/springframework/http/converter/HttpMessageConversionException;
.source "HttpMessageNotReadableException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/springframework/http/converter/HttpMessageConversionException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/springframework/http/converter/HttpMessageConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method

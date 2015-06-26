.class public Lorg/springframework/web/client/RestClientException;
.super Lorg/springframework/core/NestedRuntimeException;
.source "RestClientException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/springframework/core/NestedRuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "ex"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/springframework/core/NestedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.class public interface abstract Lorg/springframework/core/ParameterNameDiscoverer;
.super Ljava/lang/Object;
.source "ParameterNameDiscoverer.java"


# virtual methods
.method public abstract getParameterNames(Ljava/lang/reflect/Constructor;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract getParameterNames(Ljava/lang/reflect/Method;)[Ljava/lang/String;
.end method

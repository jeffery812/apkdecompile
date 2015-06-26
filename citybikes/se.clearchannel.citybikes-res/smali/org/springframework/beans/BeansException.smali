.class public abstract Lorg/springframework/beans/BeansException;
.super Lorg/springframework/core/NestedRuntimeException;
.source "BeansException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/springframework/core/NestedRuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/springframework/core/NestedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    instance-of v3, p1, Lorg/springframework/beans/BeansException;

    if-nez v3, :cond_2

    move v1, v2

    .line 63
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 65
    check-cast v0, Lorg/springframework/beans/BeansException;

    .line 66
    .local v0, otherBe:Lorg/springframework/beans/BeansException;
    invoke-virtual {p0}, Lorg/springframework/beans/BeansException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/springframework/beans/BeansException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/springframework/beans/BeansException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v0}, Lorg/springframework/beans/BeansException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/springframework/util/ObjectUtils;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/springframework/beans/BeansException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

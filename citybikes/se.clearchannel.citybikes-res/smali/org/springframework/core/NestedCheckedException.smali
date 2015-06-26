.class public abstract Lorg/springframework/core/NestedCheckedException;
.super Ljava/lang/Exception;
.source "NestedCheckedException.java"


# static fields
.field private static final serialVersionUID:J = 0x628ace4e2e0a523aL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/springframework/core/NestedExceptionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Class;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, exType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 118
    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0}, Lorg/springframework/core/NestedCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 121
    .local v0, cause:Ljava/lang/Throwable;
    if-eq v0, p0, :cond_0

    .line 124
    instance-of v3, v0, Lorg/springframework/core/NestedCheckedException;

    if-eqz v3, :cond_4

    .line 125
    check-cast v0, Lorg/springframework/core/NestedCheckedException;

    .end local v0           #cause:Ljava/lang/Throwable;
    invoke-virtual {v0, p1}, Lorg/springframework/core/NestedCheckedException;->contains(Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0

    .line 135
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 128
    :cond_4
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 130
    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/springframework/core/NestedCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/springframework/core/NestedExceptionUtils;->buildMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMostSpecificCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lorg/springframework/core/NestedCheckedException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 103
    .local v0, rootCause:Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .end local v0           #rootCause:Ljava/lang/Throwable;
    :goto_0
    return-object v0

    .restart local v0       #rootCause:Ljava/lang/Throwable;
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, rootCause:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lorg/springframework/core/NestedCheckedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 87
    .local v0, cause:Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 88
    move-object v1, v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_0
    return-object v1
.end method

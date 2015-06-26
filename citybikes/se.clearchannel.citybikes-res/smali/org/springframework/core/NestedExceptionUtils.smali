.class public abstract Lorg/springframework/core/NestedExceptionUtils;
.super Ljava/lang/Object;
.source "NestedExceptionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 41
    if-eqz p1, :cond_1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, sb:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    const-string v1, "nested exception is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 50
    .end local v0           #sb:Ljava/lang/StringBuilder;
    .end local p0
    :cond_1
    return-object p0
.end method

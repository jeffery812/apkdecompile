.class public Lorg/simpleframework/xml/strategy/CycleException;
.super Lorg/simpleframework/xml/core/PersistenceException;
.source "CycleException.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "text"
    .parameter "list"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "cause"
    .parameter "text"
    .parameter "list"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

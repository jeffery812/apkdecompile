.class public Lorg/simpleframework/xml/core/ValueRequiredException;
.super Lorg/simpleframework/xml/core/PersistenceException;
.source "ValueRequiredException.java"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "text"
    .parameter "list"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "cause"
    .parameter "text"
    .parameter "list"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void
.end method

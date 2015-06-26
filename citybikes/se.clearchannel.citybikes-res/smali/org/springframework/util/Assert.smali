.class public abstract Lorg/springframework/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesNotContain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "textToSearch"
    .parameter "substring"

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Assertion failed] - this String argument must not contain the substring ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/springframework/util/Assert;->doesNotContain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static doesNotContain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "textToSearch"
    .parameter "substring"
    .parameter "message"

    .prologue
    .line 187
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    return-void
.end method

.method public static hasLength(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 149
    const-string v0, "[Assertion failed] - this String argument must have length; it must not be null or empty"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->hasLength(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static hasLength(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .parameter "message"

    .prologue
    .line 136
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasLength(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    return-void
.end method

.method public static hasText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 175
    const-string v0, "[Assertion failed] - this String argument must have text; it must not be null, empty, or blank"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->hasText(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static hasText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .parameter "message"

    .prologue
    .line 162
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    return-void
.end method

.method public static isAssignable(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, superType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, subType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/springframework/util/Assert;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public static isAssignable(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, superType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, subType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "Type to check against must not be null"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not assignable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1
    return-void
.end method

.method public static isInstanceOf(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/springframework/util/Assert;->isInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public static isInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "obj"
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "Type to check against must not be null"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Object of class ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] must be an instance of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 342
    :cond_1
    return-void
.end method

.method public static isNull(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 101
    const-string v0, "[Assertion failed] - the object argument must be null"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->isNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static isNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "message"

    .prologue
    .line 89
    if-eqz p0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    return-void
.end method

.method public static isTrue(Z)V
    .locals 1
    .parameter "expression"

    .prologue
    .line 78
    const-string v0, "[Assertion failed] - this expression must be true"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 79
    return-void
.end method

.method public static isTrue(ZLjava/lang/String;)V
    .locals 1
    .parameter "expression"
    .parameter "message"

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method public static noNullElements([Ljava/lang/Object;)V
    .locals 1
    .parameter "array"

    .prologue
    .line 256
    const-string v0, "[Assertion failed] - this array must not contain any null elements"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->noNullElements([Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public static noNullElements([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .parameter "array"
    .parameter "message"

    .prologue
    .line 239
    if-eqz p0, :cond_1

    .line 240
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 241
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    .line 242
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method public static notEmpty(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const-string v0, "[Assertion failed] - this collection must not be empty: it must contain at least 1 element"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public static notEmpty(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    return-void
.end method

.method public static notEmpty(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    const-string v0, "[Assertion failed] - this map must not be empty; it must contain at least one entry"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->notEmpty(Ljava/util/Map;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public static notEmpty(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-static {p0}, Lorg/springframework/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    return-void
.end method

.method public static notEmpty([Ljava/lang/Object;)V
    .locals 1
    .parameter "array"

    .prologue
    .line 227
    const-string v0, "[Assertion failed] - this array must not be empty: it must contain at least 1 element"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->notEmpty([Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static notEmpty([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "array"
    .parameter "message"

    .prologue
    .line 214
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    return-void
.end method

.method public static notNull(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 124
    const-string v0, "[Assertion failed] - this argument is required; it must not be null"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "object"
    .parameter "message"

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    return-void
.end method

.method public static state(Z)V
    .locals 1
    .parameter "expression"

    .prologue
    .line 399
    const-string v0, "[Assertion failed] - this state invariant must be true"

    invoke-static {p0, v0}, Lorg/springframework/util/Assert;->state(ZLjava/lang/String;)V

    .line 400
    return-void
.end method

.method public static state(ZLjava/lang/String;)V
    .locals 1
    .parameter "expression"
    .parameter "message"

    .prologue
    .line 384
    if-nez p0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    return-void
.end method

.class public abstract Lorg/springframework/util/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# static fields
.field private static final ARRAY_ELEMENT_SEPARATOR:Ljava/lang/String; = ", "

.field private static final ARRAY_END:Ljava/lang/String; = "}"

.field private static final ARRAY_START:Ljava/lang/String; = "{"

.field private static final EMPTY_ARRAY:Ljava/lang/String; = "{}"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final INITIAL_HASH:I = 0x7

.field private static final MULTIPLIER:I = 0x1f

.field private static final NULL_STRING:Ljava/lang/String; = "null"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addObjectToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "O:TA;>([TA;TO;)[TA;"
        }
    .end annotation

    .prologue
    .local p0, array:[Ljava/lang/Object;,"[TA;"
    .local p1, obj:Ljava/lang/Object;,"TO;"
    const/4 v4, 0x0

    .line 181
    const-class v0, Ljava/lang/Object;

    .line 182
    .local v0, compType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_2

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 188
    :cond_0
    :goto_0
    if-eqz p0, :cond_3

    array-length v3, p0

    add-int/lit8 v2, v3, 0x1

    .line 190
    .local v2, newArrLength:I
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    .line 191
    .local v1, newArr:[Ljava/lang/Object;,"[TA;"
    if-eqz p0, :cond_1

    .line 192
    array-length v3, p0

    invoke-static {p0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aput-object p1, v1, v3

    .line 195
    return-object v1

    .line 185
    .end local v1           #newArr:[Ljava/lang/Object;,"[TA;"
    .end local v2           #newArrLength:I
    :cond_2
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static caseInsensitiveValueOf([Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 9
    .parameter
    .parameter "constant"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<*>;>([TE;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, enumValues:[Ljava/lang/Enum;,"[TE;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 164
    .local v1, candidate:Ljava/lang/Enum;,"TE;"
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    return-object v1

    .line 163
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v1           #candidate:Ljava/lang/Enum;,"TE;"
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "constant [%s] does not exist in enum type %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static containsConstant([Ljava/lang/Enum;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter "constant"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, enumValues:[Ljava/lang/Enum;,"[Ljava/lang/Enum<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/springframework/util/ObjectUtils;->containsConstant([Ljava/lang/Enum;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static containsConstant([Ljava/lang/Enum;Ljava/lang/String;Z)Z
    .locals 5
    .parameter
    .parameter "constant"
    .parameter "caseSensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, enumValues:[Ljava/lang/Enum;,"[Ljava/lang/Enum<*>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Enum;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 145
    .local v1, candidate:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    if-eqz p2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    :cond_0
    const/4 v4, 0x1

    .line 151
    .end local v1           #candidate:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    :goto_1
    return v4

    .line 145
    .restart local v1       #candidate:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v1           #candidate:Ljava/lang/Enum;,"Ljava/lang/Enum<*>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static containsElement([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter "array"
    .parameter "element"

    .prologue
    const/4 v4, 0x0

    .line 114
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v4

    .line 117
    :cond_1
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 118
    .local v1, arrayEle:Ljava/lang/Object;
    invoke-static {v1, p1}, Lorg/springframework/util/ObjectUtils;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    const/4 v4, 0x1

    goto :goto_0

    .line 117
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getDisplayString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 553
    if-nez p0, :cond_0

    .line 554
    const-string v0, ""

    .line 556
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIdentityHexString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 540
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hashCode(D)I
    .locals 3
    .parameter "dbl"

    .prologue
    .line 496
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 497
    .local v0, bits:J
    invoke-static {v0, v1}, Lorg/springframework/util/ObjectUtils;->hashCode(J)I

    move-result v2

    return v2
.end method

.method public static hashCode(F)I
    .locals 1
    .parameter "flt"

    .prologue
    .line 505
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public static hashCode(J)I
    .locals 2
    .parameter "lng"

    .prologue
    .line 513
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static hashCode(Z)I
    .locals 1
    .parameter "bool"

    .prologue
    .line 488
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "obj"

    .prologue
    .line 528
    if-nez p0, :cond_0

    .line 529
    const-string v0, ""

    .line 531
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->getIdentityHexString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isArray(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 94
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCheckedException(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "ex"

    .prologue
    .line 62
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCompatibleWithThrowsClause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z
    .locals 4
    .parameter "ex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, declaredExceptions:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    .line 73
    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->isCheckedException(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    if-eqz p1, :cond_2

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 79
    aget-object v2, p1, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    .end local v0           #i:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .parameter "array"

    .prologue
    .line 103
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nullSafeClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 566
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 246
    if-ne p0, p1, :cond_1

    .line 284
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 249
    .restart local p0
    .restart local p1
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 250
    goto :goto_0

    .line 252
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 256
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 257
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 259
    .restart local p0
    .restart local p1
    :cond_4
    instance-of v0, p0, [Z

    if-eqz v0, :cond_5

    instance-of v0, p1, [Z

    if-eqz v0, :cond_5

    .line 260
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    check-cast p1, [Z

    .end local p1
    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto :goto_0

    .line 262
    .restart local p0
    .restart local p1
    :cond_5
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    .line 263
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    .line 265
    .restart local p0
    .restart local p1
    :cond_6
    instance-of v0, p0, [C

    if-eqz v0, :cond_7

    instance-of v0, p1, [C

    if-eqz v0, :cond_7

    .line 266
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    check-cast p1, [C

    .end local p1
    check-cast p1, [C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    goto :goto_0

    .line 268
    .restart local p0
    .restart local p1
    :cond_7
    instance-of v0, p0, [D

    if-eqz v0, :cond_8

    instance-of v0, p1, [D

    if-eqz v0, :cond_8

    .line 269
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    check-cast p1, [D

    .end local p1
    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto/16 :goto_0

    .line 271
    .restart local p0
    .restart local p1
    :cond_8
    instance-of v0, p0, [F

    if-eqz v0, :cond_9

    instance-of v0, p1, [F

    if-eqz v0, :cond_9

    .line 272
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    check-cast p1, [F

    .end local p1
    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto/16 :goto_0

    .line 274
    .restart local p0
    .restart local p1
    :cond_9
    instance-of v0, p0, [I

    if-eqz v0, :cond_a

    instance-of v0, p1, [I

    if-eqz v0, :cond_a

    .line 275
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    check-cast p1, [I

    .end local p1
    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto/16 :goto_0

    .line 277
    .restart local p0
    .restart local p1
    :cond_a
    instance-of v0, p0, [J

    if-eqz v0, :cond_b

    instance-of v0, p1, [J

    if-eqz v0, :cond_b

    .line 278
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    check-cast p1, [J

    .end local p1
    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto/16 :goto_0

    .line 280
    .restart local p0
    .restart local p1
    :cond_b
    instance-of v0, p0, [S

    if-eqz v0, :cond_c

    instance-of v0, p1, [S

    if-eqz v0, :cond_c

    .line 281
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    check-cast p1, [S

    .end local p1
    check-cast p1, [S

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    goto/16 :goto_0

    .restart local p0
    .restart local p1
    :cond_c
    move v0, v1

    .line 284
    goto/16 :goto_0
.end method

.method public static nullSafeHashCode(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 304
    if-nez p0, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0

    .line 307
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 308
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 309
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeHashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 311
    .restart local p0
    :cond_1
    instance-of v0, p0, [Z

    if-eqz v0, :cond_2

    .line 312
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeHashCode([Z)I

    move-result v0

    goto :goto_0

    .line 314
    .restart local p0
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 315
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeHashCode([B)I

    move-result v0

    goto :goto_0

    .line 317
    .restart local p0
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 318
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeHashCode([C)I

    move-result v0

    goto :goto_0

    .line 320
    .restart local p0
    :cond_4
    instance-of v0, p0, [D

    if-eqz v0, :cond_5

    .line 321
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeHashCode([D)I

    move-result v0

    goto :goto_0

    .line 323
    .restart local p0
    :cond_5
    instance-of v0, p0, [F

    if-eqz v0, :cond_6

    .line 324
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeHashCode([F)I

    move-result v0

    goto :goto_0

    .line 326
    .restart local p0
    :cond_6
    instance-of v0, p0, [I

    if-eqz v0, :cond_7

    .line 327
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeHashCode([I)I

    move-result v0

    goto :goto_0

    .line 329
    .restart local p0
    :cond_7
    instance-of v0, p0, [J

    if-eqz v0, :cond_8

    .line 330
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeHashCode([J)I

    move-result v0

    goto :goto_0

    .line 332
    .restart local p0
    :cond_8
    instance-of v0, p0, [S

    if-eqz v0, :cond_9

    .line 333
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeHashCode([S)I

    move-result v0

    goto :goto_0

    .line 336
    .restart local p0
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto/16 :goto_0
.end method

.method public static nullSafeHashCode([B)I
    .locals 5
    .parameter "array"

    .prologue
    .line 376
    if-nez p0, :cond_1

    .line 377
    const/4 v1, 0x0

    .line 384
    :cond_0
    return v1

    .line 379
    :cond_1
    const/4 v1, 0x7

    .line 380
    .local v1, hash:I
    array-length v0, p0

    .line 381
    .local v0, arraySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 382
    mul-int/lit8 v3, v1, 0x1f

    aget-byte v4, p0, v2

    add-int v1, v3, v4

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static nullSafeHashCode([C)I
    .locals 5
    .parameter "array"

    .prologue
    .line 392
    if-nez p0, :cond_1

    .line 393
    const/4 v1, 0x0

    .line 400
    :cond_0
    return v1

    .line 395
    :cond_1
    const/4 v1, 0x7

    .line 396
    .local v1, hash:I
    array-length v0, p0

    .line 397
    .local v0, arraySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 398
    mul-int/lit8 v3, v1, 0x1f

    aget-char v4, p0, v2

    add-int v1, v3, v4

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static nullSafeHashCode([D)I
    .locals 6
    .parameter "array"

    .prologue
    .line 408
    if-nez p0, :cond_1

    .line 409
    const/4 v1, 0x0

    .line 416
    :cond_0
    return v1

    .line 411
    :cond_1
    const/4 v1, 0x7

    .line 412
    .local v1, hash:I
    array-length v0, p0

    .line 413
    .local v0, arraySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 414
    mul-int/lit8 v3, v1, 0x1f

    aget-wide v4, p0, v2

    invoke-static {v4, v5}, Lorg/springframework/util/ObjectUtils;->hashCode(D)I

    move-result v4

    add-int v1, v3, v4

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static nullSafeHashCode([F)I
    .locals 5
    .parameter "array"

    .prologue
    .line 424
    if-nez p0, :cond_1

    .line 425
    const/4 v1, 0x0

    .line 432
    :cond_0
    return v1

    .line 427
    :cond_1
    const/4 v1, 0x7

    .line 428
    .local v1, hash:I
    array-length v0, p0

    .line 429
    .local v0, arraySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 430
    mul-int/lit8 v3, v1, 0x1f

    aget v4, p0, v2

    invoke-static {v4}, Lorg/springframework/util/ObjectUtils;->hashCode(F)I

    move-result v4

    add-int v1, v3, v4

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static nullSafeHashCode([I)I
    .locals 5
    .parameter "array"

    .prologue
    .line 440
    if-nez p0, :cond_1

    .line 441
    const/4 v1, 0x0

    .line 448
    :cond_0
    return v1

    .line 443
    :cond_1
    const/4 v1, 0x7

    .line 444
    .local v1, hash:I
    array-length v0, p0

    .line 445
    .local v0, arraySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 446
    mul-int/lit8 v3, v1, 0x1f

    aget v4, p0, v2

    add-int v1, v3, v4

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static nullSafeHashCode([J)I
    .locals 6
    .parameter "array"

    .prologue
    .line 456
    if-nez p0, :cond_1

    .line 457
    const/4 v1, 0x0

    .line 464
    :cond_0
    return v1

    .line 459
    :cond_1
    const/4 v1, 0x7

    .line 460
    .local v1, hash:I
    array-length v0, p0

    .line 461
    .local v0, arraySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 462
    mul-int/lit8 v3, v1, 0x1f

    aget-wide v4, p0, v2

    invoke-static {v4, v5}, Lorg/springframework/util/ObjectUtils;->hashCode(J)I

    move-result v4

    add-int v1, v3, v4

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static nullSafeHashCode([Ljava/lang/Object;)I
    .locals 5
    .parameter "array"

    .prologue
    .line 344
    if-nez p0, :cond_1

    .line 345
    const/4 v1, 0x0

    .line 352
    :cond_0
    return v1

    .line 347
    :cond_1
    const/4 v1, 0x7

    .line 348
    .local v1, hash:I
    array-length v0, p0

    .line 349
    .local v0, arraySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 350
    mul-int/lit8 v3, v1, 0x1f

    aget-object v4, p0, v2

    invoke-static {v4}, Lorg/springframework/util/ObjectUtils;->nullSafeHashCode(Ljava/lang/Object;)I

    move-result v4

    add-int v1, v3, v4

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static nullSafeHashCode([S)I
    .locals 5
    .parameter "array"

    .prologue
    .line 472
    if-nez p0, :cond_1

    .line 473
    const/4 v1, 0x0

    .line 480
    :cond_0
    return v1

    .line 475
    :cond_1
    const/4 v1, 0x7

    .line 476
    .local v1, hash:I
    array-length v0, p0

    .line 477
    .local v0, arraySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 478
    mul-int/lit8 v3, v1, 0x1f

    aget-short v4, p0, v2

    add-int v1, v3, v4

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static nullSafeHashCode([Z)I
    .locals 5
    .parameter "array"

    .prologue
    .line 360
    if-nez p0, :cond_1

    .line 361
    const/4 v1, 0x0

    .line 368
    :cond_0
    return v1

    .line 363
    :cond_1
    const/4 v1, 0x7

    .line 364
    .local v1, hash:I
    array-length v0, p0

    .line 365
    .local v0, arraySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 366
    mul-int/lit8 v3, v1, 0x1f

    aget-boolean v4, p0, v2

    invoke-static {v4}, Lorg/springframework/util/ObjectUtils;->hashCode(Z)I

    move-result v4

    add-int v1, v3, v4

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static nullSafeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "obj"

    .prologue
    .line 577
    if-nez p0, :cond_0

    .line 578
    const-string p0, "null"

    .line 611
    .end local p0
    :goto_0
    return-object p0

    .line 580
    .restart local p0
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 581
    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 583
    :cond_1
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 584
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 586
    .restart local p0
    :cond_2
    instance-of v1, p0, [Z

    if-eqz v1, :cond_3

    .line 587
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeToString([Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 589
    .restart local p0
    :cond_3
    instance-of v1, p0, [B

    if-eqz v1, :cond_4

    .line 590
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeToString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 592
    .restart local p0
    :cond_4
    instance-of v1, p0, [C

    if-eqz v1, :cond_5

    .line 593
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeToString([C)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 595
    .restart local p0
    :cond_5
    instance-of v1, p0, [D

    if-eqz v1, :cond_6

    .line 596
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeToString([D)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 598
    .restart local p0
    :cond_6
    instance-of v1, p0, [F

    if-eqz v1, :cond_7

    .line 599
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeToString([F)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 601
    .restart local p0
    :cond_7
    instance-of v1, p0, [I

    if-eqz v1, :cond_8

    .line 602
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeToString([I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 604
    .restart local p0
    :cond_8
    instance-of v1, p0, [J

    if-eqz v1, :cond_9

    .line 605
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeToString([J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 607
    .restart local p0
    :cond_9
    instance-of v1, p0, [S

    if-eqz v1, :cond_a

    .line 608
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    invoke-static {p0}, Lorg/springframework/util/ObjectUtils;->nullSafeToString([S)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 610
    .restart local p0
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_b

    .end local v0           #str:Ljava/lang/String;
    :goto_1
    move-object p0, v0

    goto/16 :goto_0

    .restart local v0       #str:Ljava/lang/String;
    :cond_b
    const-string v0, ""

    goto :goto_1
.end method

.method public static nullSafeToString([B)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 687
    if-nez p0, :cond_0

    .line 688
    const-string v3, "null"

    .line 705
    :goto_0
    return-object v3

    .line 690
    :cond_0
    array-length v1, p0

    .line 691
    .local v1, length:I
    if-nez v1, :cond_1

    .line 692
    const-string v3, "{}"

    goto :goto_0

    .line 694
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 695
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 696
    if-nez v0, :cond_2

    .line 697
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    :goto_2
    aget-byte v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 695
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 700
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 704
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static nullSafeToString([C)Ljava/lang/String;
    .locals 5
    .parameter "array"

    .prologue
    .line 718
    if-nez p0, :cond_0

    .line 719
    const-string v3, "null"

    .line 736
    :goto_0
    return-object v3

    .line 721
    :cond_0
    array-length v1, p0

    .line 722
    .local v1, length:I
    if-nez v1, :cond_1

    .line 723
    const-string v3, "{}"

    goto :goto_0

    .line 725
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 727
    if-nez v0, :cond_2

    .line 728
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :goto_2
    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 731
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 735
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static nullSafeToString([D)Ljava/lang/String;
    .locals 5
    .parameter "array"

    .prologue
    .line 749
    if-nez p0, :cond_0

    .line 750
    const-string v3, "null"

    .line 768
    :goto_0
    return-object v3

    .line 752
    :cond_0
    array-length v1, p0

    .line 753
    .local v1, length:I
    if-nez v1, :cond_1

    .line 754
    const-string v3, "{}"

    goto :goto_0

    .line 756
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 758
    if-nez v0, :cond_2

    .line 759
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :goto_2
    aget-wide v3, p0, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 757
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 762
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 767
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static nullSafeToString([F)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 781
    if-nez p0, :cond_0

    .line 782
    const-string v3, "null"

    .line 800
    :goto_0
    return-object v3

    .line 784
    :cond_0
    array-length v1, p0

    .line 785
    .local v1, length:I
    if-nez v1, :cond_1

    .line 786
    const-string v3, "{}"

    goto :goto_0

    .line 788
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 790
    if-nez v0, :cond_2

    .line 791
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :goto_2
    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 794
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 799
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static nullSafeToString([I)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 813
    if-nez p0, :cond_0

    .line 814
    const-string v3, "null"

    .line 831
    :goto_0
    return-object v3

    .line 816
    :cond_0
    array-length v1, p0

    .line 817
    .local v1, length:I
    if-nez v1, :cond_1

    .line 818
    const-string v3, "{}"

    goto :goto_0

    .line 820
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 821
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 822
    if-nez v0, :cond_2

    .line 823
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :goto_2
    aget v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 821
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 826
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 830
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static nullSafeToString([J)Ljava/lang/String;
    .locals 5
    .parameter "array"

    .prologue
    .line 844
    if-nez p0, :cond_0

    .line 845
    const-string v3, "null"

    .line 862
    :goto_0
    return-object v3

    .line 847
    :cond_0
    array-length v1, p0

    .line 848
    .local v1, length:I
    if-nez v1, :cond_1

    .line 849
    const-string v3, "{}"

    goto :goto_0

    .line 851
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 852
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 853
    if-nez v0, :cond_2

    .line 854
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :goto_2
    aget-wide v3, p0, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 852
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 857
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 861
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static nullSafeToString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 624
    if-nez p0, :cond_0

    .line 625
    const-string v3, "null"

    .line 642
    :goto_0
    return-object v3

    .line 627
    :cond_0
    array-length v1, p0

    .line 628
    .local v1, length:I
    if-nez v1, :cond_1

    .line 629
    const-string v3, "{}"

    goto :goto_0

    .line 631
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 633
    if-nez v0, :cond_2

    .line 634
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :goto_2
    aget-object v3, p0, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 637
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 641
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static nullSafeToString([S)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 875
    if-nez p0, :cond_0

    .line 876
    const-string v3, "null"

    .line 893
    :goto_0
    return-object v3

    .line 878
    :cond_0
    array-length v1, p0

    .line 879
    .local v1, length:I
    if-nez v1, :cond_1

    .line 880
    const-string v3, "{}"

    goto :goto_0

    .line 882
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 884
    if-nez v0, :cond_2

    .line 885
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    :goto_2
    aget-short v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 888
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 892
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static nullSafeToString([Z)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 655
    if-nez p0, :cond_0

    .line 656
    const-string v3, "null"

    .line 674
    :goto_0
    return-object v3

    .line 658
    :cond_0
    array-length v1, p0

    .line 659
    .local v1, length:I
    if-nez v1, :cond_1

    .line 660
    const-string v3, "{}"

    goto :goto_0

    .line 662
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 664
    if-nez v0, :cond_2

    .line 665
    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :goto_2
    aget-boolean v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 668
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 673
    :cond_3
    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static toObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter "source"

    .prologue
    const/4 v5, 0x0

    .line 208
    instance-of v4, p0, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 209
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    .line 226
    .local v1, length:I
    :goto_0
    return-object p0

    .line 211
    .end local v1           #length:I
    .restart local p0
    :cond_0
    if-nez p0, :cond_1

    .line 212
    new-array p0, v5, [Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_2

    .line 215
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Source is not an array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    :cond_2
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 218
    .restart local v1       #length:I
    if-nez v1, :cond_3

    .line 219
    new-array p0, v5, [Ljava/lang/Object;

    goto :goto_0

    .line 221
    :cond_3
    invoke-static {p0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 222
    .local v3, wrapperType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 223
    .local v2, newArray:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 224
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p0, v2

    .line 226
    goto :goto_0
.end method

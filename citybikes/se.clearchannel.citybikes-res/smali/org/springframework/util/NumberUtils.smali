.class public abstract Lorg/springframework/util/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertNumberToTargetClass(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/Number;
    .locals 5
    .parameter "number"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/lang/Number;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 56
    .local p1, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const-string v2, "Number must not be null"

    invoke-static {p0, v2}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-string v2, "Target class must not be null"

    invoke-static {p1, v2}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    .end local p0
    :goto_0
    return-object p0

    .line 62
    .restart local p0
    :cond_0
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 64
    .local v0, value:J
    const-wide/16 v2, -0x80

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/16 v2, 0x7f

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 65
    :cond_1
    invoke-static {p0, p1}, Lorg/springframework/util/NumberUtils;->raiseOverflowException(Ljava/lang/Number;Ljava/lang/Class;)V

    .line 67
    :cond_2
    new-instance v2, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    move-object p0, v2

    goto :goto_0

    .line 69
    .end local v0           #value:J
    :cond_3
    const-class v2, Ljava/lang/Short;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 70
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 71
    .restart local v0       #value:J
    const-wide/16 v2, -0x8000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    const-wide/16 v2, 0x7fff

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    .line 72
    :cond_4
    invoke-static {p0, p1}, Lorg/springframework/util/NumberUtils;->raiseOverflowException(Ljava/lang/Number;Ljava/lang/Class;)V

    .line 74
    :cond_5
    new-instance v2, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    move-object p0, v2

    goto :goto_0

    .line 76
    .end local v0           #value:J
    :cond_6
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 77
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 78
    .restart local v0       #value:J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_8

    .line 79
    :cond_7
    invoke-static {p0, p1}, Lorg/springframework/util/NumberUtils;->raiseOverflowException(Ljava/lang/Number;Ljava/lang/Class;)V

    .line 81
    :cond_8
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    move-object p0, v2

    goto :goto_0

    .line 83
    .end local v0           #value:J
    :cond_9
    const-class v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 84
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v2

    goto/16 :goto_0

    .line 86
    :cond_a
    const-class v2, Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 87
    instance-of v2, p0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_b

    .line 89
    check-cast p0, Ljava/math/BigDecimal;

    .end local p0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    .line 93
    .restart local p0
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    .line 96
    :cond_c
    const-class v2, Ljava/lang/Float;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 97
    new-instance v2, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v2

    goto/16 :goto_0

    .line 99
    :cond_d
    const-class v2, Ljava/lang/Double;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 100
    new-instance v2, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    move-object p0, v2

    goto/16 :goto_0

    .line 102
    :cond_e
    const-class v2, Ljava/math/BigDecimal;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 105
    new-instance v2, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p0, v2

    goto/16 :goto_0

    .line 108
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not convert number ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] of type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] to unknown target class ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 6
    .parameter "value"

    .prologue
    .line 239
    const/16 v2, 0xa

    .line 240
    .local v2, radix:I
    const/4 v0, 0x0

    .line 241
    .local v0, index:I
    const/4 v1, 0x0

    .line 244
    .local v1, negative:Z
    const-string v4, "-"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    const/4 v1, 0x1

    .line 246
    add-int/lit8 v0, v0, 0x1

    .line 250
    :cond_0
    const-string v4, "0x"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "0X"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 251
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 252
    const/16 v2, 0x10

    .line 263
    :cond_2
    :goto_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 264
    .local v3, result:Ljava/math/BigInteger;
    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    .end local v3           #result:Ljava/math/BigInteger;
    :cond_3
    return-object v3

    .line 254
    :cond_4
    const-string v4, "#"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 256
    const/16 v2, 0x10

    goto :goto_0

    .line 258
    :cond_5
    const-string v4, "0"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    if-le v4, v5, :cond_2

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 260
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private static isHexNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 230
    .local v0, index:I
    :goto_0
    const-string v3, "0x"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0X"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "#"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    .end local v0           #index:I
    :cond_2
    move v0, v2

    .line 229
    goto :goto_0
.end method

.method public static parseNumber(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Number;
    .locals 4
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const-string v1, "Text must not be null"

    invoke-static {p0, v1}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    const-string v1, "Target class must not be null"

    invoke-static {p1, v1}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->trimAllWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, trimmed:Ljava/lang/String;
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-static {v0}, Lorg/springframework/util/NumberUtils;->isHexNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    .line 170
    :goto_0
    return-object v1

    .line 149
    :cond_0
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_1
    const-class v1, Ljava/lang/Short;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    invoke-static {v0}, Lorg/springframework/util/NumberUtils;->isHexNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 154
    :cond_3
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    invoke-static {v0}, Lorg/springframework/util/NumberUtils;->isHexNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 157
    :cond_5
    const-class v1, Ljava/lang/Long;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 158
    invoke-static {v0}, Lorg/springframework/util/NumberUtils;->isHexNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 160
    :cond_7
    const-class v1, Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 161
    invoke-static {v0}, Lorg/springframework/util/NumberUtils;->isHexNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Lorg/springframework/util/NumberUtils;->decodeBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    :cond_8
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_9
    const-class v1, Ljava/lang/Float;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 164
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 166
    :cond_a
    const-class v1, Ljava/lang/Double;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 167
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_b
    const-class v1, Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-class v1, Ljava/lang/Number;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 170
    :cond_c
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot convert String ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] to target class ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseNumber(Ljava/lang/String;Ljava/lang/Class;Ljava/text/NumberFormat;)Ljava/lang/Number;
    .locals 8
    .parameter "text"
    .parameter
    .parameter "numberFormat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/text/NumberFormat;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v7, 0x0

    .line 194
    if-eqz p2, :cond_3

    .line 195
    const-string v4, "Text must not be null"

    invoke-static {p0, v4}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    const-string v4, "Target class must not be null"

    invoke-static {p1, v4}, Lorg/springframework/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, decimalFormat:Ljava/text/DecimalFormat;
    const/4 v3, 0x0

    .line 199
    .local v3, resetBigDecimal:Z
    instance-of v4, p2, Ljava/text/DecimalFormat;

    if-eqz v4, :cond_0

    move-object v0, p2

    .line 200
    check-cast v0, Ljava/text/DecimalFormat;

    .line 201
    const-class v4, Ljava/math/BigDecimal;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->isParseBigDecimal()Z

    move-result v4

    if-nez v4, :cond_0

    .line 202
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 203
    const/4 v3, 0x1

    .line 207
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/springframework/util/StringUtils;->trimAllWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    .line 208
    .local v2, number:Ljava/lang/Number;
    invoke-static {v2, p1}, Lorg/springframework/util/NumberUtils;->convertNumberToTargetClass(Ljava/lang/Number;Ljava/lang/Class;)Ljava/lang/Number;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 214
    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {v0, v7}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    .line 220
    .end local v0           #decimalFormat:Ljava/text/DecimalFormat;
    .end local v2           #number:Ljava/lang/Number;
    .end local v3           #resetBigDecimal:Z
    :cond_1
    :goto_0
    return-object v4

    .line 210
    .restart local v0       #decimalFormat:Ljava/text/DecimalFormat;
    .restart local v3       #resetBigDecimal:Z
    :catch_0
    move-exception v1

    .line 211
    .local v1, ex:Ljava/text/ParseException;
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .end local v1           #ex:Ljava/text/ParseException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 215
    invoke-virtual {v0, v7}, Ljava/text/DecimalFormat;->setParseBigDecimal(Z)V

    :cond_2
    throw v4

    .line 220
    .end local v0           #decimalFormat:Ljava/text/DecimalFormat;
    .end local v3           #resetBigDecimal:Z
    :cond_3
    invoke-static {p0, p1}, Lorg/springframework/util/NumberUtils;->parseNumber(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Number;

    move-result-object v4

    goto :goto_0
.end method

.method private static raiseOverflowException(Ljava/lang/Number;Ljava/lang/Class;)V
    .locals 3
    .parameter "number"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert number ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] of type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to target class ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: overflow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

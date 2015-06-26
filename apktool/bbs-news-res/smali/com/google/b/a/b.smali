.class public final Lcom/google/b/a/b;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[B

.field private static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 63
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/b/a/b;->a:[C

    .line 68
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/b/a/b;->b:[C

    .line 76
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/b/a/b;->c:[B

    .line 110
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/b/a/b;->d:[B

    return-void

    .line 76
    nop

    :array_0
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data

    .line 110
    :array_1
    .array-data 0x1
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xfbt
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xfbt
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3et
        0xf7t
        0xf7t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0xf7t
        0xf7t
        0xf7t
        0xfft
        0xf7t
        0xf7t
        0xf7t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0x3ft
        0xf7t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
        0xf7t
    .end array-data
.end method

.method private static a([C[BI[B)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 388
    aget-char v3, p0, v1

    if-ne v3, v5, :cond_0

    .line 389
    aget-char v1, p0, v4

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    aget-char v2, p0, v0

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0xc

    or-int/2addr v1, v2

    .line 393
    ushr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 416
    :goto_0
    return v0

    .line 395
    :cond_0
    aget-char v3, p0, v2

    if-ne v3, v5, :cond_1

    .line 397
    aget-char v2, p0, v4

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x6

    aget-char v0, p0, v0

    aget-byte v0, p3, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v2

    aget-char v2, p0, v1

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x12

    or-int/2addr v0, v2

    .line 402
    ushr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 403
    add-int/lit8 v2, p2, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    move v0, v1

    .line 404
    goto :goto_0

    .line 407
    :cond_1
    aget-char v3, p0, v4

    aget-byte v3, p3, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x6

    aget-char v0, p0, v0

    aget-byte v0, p3, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v3

    aget-char v1, p0, v1

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x12

    or-int/2addr v0, v1

    aget-char v1, p0, v2

    aget-byte v1, p3, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 413
    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 414
    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 415
    add-int/lit8 v1, p2, 0x2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    move v0, v2

    .line 416
    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 14
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v13, 0xa

    const v12, 0x7fffffff

    const/16 v11, 0x3d

    const/4 v1, 0x0

    .line 270
    array-length v5, p0

    sget-object v6, Lcom/google/b/a/b;->b:[C

    add-int/lit8 v0, v5, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    div-int v2, v0, v12

    add-int/2addr v0, v2

    new-array v7, v0, [C

    add-int/lit8 v8, v5, -0x2

    move v4, v1

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v3, v8, :cond_1

    add-int/lit8 v0, v3, 0x0

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v9, v9, 0x0

    aget-byte v9, p0, v9

    shl-int/lit8 v9, v9, 0x18

    ushr-int/lit8 v9, v9, 0x10

    or-int/2addr v0, v9

    add-int/lit8 v9, v3, 0x2

    add-int/lit8 v9, v9, 0x0

    aget-byte v9, p0, v9

    shl-int/lit8 v9, v9, 0x18

    ushr-int/lit8 v9, v9, 0x18

    or-int/2addr v0, v9

    ushr-int/lit8 v9, v0, 0x12

    aget-char v9, v6, v9

    aput-char v9, v7, v2

    add-int/lit8 v9, v2, 0x1

    ushr-int/lit8 v10, v0, 0xc

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v6, v10

    aput-char v10, v7, v9

    add-int/lit8 v9, v2, 0x2

    ushr-int/lit8 v10, v0, 0x6

    and-int/lit8 v10, v10, 0x3f

    aget-char v10, v6, v10

    aput-char v10, v7, v9

    add-int/lit8 v9, v2, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v6, v0

    aput-char v0, v7, v9

    add-int/lit8 v0, v4, 0x4

    if-ne v0, v12, :cond_0

    add-int/lit8 v0, v2, 0x4

    aput-char v13, v7, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    :cond_0
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, 0x4

    move v4, v0

    goto :goto_0

    :cond_1
    if-ge v3, v5, :cond_2

    add-int/lit8 v8, v3, 0x0

    sub-int/2addr v5, v3

    if-lez v5, :cond_3

    aget-byte v0, p0, v8

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x8

    move v3, v0

    :goto_1
    const/4 v0, 0x1

    if-le v5, v0, :cond_4

    add-int/lit8 v0, v8, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x10

    :goto_2
    or-int/2addr v3, v0

    const/4 v0, 0x2

    if-le v5, v0, :cond_5

    add-int/lit8 v0, v8, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    :goto_3
    or-int/2addr v0, v3

    packed-switch v5, :pswitch_data_0

    :goto_4
    add-int/lit8 v0, v4, 0x4

    if-ne v0, v12, :cond_2

    add-int/lit8 v0, v2, 0x4

    aput-char v13, v7, v0

    :cond_2
    array-length v0, v7

    :goto_5
    if-lez v0, :cond_6

    add-int/lit8 v2, v0, -0x1

    aget-char v2, v7, v2

    if-ne v2, v11, :cond_6

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3

    :pswitch_0
    ushr-int/lit8 v3, v0, 0x12

    aget-char v3, v6, v3

    aput-char v3, v7, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v6, v5

    aput-char v5, v7, v3

    add-int/lit8 v3, v2, 0x2

    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v6, v5

    aput-char v5, v7, v3

    add-int/lit8 v3, v2, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v6, v0

    aput-char v0, v7, v3

    goto :goto_4

    :pswitch_1
    ushr-int/lit8 v3, v0, 0x12

    aget-char v3, v6, v3

    aput-char v3, v7, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v6, v5

    aput-char v5, v7, v3

    add-int/lit8 v3, v2, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v6, v0

    aput-char v0, v7, v3

    add-int/lit8 v0, v2, 0x3

    aput-char v11, v7, v0

    goto :goto_4

    :pswitch_2
    ushr-int/lit8 v3, v0, 0x12

    aget-char v3, v6, v3

    aput-char v3, v7, v2

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v6, v0

    aput-char v0, v7, v3

    add-int/lit8 v0, v2, 0x2

    aput-char v11, v7, v0

    add-int/lit8 v0, v2, 0x3

    aput-char v11, v7, v0

    goto :goto_4

    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/b/a/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 433
    array-length v6, v5

    sget-object v7, Lcom/google/b/a/b;->c:[B

    mul-int/lit8 v0, v6, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v9, v0, [C

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v1

    move v1, v2

    :goto_0
    if-ge v4, v6, :cond_5

    add-int/lit8 v2, v4, 0x0

    aget-char v2, v5, v2

    and-int/lit8 v10, v2, 0x7f

    int-to-char v10, v10

    aget-byte v11, v7, v10

    if-ne v10, v2, :cond_0

    const/4 v2, -0x5

    if-ge v11, v2, :cond_0

    new-instance v0, Lcom/google/b/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad Base64 input character at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v4, 0x0

    aget-char v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(decimal)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/b/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v2, -0x1

    if-lt v11, v2, :cond_9

    const/16 v2, 0x3d

    if-ne v10, v2, :cond_3

    if-nez v0, :cond_9

    const/4 v0, 0x2

    if-ge v4, v0, :cond_1

    new-instance v0, Lcom/google/b/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid padding char found in position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/b/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v2, v2, 0x0

    aget-char v2, v5, v2

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    const/16 v10, 0x3d

    if-eq v2, v10, :cond_2

    const/16 v10, 0xa

    if-eq v2, v10, :cond_2

    new-instance v0, Lcom/google/b/a/a;

    const-string v1, "encoded value has invalid trailing char"

    invoke-direct {v0, v1}, Lcom/google/b/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v2, v3

    :goto_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/b/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data found after trailing padding char at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/b/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v2, v1, 0x1

    aput-char v10, v9, v1

    const/4 v1, 0x4

    if-ne v2, v1, :cond_8

    invoke-static {v9, v8, v3, v7}, Lcom/google/b/a/b;->a([C[BI[B)I

    move-result v1

    add-int v2, v3, v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_7

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6

    new-instance v0, Lcom/google/b/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "single trailing character at offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v6, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/b/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v0, 0x3d

    aput-char v0, v9, v1

    invoke-static {v9, v8, v3, v7}, Lcom/google/b/a/b;->a([C[BI[B)I

    move-result v0

    add-int/2addr v3, v0

    :cond_7
    new-array v0, v3, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v8, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_8
    move v1, v2

    move v2, v3

    goto :goto_1

    :cond_9
    move v2, v3

    goto :goto_1
.end method

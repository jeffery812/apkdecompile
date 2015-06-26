.class public final Lio/boxcar/push/rest/d;
.super Ljava/lang/Object;
.source "Signature.java"


# direct methods
.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "type"
    .parameter "value"
    .parameter "key"

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 34
    .local v1, mac:Ljavax/crypto/Mac;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 36
    .local v2, secret:Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 38
    invoke-static {v3}, Lio/boxcar/push/rest/d;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 42
    .end local v1           #mac:Ljavax/crypto/Mac;
    .end local v2           #secret:Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BXCF"

    const-string v4, "Error signing content"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    const-string v3, ""

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "method"
    .parameter "host"
    .parameter "path"
    .parameter "body"
    .parameter "secret"

    .prologue
    const/16 v3, 0xa

    .line 17
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .local v0, contentToSign:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    const-string v1, "HmacSHA1"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p4}, Lio/boxcar/push/rest/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 9
    .parameter "data"

    .prologue
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v2, buf:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[B
    array-length v5, p0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v1, v0, v4

    .line 48
    .local v1, b:B
    ushr-int/lit8 v8, v1, 0x4

    and-int/lit8 v3, v8, 0xf

    .line 49
    .local v3, halfbyte:I
    const/4 v6, 0x0

    .local v6, two_halfs:I
    move v7, v6

    .line 51
    .end local v6           #two_halfs:I
    .local v7, two_halfs:I
    :goto_1
    if-ltz v3, :cond_0

    const/16 v8, 0x9

    if-gt v3, v8, :cond_0

    add-int/lit8 v8, v3, 0x30

    int-to-char v8, v8

    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    and-int/lit8 v3, v1, 0xf

    .line 54
    add-int/lit8 v6, v7, 0x1

    .end local v7           #two_halfs:I
    .restart local v6       #two_halfs:I
    if-lez v7, :cond_2

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local v6           #two_halfs:I
    .restart local v7       #two_halfs:I
    :cond_0
    add-int/lit8 v8, v3, -0xa

    add-int/lit8 v8, v8, 0x61

    int-to-char v8, v8

    goto :goto_2

    .line 56
    .end local v1           #b:B
    .end local v3           #halfbyte:I
    .end local v7           #two_halfs:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .restart local v1       #b:B
    .restart local v3       #halfbyte:I
    .restart local v6       #two_halfs:I
    :cond_2
    move v7, v6

    .end local v6           #two_halfs:I
    .restart local v7       #two_halfs:I
    goto :goto_1
.end method

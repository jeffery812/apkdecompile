.class public abstract Lcom/google/a/a/d;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/a/a/c;


# instance fields
.field protected a:Landroid/view/MotionEvent;

.field protected b:Landroid/util/DisplayMetrics;

.field private c:Lcom/google/c/a;

.field private d:Ljava/io/ByteArrayOutputStream;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object v0, p0, Lcom/google/a/a/d;->c:Lcom/google/c/a;

    .line 119
    iput-object v0, p0, Lcom/google/a/a/d;->d:Ljava/io/ByteArrayOutputStream;

    .line 122
    iput-object v0, p0, Lcom/google/a/a/d;->a:Landroid/view/MotionEvent;

    .line 125
    iput-object v0, p0, Lcom/google/a/a/d;->b:Landroid/util/DisplayMetrics;

    .line 134
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/d;->b:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/d;->b:Landroid/util/DisplayMetrics;

    .line 138
    iget-object v0, p0, Lcom/google/a/a/d;->b:Landroid/util/DisplayMetrics;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/d;->d:Ljava/io/ByteArrayOutputStream;

    .line 272
    iget-object v0, p0, Lcom/google/a/a/d;->d:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lcom/google/c/a;->a(Ljava/io/OutputStream;)Lcom/google/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/d;->c:Lcom/google/c/a;

    .line 273
    return-void
.end method

.method private b()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/a/a/d;->c:Lcom/google/c/a;

    invoke-virtual {v0}, Lcom/google/c/a;->a()V

    .line 283
    iget-object v0, p0, Lcom/google/a/a/d;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0xef

    const/4 v4, 0x7

    .line 218
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/a/d;->a()V

    .line 219
    invoke-virtual {p0, p1}, Lcom/google/a/a/d;->b(Landroid/content/Context;)V

    .line 225
    invoke-direct {p0}, Lcom/google/a/a/d;->b()[B

    move-result-object v0

    .line 226
    array-length v1, v0

    if-nez v1, :cond_0

    .line 227
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 229
    :cond_0
    array-length v1, v0

    if-le v1, v5, :cond_1

    invoke-direct {p0}, Lcom/google/a/a/d;->a()V

    const/16 v0, 0x14

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/a/a/d;->a(IJ)V

    invoke-direct {p0}, Lcom/google/a/a/d;->b()[B

    move-result-object v0

    :cond_1
    array-length v1, v0

    if-ge v1, v5, :cond_2

    array-length v1, v0

    rsub-int v1, v1, 0xef

    new-array v1, v1, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, v0

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_1
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/16 v1, 0x100

    new-array v1, v1, [B

    new-instance v2, Lcom/google/a/a/a;

    invoke-direct {v2}, Lcom/google/a/a/a;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/a/a/a;->a([B[B)V

    invoke-static {v1}, Lcom/google/b/a/b;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 236
    :catch_1
    move-exception v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 239
    :catch_2
    move-exception v0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/google/a/a/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(IJ)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/a/a/d;->c:Lcom/google/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/c/a;->a(II)V

    :goto_0
    const-wide/16 v2, -0x80

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/google/c/a;->a(I)V

    return-void

    :cond_0
    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Lcom/google/c/a;->a(I)V

    const/4 v1, 0x7

    ushr-long/2addr p2, v1

    goto :goto_0
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/a/a/d;->c:Lcom/google/c/a;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/c/a;->a(II)V

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v0, v2}, Lcom/google/c/a;->b(I)V

    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a;->a([BI)V

    .line 265
    return-void
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method

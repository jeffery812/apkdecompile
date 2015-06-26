.class public final Lcom/google/c/a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/c/a$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/google/c/a;->d:I

    .line 58
    iput-object p1, p0, Lcom/google/c/a;->e:Ljava/io/OutputStream;

    .line 59
    iput-object p2, p0, Lcom/google/c/a;->a:[B

    .line 60
    iput v0, p0, Lcom/google/c/a;->c:I

    .line 61
    array-length v0, p2

    iput v0, p0, Lcom/google/c/a;->b:I

    .line 62
    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/google/c/a;
    .locals 2
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/google/c/a;

    const/16 v1, 0x1000

    new-array v1, v1, [B

    invoke-direct {v0, p0, v1}, Lcom/google/c/a;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 870
    iget-object v0, p0, Lcom/google/c/a;->e:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Lcom/google/c/a$a;

    invoke-direct {v0}, Lcom/google/c/a$a;-><init>()V

    throw v0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/google/c/a;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/c/a;->a:[B

    iget v2, p0, Lcom/google/c/a;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 878
    iput v3, p0, Lcom/google/c/a;->c:I

    .line 879
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lcom/google/c/a;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 887
    invoke-direct {p0}, Lcom/google/c/a;->b()V

    .line 889
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    int-to-byte v0, p1

    iget v1, p0, Lcom/google/c/a;->c:I

    iget v2, p0, Lcom/google/c/a;->b:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/google/c/a;->b()V

    :cond_0
    iget-object v1, p0, Lcom/google/c/a;->a:[B

    iget v2, p0, Lcom/google/c/a;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/c/a;->c:I

    aput-byte v0, v1, v2

    iget v0, p0, Lcom/google/c/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/c/a;->d:I

    .line 955
    return-void
.end method

.method public final a(II)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    invoke-static {p1, p2}, Lcom/google/c/b;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/c/a;->b(I)V

    .line 1056
    return-void
.end method

.method public final a([BI)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 970
    iget v0, p0, Lcom/google/c/a;->b:I

    iget v1, p0, Lcom/google/c/a;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p2, :cond_0

    .line 972
    iget-object v0, p0, Lcom/google/c/a;->a:[B

    iget v1, p0, Lcom/google/c/a;->c:I

    invoke-static {p1, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 973
    iget v0, p0, Lcom/google/c/a;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/c/a;->c:I

    .line 997
    :goto_0
    iget v0, p0, Lcom/google/c/a;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/c/a;->d:I

    .line 999
    return-void

    .line 978
    :cond_0
    iget v0, p0, Lcom/google/c/a;->b:I

    iget v1, p0, Lcom/google/c/a;->c:I

    sub-int/2addr v0, v1

    .line 979
    iget-object v1, p0, Lcom/google/c/a;->a:[B

    iget v2, p0, Lcom/google/c/a;->c:I

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 980
    add-int/lit8 v1, v0, 0x0

    .line 981
    sub-int/2addr p2, v0

    .line 982
    iget v2, p0, Lcom/google/c/a;->b:I

    iput v2, p0, Lcom/google/c/a;->c:I

    .line 983
    iget v2, p0, Lcom/google/c/a;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/c/a;->d:I

    .line 984
    invoke-direct {p0}, Lcom/google/c/a;->b()V

    .line 989
    iget v0, p0, Lcom/google/c/a;->b:I

    if-gt p2, v0, :cond_1

    .line 991
    iget-object v0, p0, Lcom/google/c/a;->a:[B

    invoke-static {p1, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    iput p2, p0, Lcom/google/c/a;->c:I

    goto :goto_0

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/google/c/a;->e:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1069
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 1070
    invoke-virtual {p0, p1}, Lcom/google/c/a;->a(I)V

    .line 1071
    return-void

    .line 1073
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/c/a;->a(I)V

    .line 1074
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

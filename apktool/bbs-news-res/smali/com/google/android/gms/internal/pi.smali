.class Lcom/google/android/gms/internal/pi;
.super Ljava/lang/Object;


# static fields
.field private static final awB:Lcom/google/android/gms/internal/pj;


# instance fields
.field private awC:Z

.field private awD:[I

.field private awE:[Lcom/google/android/gms/internal/pj;

.field private mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/pj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/pi;->awB:Lcom/google/android/gms/internal/pj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pi;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/pi;->awC:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pi;->idealIntArraySize(I)I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    new-array v0, v0, [Lcom/google/android/gms/internal/pj;

    iput-object v0, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    iput v2, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    return-void
.end method

.method private a([I[II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private a([Lcom/google/android/gms/internal/pj;[Lcom/google/android/gms/internal/pj;I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/pj;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private gF(I)I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :cond_2
    xor-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private gc()V
    .locals 8

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    iget-object v4, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    iget-object v5, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v6, v5, v1

    sget-object v7, Lcom/google/android/gms/internal/pi;->awB:Lcom/google/android/gms/internal/pj;

    if-eq v6, v7, :cond_1

    if-eq v1, v0, :cond_0

    aget v7, v4, v1

    aput v7, v4, v0

    aput-object v6, v5, v0

    const/4 v6, 0x0

    aput-object v6, v5, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/pi;->awC:Z

    iput v0, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    return-void
.end method

.method private idealByteArraySize(I)I
    .locals 3
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p1, v1, :cond_1

    shl-int v0, v2, v0

    add-int/lit8 p1, v0, -0xc

    .end local p1
    :cond_0
    return p1

    .restart local p1
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private idealIntArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    mul-int/lit8 v0, p1, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/pi;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public a(ILcom/google/android/gms/internal/pj;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pi;->gF(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    aput-object p2, v1, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/pi;->awB:Lcom/google/android/gms/internal/pj;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    aput-object p2, v1, v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/pi;->awC:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    iget-object v2, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/pi;->gc()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pi;->gF(I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    iget-object v2, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/pi;->idealIntArraySize(I)I

    move-result v1

    new-array v2, v1, [I

    new-array v1, v1, [Lcom/google/android/gms/internal/pj;

    iget-object v3, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    iget-object v4, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    iget-object v4, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    iget-object v2, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    iget-object v2, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    aput-object p2, v1, v0

    iget v0, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/pi;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/pi;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pi;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pi;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/pi;->awD:[I

    iget v4, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/pi;->a([I[II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    iget-object v3, p1, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    iget v4, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/internal/pi;->a([Lcom/google/android/gms/internal/pj;[Lcom/google/android/gms/internal/pj;I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public gD(I)Lcom/google/android/gms/internal/pj;
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pi;->gF(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/android/gms/internal/pi;->awB:Lcom/google/android/gms/internal/pj;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public gE(I)Lcom/google/android/gms/internal/pj;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pi;->awC:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pi;->gc()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pi;->awC:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pi;->gc()V

    :cond_0
    const/16 v1, 0x11

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    if-ge v0, v2, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/pi;->awD:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/pi;->awE:[Lcom/google/android/gms/internal/pj;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/pj;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pi;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pi;->awC:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pi;->gc()V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/pi;->mSize:I

    return v0
.end method

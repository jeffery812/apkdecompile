.class public final Lcom/google/android/gms/internal/pp;
.super Ljava/lang/Object;


# static fields
.field public static final awL:[I

.field public static final awM:[J

.field public static final awN:[F

.field public static final awO:[D

.field public static final awP:[Z

.field public static final awQ:[Ljava/lang/String;

.field public static final awR:[[B

.field public static final awS:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/pp;->awL:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/pp;->awM:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/pp;->awN:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/pp;->awO:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/pp;->awP:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/pp;->awQ:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/pp;->awR:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/pp;->awS:[B

    return-void
.end method

.method public static final b(Lcom/google/android/gms/internal/pe;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/pe;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pe;->gm(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/pe;->qg()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/pe;->gm(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/pe;->gq(I)V

    return v0
.end method

.method static gG(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static gH(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static x(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

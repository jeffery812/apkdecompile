.class public final Lcom/google/android/gms/internal/jb;
.super Ljava/lang/Object;


# static fields
.field static final HA:I

.field public static final HB:[I

.field public static final HC:[J

.field public static final HD:[F

.field public static final HE:[D

.field public static final HF:[Z

.field public static final HG:[Ljava/lang/String;

.field public static final HH:[[B

.field public static final HI:[B

.field static final Hx:I

.field static final Hy:I

.field static final Hz:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/jb;->g(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/jb;->Hx:I

    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/jb;->g(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/jb;->Hy:I

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/jb;->g(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/jb;->Hz:I

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/jb;->g(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/jb;->HA:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/jb;->HB:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/jb;->HC:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/jb;->HD:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/jb;->HE:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/jb;->HF:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/jb;->HG:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/jb;->HH:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/jb;->HI:[B

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/iw;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/iw;->bJ(I)Z

    move-result v0

    return v0
.end method

.method static bS(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static bT(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static g(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

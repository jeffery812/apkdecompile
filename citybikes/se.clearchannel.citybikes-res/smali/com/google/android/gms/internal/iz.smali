.class public abstract Lcom/google/android/gms/internal/iz;
.super Ljava/lang/Object;


# instance fields
.field protected rw:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/iz;->rw:I

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/iz;[B)Lcom/google/android/gms/internal/iz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/iz;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/iy;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/internal/iz;[BII)Lcom/google/android/gms/internal/iz;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Lcom/google/android/gms/internal/iz;[BII)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ix;->b([BII)Lcom/google/android/gms/internal/ix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/internal/ix;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ix;->gf()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final a(Lcom/google/android/gms/internal/iz;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iz;->cP()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/internal/iz;[BII)V

    return-object v0
.end method

.method public static final b(Lcom/google/android/gms/internal/iz;[BII)Lcom/google/android/gms/internal/iz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/iz;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/iy;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/iw;->a([BII)Lcom/google/android/gms/internal/iw;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/iz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iw;->bI(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/iy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/ix;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/iz;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public cP()I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/iz;->rw:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ja;->b(Lcom/google/android/gms/internal/iz;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

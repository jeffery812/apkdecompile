.class public final Lcom/google/android/gms/drive/internal/q;
.super Lcom/google/android/gms/internal/iz;


# static fields
.field public static final rs:[Lcom/google/android/gms/drive/internal/q;


# instance fields
.field public rt:Ljava/lang/String;

.field public ru:J

.field public rv:J

.field private rw:I

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/drive/internal/q;

    sput-object v0, Lcom/google/android/gms/drive/internal/q;->rs:[Lcom/google/android/gms/drive/internal/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/q;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/q;->rt:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/q;->ru:J

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/q;->rv:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/q;->rw:I

    return-void
.end method

.method public static e([B)Lcom/google/android/gms/drive/internal/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/iy;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/internal/q;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/q;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/internal/iz;[B)Lcom/google/android/gms/internal/iz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/q;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/drive/internal/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/iw;->fU()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/internal/iw;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/iw;->fW()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/q;->versionCode:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/iw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/q;->rt:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/iw;->fX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/q;->ru:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/iw;->fX()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/q;->rv:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Lcom/google/android/gms/internal/ix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/q;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ix;->d(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/q;->rt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ix;->b(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/q;->ru:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ix;->c(IJ)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/q;->rv:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ix;->c(IJ)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/internal/iz;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/q;->a(Lcom/google/android/gms/internal/iw;)Lcom/google/android/gms/drive/internal/q;

    move-result-object v0

    return-object v0
.end method

.method public cP()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/q;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ix;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/q;->rt:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ix;->e(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/q;->ru:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ix;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/q;->rv:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ix;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/drive/internal/q;->rw:I

    return v0
.end method

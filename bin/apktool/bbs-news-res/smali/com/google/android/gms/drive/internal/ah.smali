.class public final Lcom/google/android/gms/drive/internal/ah;
.super Lcom/google/android/gms/internal/pg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pg",
        "<",
        "Lcom/google/android/gms/drive/internal/ah;",
        ">;"
    }
.end annotation


# instance fields
.field public Pd:Ljava/lang/String;

.field public Pe:J

.field public Pf:J

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/ah;->ic()Lcom/google/android/gms/drive/internal/ah;

    return-void
.end method

.method public static g([B)Lcom/google/android/gms/drive/internal/ah;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/pl;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/internal/ah;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ah;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/pm;->a(Lcom/google/android/gms/internal/pm;[B)Lcom/google/android/gms/internal/pm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/ah;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/pf;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->s(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/ah;->Pd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->b(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->Pe:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/pf;->c(IJ)V

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->Pf:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/pf;->c(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/pg;->a(Lcom/google/android/gms/internal/pf;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/pm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/ah;->m(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/drive/internal/ah;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/pg;->c()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->u(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/ah;->Pd:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pf;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->Pe:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/pf;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->Pf:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/pf;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/drive/internal/ah;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/internal/ah;

    .end local p1
    iget v1, p0, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    iget v2, p1, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/ah;->Pd:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/ah;->Pd:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->Pe:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/ah;->Pe:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->Pf:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/ah;->Pf:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/ah;->a(Lcom/google/android/gms/internal/pg;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/ah;->Pd:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/ah;->Pd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget v0, p0, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/ah;->Pd:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->Pe:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/ah;->Pe:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->Pf:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/ah;->Pf:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/ah;->qx()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/ah;->Pd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public ic()Lcom/google/android/gms/drive/internal/ah;
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/ah;->Pd:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->Pe:J

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->Pf:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/ah;->awy:Lcom/google/android/gms/internal/pi;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/ah;->awJ:I

    return-object p0
.end method

.method public m(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/drive/internal/ah;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qg()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/drive/internal/ah;->a(Lcom/google/android/gms/internal/pe;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qj()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/ah;->Pd:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qm()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/ah;->Pe:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qm()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/ah;->Pf:J

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

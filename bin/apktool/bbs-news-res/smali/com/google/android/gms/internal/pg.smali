.class public abstract Lcom/google/android/gms/internal/pg;
.super Lcom/google/android/gms/internal/pm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/pg",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/pm;"
    }
.end annotation


# instance fields
.field protected awy:Lcom/google/android/gms/internal/pi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ph;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ph",
            "<TM;TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    iget v2, p1, Lcom/google/android/gms/internal/ph;->tag:I

    invoke-static {v2}, Lcom/google/android/gms/internal/pp;->gH(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/pi;->gD(I)Lcom/google/android/gms/internal/pj;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/pj;->b(Lcom/google/android/gms/internal/ph;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/pf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/pi;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/pi;->gE(I)Lcom/google/android/gms/internal/pj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/internal/pf;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/pe;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->getPosition()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/pe;->gm(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/pp;->gH(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/pe;->r(II)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/po;

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/po;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/pi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/pi;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/pj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pj;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/pi;->a(ILcom/google/android/gms/internal/pj;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/internal/po;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pi;->gD(I)Lcom/google/android/gms/internal/pj;

    move-result-object v0

    goto :goto_1
.end method

.method protected final a(Lcom/google/android/gms/internal/pg;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pi;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pi;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    iget-object v1, p1, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pi;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected c()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/pi;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/pi;->gE(I)Lcom/google/android/gms/internal/pj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/pj;->c()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method protected final qx()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pi;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->awy:Lcom/google/android/gms/internal/pi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pi;->hashCode()I

    move-result v0

    goto :goto_0
.end method

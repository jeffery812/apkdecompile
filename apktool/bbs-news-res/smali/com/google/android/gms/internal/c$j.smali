.class public final Lcom/google/android/gms/internal/c$j;
.super Lcom/google/android/gms/internal/pg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/pg",
        "<",
        "Lcom/google/android/gms/internal/c$j;",
        ">;"
    }
.end annotation


# instance fields
.field public gr:[Lcom/google/android/gms/internal/c$i;

.field public gs:Lcom/google/android/gms/internal/c$f;

.field public gt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/pg;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$j;->q()Lcom/google/android/gms/internal/c$j;

    return-void
.end method

.method public static b([B)Lcom/google/android/gms/internal/c$j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/pl;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/c$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/pm;->a(Lcom/google/android/gms/internal/pm;[B)Lcom/google/android/gms/internal/pm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/c$j;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/pf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/pf;->a(ILcom/google/android/gms/internal/pm;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->a(ILcom/google/android/gms/internal/pm;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/pf;->b(ILjava/lang/String;)V

    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$j;->k(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/c$j;

    move-result-object v0

    return-object v0
.end method

.method protected c()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/pg;->c()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/pf;->c(ILcom/google/android/gms/internal/pm;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/pf;->c(ILcom/google/android/gms/internal/pm;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/pf;->j(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
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
    instance-of v1, p1, Lcom/google/android/gms/internal/c$j;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/c$j;

    .end local p1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pk;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$j;->a(Lcom/google/android/gms/internal/pg;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/c$f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    invoke-static {v0}, Lcom/google/android/gms/internal/pk;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$j;->qx()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$f;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public k(Lcom/google/android/gms/internal/pe;)Lcom/google/android/gms/internal/c$j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qg()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$j;->a(Lcom/google/android/gms/internal/pe;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/pp;->b(Lcom/google/android/gms/internal/pe;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/c$i;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/c$i;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$i;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/pm;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->qg()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/c$i;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$i;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/pm;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/pm;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/pe;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public q()Lcom/google/android/gms/internal/c$j;
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/c$i;->o()[Lcom/google/android/gms/internal/c$i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->gr:[Lcom/google/android/gms/internal/c$i;

    iput-object v1, p0, Lcom/google/android/gms/internal/c$j;->gs:Lcom/google/android/gms/internal/c$f;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/c$j;->gt:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/c$j;->awy:Lcom/google/android/gms/internal/pi;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$j;->awJ:I

    return-object p0
.end method

.class public final Lcom/google/ads/interactivemedia/v3/a/i;
.super Lcom/google/ads/interactivemedia/v3/a/l;
.source "IMASDK"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/a/l;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/ads/interactivemedia/v3/a/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/l;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Number;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/l;->a()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/a/l;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    sget-object p1, Lcom/google/ads/interactivemedia/v3/a/n;->a:Lcom/google/ads/interactivemedia/v3/a/n;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final c()D
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/l;->c()D

    move-result-wide v0

    return-wide v0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/l;->d()J

    move-result-wide v0

    return-wide v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/l;->e()I

    move-result v0

    return v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 284
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/a/i;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/a/i;

    .end local p1
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/l;->f()Z

    move-result v0

    return v0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

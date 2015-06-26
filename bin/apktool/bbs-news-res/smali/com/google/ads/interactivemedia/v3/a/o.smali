.class public final Lcom/google/ads/interactivemedia/v3/a/o;
.super Lcom/google/ads/interactivemedia/v3/a/l;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/b/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/a/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/l;-><init>()V

    .line 33
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/g;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/a/l;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/google/ads/interactivemedia/v3/a/n;->a:Lcom/google/ads/interactivemedia/v3/a/n;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/ads/interactivemedia/v3/a/o;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/a/o;

    .end local p1
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/b/g;->equals(Ljava/lang/Object;)Z

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

.method public final hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/b/g;->hashCode()I

    move-result v0

    return v0
.end method

.method public final n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/a/l;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/o;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/b/g;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

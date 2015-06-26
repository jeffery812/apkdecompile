.class public final Lcom/google/ads/interactivemedia/v3/b/u;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:J

.field private final b:Lcom/google/ads/interactivemedia/v3/b/r$a;


# direct methods
.method constructor <init>(JLcom/google/ads/interactivemedia/v3/b/r$a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/b/u;->a:J

    .line 17
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/u;->b:Lcom/google/ads/interactivemedia/v3/b/r$a;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/b/u;->a:J

    return-wide v0
.end method

.method public final b()Lcom/google/ads/interactivemedia/v3/b/r$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/u;->b:Lcom/google/ads/interactivemedia/v3/b/r$a;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    if-ne p0, p1, :cond_1

    .line 58
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 45
    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    check-cast p1, Lcom/google/ads/interactivemedia/v3/b/u;

    .line 52
    .end local p1
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/b/u;->a:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/b/u;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    .line 53
    goto :goto_0

    .line 55
    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/u;->b:Lcom/google/ads/interactivemedia/v3/b/r$a;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/u;->b:Lcom/google/ads/interactivemedia/v3/b/r$a;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 56
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/b/u;->a:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/u;->b:Lcom/google/ads/interactivemedia/v3/b/r$a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/r$a;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeBridgeConfig [adTimeUpdateMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/b/u;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adUiStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/u;->b:Lcom/google/ads/interactivemedia/v3/b/r$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

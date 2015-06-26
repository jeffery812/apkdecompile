.class public final Lcom/google/ads/interactivemedia/v3/b/a/b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;


# instance fields
.field public adPosition:I

.field public isBumper:Z

.field public totalAds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->totalAds:I

    .line 13
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->adPosition:I

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->isBumper:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 62
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 46
    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    check-cast p1, Lcom/google/ads/interactivemedia/v3/b/a/b;

    .line 53
    .end local p1
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->adPosition:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/b;->adPosition:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_4
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->isBumper:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/b;->isBumper:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_5
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->totalAds:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/b;->totalAds:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 60
    goto :goto_0
.end method

.method public final getAdPosition()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->adPosition:I

    return v0
.end method

.method public final getTotalAds()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->totalAds:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->adPosition:I

    add-int/lit8 v0, v0, 0x1f

    .line 36
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->isBumper:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->totalAds:I

    add-int/2addr v0, v1

    .line 38
    return v0

    .line 36
    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public final isBumper()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->isBumper:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdPodInfo [totalAds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->totalAds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->adPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isBumper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/b;->isBumper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

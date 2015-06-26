.class public final Lcom/google/ads/interactivemedia/v3/b/a/a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/Ad;


# instance fields
.field private adId:Ljava/lang/String;

.field private adPodInfo:Lcom/google/ads/interactivemedia/v3/b/a/b;

.field private adSystem:Ljava/lang/String;

.field private adWrapperIds:[Ljava/lang/String;

.field private adWrapperSystems:[Ljava/lang/String;

.field private clickThroughUrl:Ljava/lang/String;

.field private duration:D

.field private height:I

.field private linear:Z

.field private selectedMediaUrl:Ljava/lang/String;

.field private skippable:Z

.field private traffickingParameters:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/a/b;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adPodInfo:Lcom/google/ads/interactivemedia/v3/b/a/b;

    .line 30
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 199
    if-ne p0, p1, :cond_1

    .line 256
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 202
    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 203
    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 206
    goto :goto_0

    .line 208
    :cond_3
    check-cast p1, Lcom/google/ads/interactivemedia/v3/b/a/a;

    .line 209
    .end local p1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 210
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->adId:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 211
    goto :goto_0

    .line 213
    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->adId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 214
    goto :goto_0

    .line 216
    :cond_5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adSystem:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 217
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->adSystem:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 218
    goto :goto_0

    .line 220
    :cond_6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adSystem:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->adSystem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 221
    goto :goto_0

    .line 223
    :cond_7
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adPodInfo:Lcom/google/ads/interactivemedia/v3/b/a/b;

    if-nez v2, :cond_8

    .line 224
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->adPodInfo:Lcom/google/ads/interactivemedia/v3/b/a/b;

    if-eqz v2, :cond_9

    move v0, v1

    .line 225
    goto :goto_0

    .line 227
    :cond_8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adPodInfo:Lcom/google/ads/interactivemedia/v3/b/a/b;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->adPodInfo:Lcom/google/ads/interactivemedia/v3/b/a/b;

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/b/a/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 228
    goto :goto_0

    .line 230
    :cond_9
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->clickThroughUrl:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 231
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->clickThroughUrl:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v0, v1

    .line 232
    goto :goto_0

    .line 234
    :cond_a
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->clickThroughUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->clickThroughUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 235
    goto :goto_0

    .line 237
    :cond_b
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->duration:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->duration:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :cond_c
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->height:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->height:I

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 241
    goto/16 :goto_0

    .line 243
    :cond_d
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->linear:Z

    iget-boolean v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->linear:Z

    if-eq v2, v3, :cond_e

    move v0, v1

    .line 244
    goto/16 :goto_0

    .line 246
    :cond_e
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->traffickingParameters:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 247
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->traffickingParameters:Ljava/lang/String;

    if-eqz v2, :cond_10

    move v0, v1

    .line 248
    goto/16 :goto_0

    .line 250
    :cond_f
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->traffickingParameters:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->traffickingParameters:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move v0, v1

    .line 251
    goto/16 :goto_0

    .line 253
    :cond_10
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->width:I

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/a;->width:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 254
    goto/16 :goto_0
.end method

.method public final getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adPodInfo:Lcom/google/ads/interactivemedia/v3/b/a/b;

    return-object v0
.end method

.method public final getAdSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adSystem:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdWrapperIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adWrapperIds:[Ljava/lang/String;

    return-object v0
.end method

.method public final getAdWrapperSystems()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adWrapperSystems:[Ljava/lang/String;

    return-object v0
.end method

.method public final getClickThruUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->clickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()D
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->duration:D

    return-wide v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->height:I

    return v0
.end method

.method public final getSelectedMediaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->selectedMediaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTraffickingParameters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->traffickingParameters:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->width:I

    return v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adId:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 184
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adPodInfo:Lcom/google/ads/interactivemedia/v3/b/a/b;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 185
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->clickThroughUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 187
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->duration:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 188
    mul-int/lit8 v0, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 189
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->height:I

    add-int/2addr v0, v2

    .line 190
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->linear:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    :goto_3
    add-int/2addr v0, v2

    .line 191
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->traffickingParameters:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 193
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->width:I

    add-int/2addr v0, v1

    .line 194
    return v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adPodInfo:Lcom/google/ads/interactivemedia/v3/b/a/b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/a/b;->hashCode()I

    move-result v0

    goto :goto_1

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->clickThroughUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 190
    :cond_3
    const/16 v0, 0x4d5

    goto :goto_3

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->traffickingParameters:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public final isLinear()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->linear:Z

    return v0
.end method

.method public final isSkippable()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->skippable:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad [adId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adWrapperIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adWrapperIds:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adWrapperSystems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adWrapperSystems:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adSystem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", linear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->linear:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", traffickingParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->traffickingParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickThroughUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->clickThroughUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->duration:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adPodInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/a;->adPodInfo:Lcom/google/ads/interactivemedia/v3/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

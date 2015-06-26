.class public Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
.super Ljava/lang/Object;
.source "IMASDK"


# static fields
.field public static final VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;


# instance fields
.field private currentTime:F

.field private duration:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 8
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 14
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    .line 15
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3
    .parameter "currentTimeMillis"
    .parameter "durationMillis"

    .prologue
    const/high16 v1, 0x447a

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    long-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->currentTime:F

    .line 19
    long-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->duration:F

    .line 20
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    if-ne p0, p1, :cond_1

    .line 48
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 35
    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 39
    goto :goto_0

    .line 41
    :cond_3
    check-cast p1, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    .line 42
    .end local p1
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->currentTime:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->currentTime:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 43
    goto :goto_0

    .line 45
    :cond_4
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->duration:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->duration:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public getCurrentTime()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->currentTime:F

    return v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->duration:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoProgressUpdate [currentTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->currentTime:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->duration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

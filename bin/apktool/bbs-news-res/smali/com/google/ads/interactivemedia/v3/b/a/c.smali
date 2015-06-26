.class public final Lcom/google/ads/interactivemedia/v3/b/a/c;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/a/c$a;
    }
.end annotation


# instance fields
.field public clickThroughUrl:Ljava/lang/String;

.field public companionId:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public src:Ljava/lang/String;

.field public type:Lcom/google/ads/interactivemedia/v3/b/a/c$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    if-ne p0, p1, :cond_1

    .line 59
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 26
    .restart local p1
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 27
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 30
    goto :goto_0

    .line 32
    :cond_3
    check-cast p1, Lcom/google/ads/interactivemedia/v3/b/a/c;

    .line 33
    .end local p1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->clickThroughUrl:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 34
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/b/a/c;->clickThroughUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 35
    goto :goto_0

    .line 37
    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->clickThroughUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/c;->clickThroughUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 38
    goto :goto_0

    .line 40
    :cond_5
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->companionId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/b/a/c;->companionId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->companionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/c;->companionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 43
    goto :goto_0

    .line 45
    :cond_6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->size:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 46
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/b/a/c;->size:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 47
    goto :goto_0

    .line 49
    :cond_7
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->size:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/c;->size:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_8
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->src:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 53
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/b/a/c;->src:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_9
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->src:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/a/c;->src:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 57
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CompanionData [companionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->companionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickThroughUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/a/c;->clickThroughUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

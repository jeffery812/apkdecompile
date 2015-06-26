.class public final Lcom/google/ads/interactivemedia/v3/b/c;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdEvent;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

.field private b:Lcom/google/ads/interactivemedia/v3/api/Ad;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/api/Ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/c;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    .line 18
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/c;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    .line 19
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 64
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 50
    .restart local p1
    :cond_1
    instance-of v2, p1, Lcom/google/ads/interactivemedia/v3/b/c;

    if-nez v2, :cond_2

    move v0, v1

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    check-cast p1, Lcom/google/ads/interactivemedia/v3/b/c;

    .line 54
    .end local p1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/c;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    if-nez v2, :cond_3

    .line 55
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/b/c;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    if-eqz v2, :cond_4

    move v0, v1

    .line 56
    goto :goto_0

    .line 58
    :cond_3
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/c;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/c;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_4
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/c;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/b/c;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public final getAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/c;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    return-object v0
.end method

.method public final getType()Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/c;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    const-string v0, "AdEvent[type=%s, ad=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/c;->a:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/c;->b:Lcom/google/ads/interactivemedia/v3/api/Ad;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

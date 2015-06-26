.class public final Lcom/google/ads/interactivemedia/v3/b/j;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsRequest;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private transient e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/j;->b:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    return-object v0
.end method

.method public final getAdTagUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getAdsResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtraParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/j;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getExtraParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/j;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final getUserRequestContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/j;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final setAdDisplayContainer(Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;)V
    .locals 0
    .parameter "adDisplayContainer"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/j;->b:Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    .line 106
    return-void
.end method

.method public final setAdTagUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "adTagUrl"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/j;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public final setAdsResponse(Ljava/lang/String;)V
    .locals 0
    .parameter "cannedAdResponse"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/j;->d:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public final setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/j;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/j;->c:Ljava/util/Map;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public final setUserRequestContext(Ljava/lang/Object;)V
    .locals 0
    .parameter "userRequestContext"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/j;->e:Ljava/lang/Object;

    .line 80
    return-void
.end method

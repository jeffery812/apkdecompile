.class public final Lcom/google/ads/interactivemedia/v3/b/g;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdsManager;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/g;->a:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    .line 19
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/g;->b:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public final getAdsManager()Lcom/google/ads/interactivemedia/v3/api/AdsManager;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->a:Lcom/google/ads/interactivemedia/v3/api/AdsManager;

    return-object v0
.end method

.method public final getUserRequestContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/g;->b:Ljava/lang/Object;

    return-object v0
.end method

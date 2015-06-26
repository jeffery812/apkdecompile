.class public interface abstract Lcom/google/ads/interactivemedia/v3/api/AdsManager;
.super Ljava/lang/Object;
.source "IMASDK"


# virtual methods
.method public abstract addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
.end method

.method public abstract addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getAdCuePoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
.end method

.method public abstract init()V
.end method

.method public abstract init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
.end method

.method public abstract removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
.end method

.method public abstract removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
.end method

.method public abstract skip()V
.end method

.method public abstract start()V
.end method

.class final Lcom/google/ads/interactivemedia/v3/b/m;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/b/v;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/b/v;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/m;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 16
    return-void
.end method


# virtual methods
.method public final onEnded()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/m;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->c()V

    .line 36
    return-void
.end method

.method public final onError()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/m;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->c()V

    .line 41
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/m;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->c()V

    .line 26
    return-void
.end method

.method public final onPlay()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/m;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->a()V

    .line 21
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/m;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->a()V

    .line 31
    return-void
.end method

.method public final onVolumeChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 46
    return-void
.end method

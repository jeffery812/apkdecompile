.class public final Lcom/google/ads/interactivemedia/v3/b/o;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/o;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/o;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;

    .line 34
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;->onAdError(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/o;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.class final Lcom/google/ads/interactivemedia/v3/b/e$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/e;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/b;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v2, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/b/e;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/e;->a(Lcom/google/ads/interactivemedia/v3/b/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/b/b;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/b/e;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/e;->d(Lcom/google/ads/interactivemedia/v3/b/e;)Lcom/google/ads/interactivemedia/v3/b/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 132
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/b;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    invoke-direct {v2, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/b/e;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/e;->a(Lcom/google/ads/interactivemedia/v3/b/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/b/b;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/b/e;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/e;->d(Lcom/google/ads/interactivemedia/v3/b/e;)Lcom/google/ads/interactivemedia/v3/b/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 139
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/u;Ljava/util/List;Ljava/util/SortedSet;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/u;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/b/e;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/e;->a(Lcom/google/ads/interactivemedia/v3/b/e;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;

    .line 113
    new-instance v7, Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/b/u;->a()J

    move-result-wide v2

    invoke-direct {v7, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/v;-><init>(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;J)V

    .line 116
    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/b/e;

    new-instance v11, Lcom/google/ads/interactivemedia/v3/b/g;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/b/e;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/e;->b(Lcom/google/ads/interactivemedia/v3/b/e;)Lcom/google/ads/interactivemedia/v3/b/s;

    move-result-object v2

    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/b/e;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/b/e;->c(Lcom/google/ads/interactivemedia/v3/b/e;)Landroid/content/Context;

    move-result-object v8

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/b/f;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/s;Lcom/google/ads/interactivemedia/v3/b/u;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/b/v;Landroid/content/Context;)V

    invoke-interface {v9}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getUserRequestContext()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/g;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdsManager;Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Lcom/google/ads/interactivemedia/v3/b/e;->a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V

    .line 125
    return-void
.end method

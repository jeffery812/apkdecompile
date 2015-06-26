.class public final Lcom/google/ads/interactivemedia/v3/b/e;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsLoader;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/b/s;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/ads/interactivemedia/v3/b/o;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/AdsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/a/a/f;

.field private g:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/b/s;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/b/e;-><init>(Lcom/google/ads/interactivemedia/v3/b/s;Landroid/content/Context;)V

    .line 70
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/b/e;->g:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 71
    return-void
.end method

.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/b/s;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/o;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/o;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->c:Lcom/google/ads/interactivemedia/v3/b/o;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->d:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->e:Ljava/util/Map;

    .line 63
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->g:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    .line 74
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/e;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    .line 75
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/e;->b:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/google/a/a/f;

    const-string v1, "a.3.0b2"

    invoke-direct {v0, v1, p2}, Lcom/google/a/a/f;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->f:Lcom/google/a/a/f;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/b/e;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/b/e;)Lcom/google/ads/interactivemedia/v3/b/s;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/b/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/b/e;)Lcom/google/ads/interactivemedia/v3/b/o;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->c:Lcom/google/ads/interactivemedia/v3/b/o;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;

    .line 233
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;->onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/api/AdsManagerLoadedEvent;)V

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method public final addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1
    .parameter "errorListener"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->c:Lcom/google/ads/interactivemedia/v3/b/o;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 221
    return-void
.end method

.method public final addAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .locals 1
    .parameter "loadedListener"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public final contentComplete()V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/r$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/r$c;->contentComplete:Lcom/google/ads/interactivemedia/v3/b/r$c;

    const-string v4, "*"

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 87
    return-void
.end method

.method public final getSettings()Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->g:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    return-object v0
.end method

.method public final removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1
    .parameter "errorListener"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->c:Lcom/google/ads/interactivemedia/v3/b/o;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/o;->b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 229
    return-void
.end method

.method public final removeAdsLoadedListener(Lcom/google/ads/interactivemedia/v3/api/AdsLoader$AdsLoadedListener;)V
    .locals 1
    .parameter "loadedListener"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public final requestAds(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)V
    .locals 10
    .parameter "adsRequest"

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ima_sid_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const v4, 0x3b9aca00

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->c:Lcom/google/ads/interactivemedia/v3/b/o;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/b/b;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v8, "AdsRequest cannot be null."

    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/b/b;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->e:Ljava/util/Map;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/b/e$1;

    invoke-direct {v4, p0}, Lcom/google/ads/interactivemedia/v3/b/e$1;-><init>(Lcom/google/ads/interactivemedia/v3/b/e;)V

    invoke-virtual {v0, v4, v3}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Lcom/google/ads/interactivemedia/v3/b/s$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/e;->f:Lcom/google/a/a/f;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/e;->f:Lcom/google/a/a/f;

    invoke-virtual {v4, v0}, Lcom/google/a/a/f;->a(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/e;->f:Lcom/google/a/a/f;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/b/e;->b:Landroid/content/Context;

    invoke-virtual {v4, v0, v5}, Lcom/google/a/a/f;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/a/a/g; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    new-instance v4, Lcom/google/ads/interactivemedia/v3/b/a/d;

    const-string v0, "android%s:%s:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v6, v5, v1

    const-string v6, "3.0b2"

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/b/e;->b:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->b:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "IMASDK"

    const-string v1, "Host application doesn\'t have ACCESS_NETWORK_STATE permission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android:0"

    :goto_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/e;->g:Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;

    invoke-direct {v4, p1, v5, v0, v1}, Lcom/google/ads/interactivemedia/v3/b/a/d;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdsRequest;Ljava/lang/String;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/r$b;->adsLoader:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/r$c;->requestAds:Lcom/google/ads/interactivemedia/v3/b/r$c;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/e;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 100
    :cond_1
    return-void

    .line 99
    :cond_2
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdDisplayContainer()Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->c:Lcom/google/ads/interactivemedia/v3/b/o;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/b/b;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v8, "Ad display container must be provided in the AdsRequest."

    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/b/b;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->c:Lcom/google/ads/interactivemedia/v3/b/o;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/b/b;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v8, "Ad display container must have a UI container."

    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/b/b;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->getAdTagUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->c:Lcom/google/ads/interactivemedia/v3/b/o;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/b/b;

    new-instance v5, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v6, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v7, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v8, "Ad tag url must non-null and non empty."

    invoke-direct {v5, v6, v7, v8}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/google/ads/interactivemedia/v3/b/b;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/e;->b:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "android:0"

    goto/16 :goto_2

    :cond_8
    const-string v6, "android:%d:%d"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.class public final Lcom/google/ads/interactivemedia/v3/b/f;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/f$1;,
        Lcom/google/ads/interactivemedia/v3/b/f$a;
    }
.end annotation


# instance fields
.field a:Lcom/google/ads/interactivemedia/v3/b/v;

.field private final b:Lcom/google/ads/interactivemedia/v3/b/s;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

.field private e:Lcom/google/ads/interactivemedia/v3/b/a/a;

.field private f:Lcom/google/ads/interactivemedia/v3/b/n;

.field private g:Lcom/google/ads/interactivemedia/v3/b/d;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/ads/interactivemedia/v3/b/h;

.field private j:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/ads/interactivemedia/v3/b/o;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/s;Lcom/google/ads/interactivemedia/v3/b/u;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Ljava/util/List;Ljava/util/SortedSet;Lcom/google/ads/interactivemedia/v3/b/v;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/s;",
            "Lcom/google/ads/interactivemedia/v3/b/u;",
            "Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/ads/interactivemedia/v3/b/v;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->k:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/o;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/o;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->l:Lcom/google/ads/interactivemedia/v3/b/o;

    .line 60
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/h;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/b/h;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/u;Lcom/google/ads/interactivemedia/v3/b/s;Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->i:Lcom/google/ads/interactivemedia/v3/b/h;

    .line 62
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->c:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    .line 64
    invoke-interface {p4}, Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;->getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->d:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 65
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/b/f;->h:Ljava/util/List;

    .line 66
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/b/f;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    .line 68
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->i:Lcom/google/ads/interactivemedia/v3/b/h;

    invoke-virtual {p7, v0}, Lcom/google/ads/interactivemedia/v3/b/v;->a(Lcom/google/ads/interactivemedia/v3/b/v$a;)V

    .line 69
    if-eqz p6, :cond_0

    invoke-interface {p6}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/n;

    invoke-direct {v0, p2, p6, p1}, Lcom/google/ads/interactivemedia/v3/b/n;-><init>(Lcom/google/ads/interactivemedia/v3/b/s;Ljava/util/SortedSet;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->f:Lcom/google/ads/interactivemedia/v3/b/n;

    .line 71
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->f:Lcom/google/ads/interactivemedia/v3/b/n;

    invoke-virtual {p7, v0}, Lcom/google/ads/interactivemedia/v3/b/v;->c(Lcom/google/ads/interactivemedia/v3/b/v$a;)V

    .line 72
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/m;

    invoke-direct {v0, p7}, Lcom/google/ads/interactivemedia/v3/b/m;-><init>(Lcom/google/ads/interactivemedia/v3/b/v;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->j:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    .line 74
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/a/a;)Lcom/google/ads/interactivemedia/v3/b/a/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->e:Lcom/google/ads/interactivemedia/v3/b/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/b/f;Lcom/google/ads/interactivemedia/v3/b/d;)Lcom/google/ads/interactivemedia/v3/b/d;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->g:Lcom/google/ads/interactivemedia/v3/b/d;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/s;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    return-object v0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/b/r$c;)V
    .locals 4
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/r$b;->adsManager:Lcom/google/ads/interactivemedia/v3/b/r$b;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/f;->c:Ljava/lang/String;

    invoke-direct {v1, v2, p1, v3}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 176
    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/b/f;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/d;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->g:Lcom/google/ads/interactivemedia/v3/b/d;

    return-object v0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->d:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    return-object v0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->j:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    return-object v0
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/a/a;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->e:Lcom/google/ads/interactivemedia/v3/b/a/a;

    return-object v0
.end method

.method static synthetic g(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/h;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->i:Lcom/google/ads/interactivemedia/v3/b/h;

    return-object v0
.end method

.method static synthetic h(Lcom/google/ads/interactivemedia/v3/b/f;)Lcom/google/ads/interactivemedia/v3/b/o;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->l:Lcom/google/ads/interactivemedia/v3/b/o;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;)V
    .locals 3
    .parameter

    .prologue
    .line 179
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/c;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->e:Lcom/google/ads/interactivemedia/v3/b/a/a;

    invoke-direct {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/b/c;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/api/Ad;)V

    .line 180
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;

    .line 181
    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;->onAdEvent(Lcom/google/ads/interactivemedia/v3/api/AdEvent;)V

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method public final addAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1
    .parameter "errorListener"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->l:Lcom/google/ads/interactivemedia/v3/b/o;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 143
    return-void
.end method

.method public final addAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 1
    .parameter "adEventListener"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public final destroy()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->a:Lcom/google/ads/interactivemedia/v3/b/v;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/v;->c()V

    .line 120
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->d:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->g:Lcom/google/ads/interactivemedia/v3/b/d;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    .line 121
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->j:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->d:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->j:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V

    .line 124
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/r$c;->destroy:Lcom/google/ads/interactivemedia/v3/b/r$c;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;)V

    .line 125
    return-void
.end method

.method public final getAdCuePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->h:Ljava/util/List;

    return-object v0
.end method

.method public final getCurrentAd()Lcom/google/ads/interactivemedia/v3/api/Ad;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->e:Lcom/google/ads/interactivemedia/v3/b/a/a;

    return-object v0
.end method

.method public final init()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V

    .line 82
    return-void
.end method

.method public final init(Lcom/google/ads/interactivemedia/v3/api/AdsRenderingSettings;)V
    .locals 6
    .parameter "settings"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/ads/interactivemedia/v3/b/f$a;-><init>(Lcom/google/ads/interactivemedia/v3/b/f;B)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Lcom/google/ads/interactivemedia/v3/b/s$b;Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    const-string v1, "adsRenderingSettings"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/r$b;->adsManager:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/r$c;->init:Lcom/google/ads/interactivemedia/v3/b/r$c;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/b/f;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 96
    return-void
.end method

.method public final removeAdErrorListener(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V
    .locals 1
    .parameter "errorListener"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->l:Lcom/google/ads/interactivemedia/v3/b/o;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/b/o;->b(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent$AdErrorListener;)V

    .line 151
    return-void
.end method

.method public final removeAdEventListener(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventListener;)V
    .locals 1
    .parameter "adEventListener"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public final skip()V
    .locals 5

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/r$b;->adsManager:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/r$c;->skip:Lcom/google/ads/interactivemedia/v3/b/r$c;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/b/f;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    .line 172
    return-void
.end method

.method public final start()V
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->d:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->l:Lcom/google/ads/interactivemedia/v3/b/o;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/b;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/api/AdError;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v5, "Ad Display Container must contain a non-null video player."

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/api/AdError;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/b/b;-><init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/o;->a(Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/f;->b:Lcom/google/ads/interactivemedia/v3/b/s;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/f;->d:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/r$c;->start:Lcom/google/ads/interactivemedia/v3/b/r$c;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/f;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;)V

    goto :goto_0
.end method

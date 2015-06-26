.class public final Lcom/google/ads/interactivemedia/v3/b/s;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/t$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/s$1;,
        Lcom/google/ads/interactivemedia/v3/b/s$c;,
        Lcom/google/ads/interactivemedia/v3/b/s$a;,
        Lcom/google/ads/interactivemedia/v3/b/s$b;
    }
.end annotation


# static fields
.field private static a:Lcom/google/ads/interactivemedia/v3/b/s;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/s$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/b/s$c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/ads/interactivemedia/v3/b/t;

.field private i:Lcom/google/ads/interactivemedia/v3/b/u;

.field private j:Z

.field private k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/r;",
            ">;"
        }
    .end annotation
.end field

.field private l:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->b:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->c:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->d:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->e:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->f:Ljava/util/Map;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->j:Z

    .line 141
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->k:Ljava/util/Queue;

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->l:J

    .line 148
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/s;->g:Landroid/content/Context;

    .line 149
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-direct {v0, p1, p0}, Lcom/google/ads/interactivemedia/v3/b/t;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/t$a;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->h:Lcom/google/ads/interactivemedia/v3/b/t;

    .line 150
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->h:Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/b/t;->a(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;)Lcom/google/ads/interactivemedia/v3/b/s;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/s;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "sdk_version"

    const-string v2, "a.3.0b2"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "hl"

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/api/ImaSdkSettings;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/s;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/ads/interactivemedia/v3/b/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/google/ads/interactivemedia/v3/b/s;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    .line 98
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/b/s;->a:Lcom/google/ads/interactivemedia/v3/b/s;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 456
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/b/a;Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/b/a;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 310
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    .line 312
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getContainer()Landroid/view/ViewGroup;

    move-result-object v4

    if-nez v4, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 317
    :goto_1
    return-object v0

    .line 315
    :cond_0
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;->getContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 317
    goto :goto_1
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/a/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/a;

    .line 264
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/s;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/b/s$b;

    .line 266
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 267
    :cond_0
    const-string v0, "IMASDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received displayContainer message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for invalid session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 270
    :cond_2
    sget-object v2, Lcom/google/ads/interactivemedia/v3/b/s$1;->b:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/r$c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received for displayContainer channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_1
    if-eqz p3, :cond_3

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/b/a/e;->companions:Ljava/util/Map;

    if-nez v2, :cond_4

    .line 273
    :cond_3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Display companions message requires companions in data."

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_4
    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/b/a/e;->companions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Lcom/google/ads/interactivemedia/v3/b/a;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v3

    .line 281
    if-nez v3, :cond_5

    .line 282
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Display requested for invalid companion slot."

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_5
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 286
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p3, Lcom/google/ads/interactivemedia/v3/b/a/e;->companions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/b/a/c;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v2, 0x0

    sget-object v5, Lcom/google/ads/interactivemedia/v3/b/s$1;->c:[I

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/b/a/c;->type:Lcom/google/ads/interactivemedia/v3/b/a/c$a;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/b/a/c$a;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :pswitch_2
    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/l;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, p0, v1}, Lcom/google/ads/interactivemedia/v3/b/l;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/s;Lcom/google/ads/interactivemedia/v3/b/a/c;)V

    move-object v1, v2

    goto :goto_2

    :pswitch_3
    new-instance v2, Lcom/google/ads/interactivemedia/v3/b/q;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, p0, v1, p2}, Lcom/google/ads/interactivemedia/v3/b/q;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/s;Lcom/google/ads/interactivemedia/v3/b/a/c;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_2

    .line 270
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 286
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b()V
    .locals 2

    .prologue
    .line 492
    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/s;->h:Lcom/google/ads/interactivemedia/v3/b/t;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/r;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/b/t;->a(Lcom/google/ads/interactivemedia/v3/b/r;)V

    goto :goto_0

    .line 495
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->h:Lcom/google/ads/interactivemedia/v3/b/t;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/b/t;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->f:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->e:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/r;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 176
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/r;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/a/e;

    .line 177
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/r;->d()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/r;->b()Lcom/google/ads/interactivemedia/v3/b/r$c;

    move-result-object v4

    .line 179
    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/s$1;->a:[I

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/r;->a()Lcom/google/ads/interactivemedia/v3/b/r$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/b/r$b;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    .line 198
    const-string v0, "IMASDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown message channel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/b/r;->a()Lcom/google/ads/interactivemedia/v3/b/r$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 181
    :pswitch_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/s;->b:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/b/s$b;

    if-nez v1, :cond_1

    const-string v0, "IMASDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Received manager message: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for invalid session id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_b

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->adData:Lcom/google/ads/interactivemedia/v3/b/a/a;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->adData:Lcom/google/ads/interactivemedia/v3/b/a/a;

    :goto_1
    sget-object v5, Lcom/google/ads/interactivemedia/v3/b/s$1;->b:[I

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/b/r$c;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received for manager channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    if-eqz v2, :cond_2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->LOADED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto :goto_0

    :cond_2
    const-string v0, "IMASDK"

    const-string v2, "Ad loaded message requires adData"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Ad loaded message did not contain adData."

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_PAUSE_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v3}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CONTENT_RESUME_REQUESTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v3}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v3}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->SKIPPED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto/16 :goto_0

    :pswitch_9
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->STARTED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->PAUSED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->RESUMED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->FIRST_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto/16 :goto_0

    :pswitch_d
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->MIDPOINT:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto/16 :goto_0

    :pswitch_e
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->THIRD_QUARTILE:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto/16 :goto_0

    :pswitch_f
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->CLICKED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-interface {v1, v0, v2}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;Lcom/google/ads/interactivemedia/v3/b/a/a;)V

    goto/16 :goto_0

    :pswitch_10
    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->PLAY:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->errorCode:I

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->errorMessage:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->innerError:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :pswitch_11
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/s;->e:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    if-nez v1, :cond_3

    const-string v0, "IMASDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Received player message: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for invalid session id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/s$1;->b:[I

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/b/r$c;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received for player channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    if-eqz v0, :cond_4

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->videoUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->videoUrl:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->loadAd(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->playAd()V

    goto/16 :goto_0

    :pswitch_13
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->pauseAd()V

    goto/16 :goto_0

    :pswitch_14
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->videoUrl:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->videoUrl:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;->loadAd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "IMASDK"

    const-string v1, "Load message must contain video url"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/s$b;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v3, "Loading message did not contain a video url."

    invoke-interface {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/s$b;->a(Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    :pswitch_15
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/s;->c:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/b/s$a;

    if-nez v1, :cond_6

    const-string v0, "IMASDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Received request message: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for invalid session id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lcom/google/ads/interactivemedia/v3/b/s$1;->b:[I

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/b/r$c;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received for request channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16
    if-nez v0, :cond_7

    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v4, "adsLoaded message did not contain cue points."

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/b/s$a;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/s;->i:Lcom/google/ads/interactivemedia/v3/b/u;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->adCuePoints:Ljava/util/List;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->internalCuePoints:Ljava/util/SortedSet;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/b/s$a;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/u;Ljava/util/List;Ljava/util/SortedSet;)V

    goto/16 :goto_0

    :pswitch_17
    sget-object v3, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;->LOAD:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->errorCode:I

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->errorMessage:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->innerError:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/b/s$a;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorType;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :pswitch_18
    invoke-direct {p0, v4, v2, v0}, Lcom/google/ads/interactivemedia/v3/b/s;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/b/a/e;)V

    goto/16 :goto_0

    .line 193
    :pswitch_19
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/s;->d:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/b/s$c;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->translation:Ljava/lang/String;

    invoke-interface {v1, v4, v0}, Lcom/google/ads/interactivemedia/v3/b/s$c;->a(Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :pswitch_1a
    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/s$1;->b:[I

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/b/r$c;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received for other channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/r$a;->b:Lcom/google/ads/interactivemedia/v3/b/r$a;

    :try_start_0
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->adUiStyle:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->adUiStyle:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/b/r$a;->valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/b/r$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_8
    :goto_2
    new-instance v3, Lcom/google/ads/interactivemedia/v3/b/u;

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->adTimeUpdateMs:J

    invoke-direct {v3, v4, v5, v1}, Lcom/google/ads/interactivemedia/v3/b/u;-><init>(JLcom/google/ads/interactivemedia/v3/b/r$a;)V

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/s;->i:Lcom/google/ads/interactivemedia/v3/b/u;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->j:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/b/s;->l:J

    sub-long/2addr v0, v4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "webViewLoadingTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/r;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/b/r$b;->webViewLoaded:Lcom/google/ads/interactivemedia/v3/b/r$b;

    sget-object v4, Lcom/google/ads/interactivemedia/v3/b/r$c;->csi:Lcom/google/ads/interactivemedia/v3/b/r$c;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/b/r;-><init>(Lcom/google/ads/interactivemedia/v3/b/r$b;Lcom/google/ads/interactivemedia/v3/b/r$c;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/s;->b(Lcom/google/ads/interactivemedia/v3/b/r;)V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/s;->b()V

    goto/16 :goto_0

    :pswitch_1c
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->ln:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->n:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->m:Ljava/lang/String;

    if-nez v1, :cond_a

    :cond_9
    const-string v1, "IMASDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid logging message data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK_LOG:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->ln:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-string v2, "IMASDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unrecognized log level: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->ln:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_0
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/b/a/e;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_2

    :cond_b
    move-object v2, v3

    goto/16 :goto_1

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_11
        :pswitch_15
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    .line 181
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_10
        :pswitch_2
        :pswitch_a
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 182
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 185
    :pswitch_data_3
    .packed-switch 0x6
        :pswitch_16
        :pswitch_17
    .end packed-switch

    .line 197
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x45 -> :sswitch_1
        0x49 -> :sswitch_2
        0x53 -> :sswitch_1
        0x56 -> :sswitch_3
        0x57 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/s$a;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->c:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/s$b;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->b:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/s$c;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->d:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/b/r;)V
    .locals 1
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/s;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/b/s;->b()V

    .line 489
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 498
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 499
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/s;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 500
    return-void
.end method

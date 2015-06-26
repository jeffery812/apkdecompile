.class public final Lcom/google/ads/interactivemedia/v3/b/a;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdDisplayContainer;


# static fields
.field private static e:I


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

.field private b:Landroid/view/ViewGroup;

.field private c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
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
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/google/ads/interactivemedia/v3/b/a;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->c:Ljava/util/Collection;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->d:Ljava/util/Map;

    .line 77
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;

    .line 78
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/a;->d:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "compSlot_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/google/ads/interactivemedia/v3/b/a;->e:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/google/ads/interactivemedia/v3/b/a;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final getAdContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final getCompanionSlots()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public final getPlayer()Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/a;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    return-object v0
.end method

.method public final setAdContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/a;->b:Landroid/view/ViewGroup;

    .line 56
    return-void
.end method

.method public final setCompanionSlots(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, companionSlots:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/ads/interactivemedia/v3/api/CompanionAdSlot;>;"
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/a;->c:Ljava/util/Collection;

    .line 72
    return-void
.end method

.method public final setPlayer(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;)V
    .locals 0
    .parameter "player"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/a;->a:Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer;

    .line 40
    return-void
.end method

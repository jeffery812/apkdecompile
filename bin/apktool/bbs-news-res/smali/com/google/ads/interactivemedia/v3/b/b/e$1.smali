.class final Lcom/google/ads/interactivemedia/v3/b/b/e$1;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/b/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/b/e;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/b/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/e$1;->a:Lcom/google/ads/interactivemedia/v3/b/b/e;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/b/b/e;->a(Lcom/google/ads/interactivemedia/v3/b/b/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/b/e$a;

    .line 141
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/b/e$a;->b()V

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

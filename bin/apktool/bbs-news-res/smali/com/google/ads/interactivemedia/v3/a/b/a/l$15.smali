.class final Lcom/google/ads/interactivemedia/v3/a/b/a/l$15;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 524
    :goto_0
    return-object v0

    .line 523
    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v1

    .line 524
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l$15$1;

    invoke-direct {v0, p0, v1}, Lcom/google/ads/interactivemedia/v3/a/b/a/l$15$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/a/l$15;Lcom/google/ads/interactivemedia/v3/a/w;)V

    goto :goto_0
.end method

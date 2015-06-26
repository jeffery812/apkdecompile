.class abstract Lcom/google/ads/interactivemedia/v3/a/b/g$c;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/ads/interactivemedia/v3/a/b/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/ads/interactivemedia/v3/a/b/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/google/ads/interactivemedia/v3/a/b/g;


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/g;)V
    .locals 1
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->e:Lcom/google/ads/interactivemedia/v3/a/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->e:Lcom/google/ads/interactivemedia/v3/a/b/g;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/b/g;->e:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/a/b/g$d;->d:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->b:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->c:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    .line 529
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->e:Lcom/google/ads/interactivemedia/v3/a/b/g;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/b/g;->d:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/g;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/g$c;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/g;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/google/ads/interactivemedia/v3/a/b/g$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/a/b/g$d",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->b:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    .line 537
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->e:Lcom/google/ads/interactivemedia/v3/a/b/g;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/b/g;->e:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    if-ne v0, v1, :cond_0

    .line 538
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 540
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->e:Lcom/google/ads/interactivemedia/v3/a/b/g;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/a/b/g;->d:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->d:I

    if-eq v1, v2, :cond_1

    .line 541
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 543
    :cond_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/a/b/g$d;->d:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->b:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    .line 544
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->c:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->b:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->e:Lcom/google/ads/interactivemedia/v3/a/b/g;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/a/b/g;->e:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->c:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->e:Lcom/google/ads/interactivemedia/v3/a/b/g;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->c:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/b/g;->a(Lcom/google/ads/interactivemedia/v3/a/b/g$d;Z)V

    .line 552
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->c:Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    .line 553
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->e:Lcom/google/ads/interactivemedia/v3/a/b/g;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/b/g;->d:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$c;->d:I

    .line 554
    return-void
.end method

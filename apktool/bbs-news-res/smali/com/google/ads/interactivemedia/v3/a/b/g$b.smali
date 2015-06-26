.class final Lcom/google/ads/interactivemedia/v3/a/b/g$b;
.super Ljava/util/AbstractSet;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/b/g;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$b;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$b;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/b/g;->clear()V

    .line 615
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 606
    .local p0, this:Lcom/google/ads/interactivemedia/v3/a/b/g$b;,"Lcom/google/ads/interactivemedia/v3/a/b/g<TK;TV;>.b;"
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$b;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/g;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 598
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/g$b$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/a/b/g$b$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/g$b;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 610
    .local p0, this:Lcom/google/ads/interactivemedia/v3/a/b/g$b;,"Lcom/google/ads/interactivemedia/v3/a/b/g<TK;TV;>.b;"
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$b;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/g;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$b;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/a/b/g;->c:I

    return v0
.end method

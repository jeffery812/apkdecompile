.class final Lcom/google/ads/interactivemedia/v3/a/b/g$a$1;
.super Lcom/google/ads/interactivemedia/v3/a/b/g$c;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/b/g$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/a/b/g",
        "<TK;TV;>.c<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/b/g$a;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/g$a;)V
    .locals 2
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/g$a$1;->a:Lcom/google/ads/interactivemedia/v3/a/b/g$a;

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/a/b/g$a;->a:Lcom/google/ads/interactivemedia/v3/a/b/g;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/b/g$c;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/g;B)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/g$a$1;->a()Lcom/google/ads/interactivemedia/v3/a/b/g$d;

    move-result-object v0

    return-object v0
.end method

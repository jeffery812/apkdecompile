.class final Lcom/google/ads/interactivemedia/v3/a/b/a/k;
.super Lcom/google/ads/interactivemedia/v3/a/w;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/a/w",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/f;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/w;Ljava/lang/reflect/Type;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;->a:Lcom/google/ads/interactivemedia/v3/a/f;

    .line 34
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;->b:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 35
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;->c:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;->b:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;->b:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 53
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;->c:Ljava/lang/reflect/Type;

    if-eq v0, v2, :cond_3

    .line 55
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;->a:Lcom/google/ads/interactivemedia/v3/a/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/a/c/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    .line 56
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$a;

    if-eqz v1, :cond_2

    .line 58
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;->b:Lcom/google/ads/interactivemedia/v3/a/w;

    instance-of v1, v1, Lcom/google/ads/interactivemedia/v3/a/b/a/h$a;

    if-nez v1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;->b:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V

    .line 69
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

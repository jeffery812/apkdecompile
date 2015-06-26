.class public final Lcom/google/ads/interactivemedia/v3/a/b/a/b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/b/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/b/c;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/c;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/b;->a:Lcom/google/ads/interactivemedia/v3/a/b/c;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 4
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
    .line 44
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/a/c/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v2

    .line 53
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/b;->a:Lcom/google/ads/interactivemedia/v3/a/b/c;

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/a/b/c;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/b/h;

    move-result-object v3

    .line 56
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/a/b$a;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/b/a/b$a;-><init>(Lcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/a/w;Lcom/google/ads/interactivemedia/v3/a/b/h;)V

    goto :goto_0
.end method

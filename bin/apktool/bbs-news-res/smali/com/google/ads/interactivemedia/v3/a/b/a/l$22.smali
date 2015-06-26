.class final Lcom/google/ads/interactivemedia/v3/a/b/a/l$22;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/a/w;)Lcom/google/ads/interactivemedia/v3/a/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/a/w;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/a/w;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/l$22;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/l$22;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/l$22;->c:Lcom/google/ads/interactivemedia/v3/a/w;

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
    .line 795
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 796
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/l$22;->a:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/l$22;->b:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/l$22;->c:Lcom/google/ads/interactivemedia/v3/a/w;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/l$22;->b:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/l$22;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/l$22;->c:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

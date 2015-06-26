.class final Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;
.super Lcom/google/ads/interactivemedia/v3/a/b/a/h$b;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/google/ads/interactivemedia/v3/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/a/f;

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/a/c/a;

.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/ads/interactivemedia/v3/a/b/a/h;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/a/h;Ljava/lang/String;ZZLcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;Ljava/lang/reflect/Field;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->f:Lcom/google/ads/interactivemedia/v3/a/b/a/h;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->b:Lcom/google/ads/interactivemedia/v3/a/f;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->c:Lcom/google/ads/interactivemedia/v3/a/c/a;

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->d:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/a/b/a/h$b;-><init>(Ljava/lang/String;ZZ)V

    .line 82
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->b:Lcom/google/ads/interactivemedia/v3/a/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->c:Lcom/google/ads/interactivemedia/v3/a/c/a;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/ads/interactivemedia/v3/a/d/a;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->e:Z

    if-nez v1, :cond_1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    :cond_1
    return-void
.end method

.method final a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/b/a/k;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->b:Lcom/google/ads/interactivemedia/v3/a/f;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->a:Lcom/google/ads/interactivemedia/v3/a/w;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/h$1;->c:Lcom/google/ads/interactivemedia/v3/a/c/a;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/a/b/a/k;-><init>(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/w;Ljava/lang/reflect/Type;)V

    .line 89
    invoke-virtual {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

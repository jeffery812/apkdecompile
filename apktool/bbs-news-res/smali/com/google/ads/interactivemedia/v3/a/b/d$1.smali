.class final Lcom/google/ads/interactivemedia/v3/a/b/d$1;
.super Lcom/google/ads/interactivemedia/v3/a/w;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/a/b/d;->a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/ads/interactivemedia/v3/a/w",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/a/f;

.field final synthetic d:Lcom/google/ads/interactivemedia/v3/a/c/a;

.field final synthetic e:Lcom/google/ads/interactivemedia/v3/a/b/d;

.field private f:Lcom/google/ads/interactivemedia/v3/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/d;ZZLcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->e:Lcom/google/ads/interactivemedia/v3/a/b/d;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->a:Z

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->b:Z

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->c:Lcom/google/ads/interactivemedia/v3/a/f;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->d:Lcom/google/ads/interactivemedia/v3/a/c/a;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    return-void
.end method

.method private a()Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->f:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 142
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->c:Lcom/google/ads/interactivemedia/v3/a/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->e:Lcom/google/ads/interactivemedia/v3/a/b/d;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->d:Lcom/google/ads/interactivemedia/v3/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/x;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->f:Lcom/google/ads/interactivemedia/v3/a/w;

    goto :goto_0
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
    .line 125
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->n()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->a()Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 1
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
    .line 133
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->b:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->f()Lcom/google/ads/interactivemedia/v3/a/d/c;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/d$1;->a()Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V

    goto :goto_0
.end method

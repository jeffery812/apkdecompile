.class public final Lcom/google/ads/interactivemedia/v3/b/b/d;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public a:Z

.field public b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, -0x333334

    const/4 v1, 0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->a:Z

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->b:[I

    .line 14
    const/high16 v0, -0x6700

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->c:I

    .line 15
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->d:I

    .line 16
    const v0, 0x66ffffff

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->e:I

    .line 17
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->f:I

    .line 20
    const-string v0, "Advertisement"

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->g:Ljava/lang/String;

    .line 21
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->h:I

    .line 22
    const-string v0, "Arial"

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->i:Ljava/lang/String;

    .line 23
    const/16 v0, 0xc

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->j:I

    .line 24
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->k:I

    .line 27
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->l:Z

    .line 28
    const-string v0, "\u00b7\u00b7\u00b7"

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->m:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Learn More "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->n:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->o:I

    .line 31
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/d;->p:F

    return-void

    .line 13
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x88t
        0x0t 0x0t 0x0t 0x88t
    .end array-data
.end method

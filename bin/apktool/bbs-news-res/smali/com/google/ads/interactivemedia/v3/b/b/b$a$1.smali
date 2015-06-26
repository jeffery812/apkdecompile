.class final Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;
.super Landroid/graphics/drawable/shapes/Shape;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/b$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/graphics/Path;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 51
    return-void
.end method

.method public final onResize(FF)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x40c0

    const/high16 v6, 0x42b4

    const/high16 v5, 0x4140

    const/4 v4, 0x0

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->a:Landroid/graphics/Path;

    .line 41
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 42
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->getHeight()F

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->a:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->getHeight()F

    move-result v2

    sub-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->getHeight()F

    move-result v3

    invoke-direct {v1, v4, v2, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1, v6, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->a:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x4334

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 46
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/b$a$1;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    return-void
.end method

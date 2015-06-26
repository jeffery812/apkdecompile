.class final Lcom/google/ads/interactivemedia/v3/b/b/a$1;
.super Landroid/graphics/drawable/shapes/Shape;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/b/b/a;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/b/b/a;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/b/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a$1;->a:Lcom/google/ads/interactivemedia/v3/b/b/a;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "paint"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a$1;->getHeight()F

    move-result v4

    move-object v0, p1

    move v2, v1

    move v3, v1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 74
    return-void
.end method

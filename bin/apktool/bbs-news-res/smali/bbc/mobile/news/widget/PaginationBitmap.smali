.class public Lbbc/mobile/news/widget/PaginationBitmap;
.super Ljava/lang/Object;
.source "PaginationBitmap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(IIIIII)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "selectedTile"
    .parameter "totalTiles"
    .parameter "tileSize"
    .parameter "tileSpacing"
    .parameter "selectedColour"
    .parameter "deselectedColour"

    .prologue
    .line 13
    mul-int v7, p1, p2

    add-int/lit8 v8, p1, -0x1

    mul-int/2addr v8, p3

    add-int v4, v7, v8

    .line 14
    .local v4, width:I
    move v2, p2

    .line 16
    .local v2, height:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 17
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 22
    if-gtz p1, :cond_1

    .line 39
    :cond_0
    return-object v0

    .line 25
    :cond_1
    const/4 v6, 0x0

    .line 26
    .local v6, y:I
    const/4 v5, 0x0

    .line 29
    .local v5, x:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, p1, :cond_0

    .line 31
    if-ne v3, p0, :cond_2

    .line 32
    invoke-static {v1, v5, v6, p2, p4}, Lbbc/mobile/news/widget/PaginationBitmap;->drawBox(Landroid/graphics/Canvas;IIII)V

    .line 36
    :goto_1
    add-int v7, p2, p3

    add-int/2addr v5, v7

    .line 29
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_2
    invoke-static {v1, v5, v6, p2, p5}, Lbbc/mobile/news/widget/PaginationBitmap;->drawBox(Landroid/graphics/Canvas;IIII)V

    goto :goto_1
.end method

.method private static drawBox(Landroid/graphics/Canvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "size"
    .parameter "colour"

    .prologue
    .line 44
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v5, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    int-to-float v1, p1

    int-to-float v2, p2

    add-int v0, p1, p3

    int-to-float v3, v0

    add-int v0, p2, p3

    int-to-float v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 47
    return-void
.end method

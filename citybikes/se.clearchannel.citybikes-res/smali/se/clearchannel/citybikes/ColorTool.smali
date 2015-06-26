.class public Lse/clearchannel/citybikes/ColorTool;
.super Ljava/lang/Object;
.source "ColorTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeMatch(III)Z
    .locals 3
    .parameter "color1"
    .parameter "color2"
    .parameter "tolerance"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, p3, :cond_1

    .line 27
    :cond_0
    :goto_0
    return v0

    .line 25
    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p3, :cond_0

    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p3, :cond_0

    .line 27
    const/4 v0, 0x1

    goto :goto_0
.end method

.class public Lbbc/mobile/news/view/PulsingImageView;
.super Landroid/widget/ImageView;
.source "PulsingImageView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private animation:Landroid/view/animation/ScaleAnimation;

.field private pulsing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lbbc/mobile/news/view/PulsingImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/PulsingImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 67
    iget-boolean v1, p0, Lbbc/mobile/news/view/PulsingImageView;->pulsing:Z

    if-eqz v1, :cond_5

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    rem-long/2addr v2, v4

    long-to-int v0, v2

    .line 69
    .local v0, shift:I
    div-int/lit8 v0, v0, 0xa

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 72
    const/16 v0, 0xa

    .line 74
    :cond_0
    if-gez v0, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 77
    :cond_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 78
    int-to-float v1, v0

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 83
    const/high16 v1, -0x4080

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 88
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 90
    invoke-virtual {p0}, Lbbc/mobile/news/view/PulsingImageView;->invalidate()V

    .line 94
    .end local v0           #shift:I
    :goto_2
    return-void

    .line 80
    .restart local v0       #shift:I
    :cond_3
    rsub-int/lit8 v1, v0, 0xa

    int-to-float v1, v1

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 84
    :cond_4
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    .line 85
    const/high16 v1, 0x3f80

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_1

    .line 92
    .end local v0           #shift:I
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public startPulsing()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public stopPulsing()V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lbbc/mobile/news/view/PulsingImageView;->clearAnimation()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/view/PulsingImageView;->pulsing:Z

    .line 101
    iget-object v0, p0, Lbbc/mobile/news/view/PulsingImageView;->animation:Landroid/view/animation/ScaleAnimation;

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/view/PulsingImageView;->animation:Landroid/view/animation/ScaleAnimation;

    .line 104
    :cond_0
    return-void
.end method

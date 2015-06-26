.class public final Lcom/google/android/gms/internal/iy;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/iy$a;
    }
.end annotation


# instance fields
.field private Lc:Landroid/net/Uri;

.field private Ld:I

.field private Le:I

.field private Lf:Lcom/google/android/gms/internal/iy$a;

.field private Lg:I

.field private Lh:F


# virtual methods
.method public ay(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/iy;->Ld:I

    return-void
.end method

.method public g(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iy;->Lc:Landroid/net/Uri;

    return-void
.end method

.method public gN()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/iy;->Ld:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/iy;->Lf:Lcom/google/android/gms/internal/iy$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iy;->Lf:Lcom/google/android/gms/internal/iy$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/iy$a;->g(II)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/iy;->Le:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/iy;->Le:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    iget v0, p0, Lcom/google/android/gms/internal/iy;->Lg:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/iy;->Lh:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/iy;->setMeasuredDimension(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/iy;->getMeasuredWidth()I

    move-result v1

    int-to-float v0, v1

    iget v2, p0, Lcom/google/android/gms/internal/iy;->Lh:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

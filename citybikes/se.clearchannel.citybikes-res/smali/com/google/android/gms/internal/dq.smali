.class public final Lcom/google/android/gms/internal/dq;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dq$1;,
        Lcom/google/android/gms/internal/dq$a;,
        Lcom/google/android/gms/internal/dq$b;
    }
.end annotation


# instance fields
.field private oB:I

.field private oC:J

.field private oD:I

.field private oE:I

.field private oF:I

.field private oG:I

.field private oH:I

.field private oI:Z

.field private oJ:Lcom/google/android/gms/internal/dq$b;

.field private oK:Landroid/graphics/drawable/Drawable;

.field private oL:Landroid/graphics/drawable/Drawable;

.field private oM:Z

.field private oN:Z

.field private oO:Z

.field private oP:I

.field private oy:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/dq;-><init>(Lcom/google/android/gms/internal/dq$b;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/dq$a;->bD()Lcom/google/android/gms/internal/dq$a;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/dq;->oK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oJ:Lcom/google/android/gms/internal/dq$b;

    iget v1, v0, Lcom/google/android/gms/internal/dq$b;->oT:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/dq$b;->oT:I

    if-nez p2, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/dq$a;->bD()Lcom/google/android/gms/internal/dq$a;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/internal/dq;->oL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oJ:Lcom/google/android/gms/internal/dq$b;

    iget v1, v0, Lcom/google/android/gms/internal/dq$b;->oT:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/dq$b;->oT:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/dq$b;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput v1, p0, Lcom/google/android/gms/internal/dq;->oB:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/gms/internal/dq;->oF:I

    iput v1, p0, Lcom/google/android/gms/internal/dq;->oH:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->oy:Z

    new-instance v0, Lcom/google/android/gms/internal/dq$b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/dq$b;-><init>(Lcom/google/android/gms/internal/dq$b;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dq;->oJ:Lcom/google/android/gms/internal/dq$b;

    return-void
.end method


# virtual methods
.method public bC()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oL:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public canConstantState()Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->oM:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->oN:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/dq;->oM:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->oN:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    const/high16 v6, 0x3f80

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/dq;->oB:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/dq;->oH:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/dq;->oy:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/dq;->oK:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/gms/internal/dq;->oL:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/dq;->oF:I

    if-ne v1, v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/dq;->oF:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_2
    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/dq;->oC:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/dq;->oB:I

    goto :goto_1

    :pswitch_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/dq;->oC:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/dq;->oC:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/dq;->oG:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v6

    if-ltz v3, :cond_5

    :goto_3
    if-eqz v1, :cond_4

    iput v0, p0, Lcom/google/android/gms/internal/dq;->oB:I

    :cond_4
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/google/android/gms/internal/dq;->oD:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/gms/internal/dq;->oE:I

    iget v4, p0, Lcom/google/android/gms/internal/dq;->oD:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/dq;->oH:I

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    iget v0, p0, Lcom/google/android/gms/internal/dq;->oF:I

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_8

    iget v0, p0, Lcom/google/android/gms/internal/dq;->oF:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_8
    if-lez v1, :cond_9

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/dq;->oF:I

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->invalidateSelf()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->oJ:Lcom/google/android/gms/internal/dq$b;

    iget v1, v1, Lcom/google/android/gms/internal/dq$b;->oS:I

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->oJ:Lcom/google/android/gms/internal/dq$b;

    iget v1, v1, Lcom/google/android/gms/internal/dq$b;->oT:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oJ:Lcom/google/android/gms/internal/dq$b;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/dq$b;->oS:I

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oJ:Lcom/google/android/gms/internal/dq$b;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->oL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->oL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->oO:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/dq;->oL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/dq;->oP:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->oO:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/dq;->oP:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/fg;->cD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dq;->oI:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->canConstantState()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dq;->oI:Z

    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/fg;->cD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "alpha"

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/dq;->oH:I

    iget v1, p0, Lcom/google/android/gms/internal/dq;->oF:I

    if-ne v0, v1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/dq;->oH:I

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/dq;->oF:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oK:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dq;->oL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public startTransition(I)V
    .locals 2
    .parameter "durationMillis"

    .prologue
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/dq;->oD:I

    iget v0, p0, Lcom/google/android/gms/internal/dq;->oF:I

    iput v0, p0, Lcom/google/android/gms/internal/dq;->oE:I

    iput v1, p0, Lcom/google/android/gms/internal/dq;->oH:I

    iput p1, p0, Lcom/google/android/gms/internal/dq;->oG:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/dq;->oB:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->invalidateSelf()V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "who"
    .parameter "what"

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/fg;->cD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

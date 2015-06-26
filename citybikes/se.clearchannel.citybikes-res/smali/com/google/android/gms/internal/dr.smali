.class public final Lcom/google/android/gms/internal/dr;
.super Landroid/widget/ImageView;


# instance fields
.field private oU:Landroid/net/Uri;

.field private oV:I

.field private oW:I


# virtual methods
.method public H(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/dr;->oV:I

    return-void
.end method

.method public bE()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/dr;->oV:I

    return v0
.end method

.method public d(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dr;->oU:Landroid/net/Uri;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/google/android/gms/internal/dr;->oW:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/dr;->oW:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    return-void
.end method

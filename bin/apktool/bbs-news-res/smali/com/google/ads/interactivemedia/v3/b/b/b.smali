.class public final Lcom/google/ads/interactivemedia/v3/b/b/b;
.super Landroid/widget/FrameLayout;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/b/b$a;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b;->a:F

    .line 78
    new-instance v0, Lcom/google/ads/interactivemedia/v3/b/b/b$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/b/b/b$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/b;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b;->a:F

    const/high16 v1, 0x4100

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 81
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/b;->setPadding(IIII)V

    .line 83
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b;->b:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b;->b:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 86
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b;->b:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/b;->addView(Landroid/view/View;)V

    .line 88
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

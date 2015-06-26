.class public final Lcom/google/ads/interactivemedia/v3/b/b/a;
.super Landroid/widget/LinearLayout;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/b/b/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/b/b/d;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/b/b/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/b/b/d;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x0

    const/16 v2, 0xa

    const/4 v3, -0x2

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->d:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->a:Lcom/google/ads/interactivemedia/v3/b/b/d;

    .line 43
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->b:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->b:Landroid/widget/TextView;

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/b/b/d;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 46
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 47
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 48
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 50
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/b/b/d;->k:I

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/b/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/b/c;->a(IF)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 55
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 57
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/b/b/d;->l:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/b/b/d;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/b/b/d;->p:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/google/ads/interactivemedia/v3/b/b/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 65
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 66
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 68
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 70
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/b/a$1;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/b/b/a$1;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/a;)V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 76
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p2, Lcom/google/ads/interactivemedia/v3/b/b/d;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p2, Lcom/google/ads/interactivemedia/v3/b/b/d;->f:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/b/a$2;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/b/b/a$2;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/b/b/a$a;

    .line 112
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/b/a$a;->b()V

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/b/b/a$a;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 118
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->a:Lcom/google/ads/interactivemedia/v3/b/b/d;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/b/b/d;->b:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 120
    invoke-virtual {v0, v4, v4, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 122
    new-instance v1, Lcom/google/ads/interactivemedia/v3/b/b/a$3;

    invoke-direct {v1, p0}, Lcom/google/ads/interactivemedia/v3/b/b/a$3;-><init>(Lcom/google/ads/interactivemedia/v3/b/b/a;)V

    .line 128
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 129
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->a:Lcom/google/ads/interactivemedia/v3/b/b/d;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/b/b/d;->c:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/b/b/a;->a:Lcom/google/ads/interactivemedia/v3/b/b/d;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/b/b/d;->d:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 131
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    invoke-virtual {v2, v4, v4, p1, p2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 134
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v4

    const/4 v0, 0x1

    aput-object v2, v1, v0

    .line 135
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/b/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    return-void
.end method

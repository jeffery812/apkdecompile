.class public Lbbc/mobile/news/ww/view/ProgressView;
.super Landroid/view/ViewGroup;
.source "ProgressView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private ITEM_GAP:I

.field private label:Landroid/widget/TextView;

.field private progressBar:Landroid/widget/ProgressBar;

.field private scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lbbc/mobile/news/ww/view/ProgressView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/ww/view/ProgressView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lbbc/mobile/news/ww/view/ProgressView;->scale:F

    .line 23
    const/high16 v0, 0x4120

    iget v1, p0, Lbbc/mobile/news/ww/view/ProgressView;->scale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lbbc/mobile/news/ww/view/ProgressView;->ITEM_GAP:I

    .line 25
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    .line 26
    iget-object v0, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/ww/view/ProgressView;->addView(Landroid/view/View;)V

    .line 27
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 30
    iget-object v0, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 31
    iget-object v0, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/ww/view/ProgressView;->addView(Landroid/view/View;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 57
    iget-object v1, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 58
    .local v0, yoffs:I
    :cond_0
    iget-object v1, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    iget v2, p0, Lbbc/mobile/news/ww/view/ProgressView;->ITEM_GAP:I

    iget-object v3, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lbbc/mobile/news/ww/view/ProgressView;->ITEM_GAP:I

    iget-object v4, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 59
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, -0x2

    .line 41
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 42
    .local v1, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 43
    .local v0, heightSpecSize:I
    iget-object v2, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 44
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 43
    invoke-virtual {v2, v3, v4}, Landroid/widget/ProgressBar;->measure(II)V

    .line 45
    iget-object v2, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 46
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 45
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 47
    iget-object v2, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lbbc/mobile/news/ww/view/ProgressView;->ITEM_GAP:I

    add-int v1, v2, v3

    .line 48
    iget-object v2, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lbbc/mobile/news/ww/view/ProgressView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    .line 51
    :goto_0
    invoke-virtual {p0, v1, v0}, Lbbc/mobile/news/ww/view/ProgressView;->setMeasuredDimension(II)V

    .line 52
    return-void

    .line 48
    :cond_0
    iget-object v2, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "labelText"

    .prologue
    .line 35
    iget-object v0, p0, Lbbc/mobile/news/ww/view/ProgressView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

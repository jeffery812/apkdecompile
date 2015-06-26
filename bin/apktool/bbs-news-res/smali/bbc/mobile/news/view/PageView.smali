.class public Lbbc/mobile/news/view/PageView;
.super Landroid/view/View;
.source "PageView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ALIGNMENT_INDEX:I = 0x0

.field public static final ALIGN_CENTER:I = 0x0

.field public static final ALIGN_LEFT:I = 0x2

.field public static final ALIGN_RIGHT:I = 0x1

.field private static final INDICATOR_HEIGHT_DIP:I = 0xc

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_HEIGHT_INDEX:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_SPACEING_INDEX:I = 0x0

.field private static final INDICATOR_SPACING_DIP:I = 0x3

.field private static final INDICATOR_WIDTH_DIP:I = 0xc

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_WIDTH_INDEX:I = 0x0

.field private static final NO_OF_PAGES:I = 0x9

#the value of this static final field might be set in the static constructor
.field private static final PAGES_INDEX:I = 0x0

.field private static final SELECTED_COLOR:I = -0x10000

#the value of this static final field might be set in the static constructor
.field private static final SELECTED_COLOR_INDEX:I = 0x0

.field private static final SELECTED_PAGE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final SELECTED_PAGE_INDEX:I = 0x0

.field public static final TAG:Ljava/lang/String; = null

.field private static final UNSELECTED_COLOR:I = -0x777778

.field private static final UNSELECTED_COLOR_INDEX:I


# instance fields
.field private mAlignment:I

.field private mIndicatorHeight:I

.field private mIndicatorSpacing:I

.field private mIndicatorWidth:I

.field private mPages:I

.field private mSelectedPage:I

.field private mSelectedPaint:Landroid/graphics/Paint;

.field private mUnselectedPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lbbc/mobile/news/view/PageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/PageView;->TAG:Ljava/lang/String;

    .line 22
    sget v0, Lbbc/mobile/news/R$styleable;->PageView_indicator_spacing:I

    sput v0, Lbbc/mobile/news/view/PageView;->INDICATOR_SPACEING_INDEX:I

    .line 23
    sget v0, Lbbc/mobile/news/R$styleable;->PageView_unselected_color:I

    sput v0, Lbbc/mobile/news/view/PageView;->UNSELECTED_COLOR_INDEX:I

    .line 24
    sget v0, Lbbc/mobile/news/R$styleable;->PageView_indicator_height:I

    sput v0, Lbbc/mobile/news/view/PageView;->INDICATOR_HEIGHT_INDEX:I

    .line 25
    sget v0, Lbbc/mobile/news/R$styleable;->PageView_indicator_width:I

    sput v0, Lbbc/mobile/news/view/PageView;->INDICATOR_WIDTH_INDEX:I

    .line 26
    sget v0, Lbbc/mobile/news/R$styleable;->PageView_selected_color:I

    sput v0, Lbbc/mobile/news/view/PageView;->SELECTED_COLOR_INDEX:I

    .line 27
    sget v0, Lbbc/mobile/news/R$styleable;->PageView_selected_page:I

    sput v0, Lbbc/mobile/news/view/PageView;->SELECTED_PAGE_INDEX:I

    .line 28
    sget v0, Lbbc/mobile/news/R$styleable;->PageView_alignment:I

    sput v0, Lbbc/mobile/news/view/PageView;->ALIGNMENT_INDEX:I

    .line 29
    sget v0, Lbbc/mobile/news/R$styleable;->PageView_pages:I

    sput v0, Lbbc/mobile/news/view/PageView;->PAGES_INDEX:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/PageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    sget-object v1, Lbbc/mobile/news/R$styleable;->PageView:[I

    .line 58
    invoke-virtual {p1, p2, v1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, array:Landroid/content/res/TypedArray;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lbbc/mobile/news/view/PageView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 62
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lbbc/mobile/news/view/PageView;->mUnselectedPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v1, p0, Lbbc/mobile/news/view/PageView;->mSelectedPaint:Landroid/graphics/Paint;

    sget v2, Lbbc/mobile/news/view/PageView;->SELECTED_COLOR_INDEX:I

    const/high16 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v1, p0, Lbbc/mobile/news/view/PageView;->mUnselectedPaint:Landroid/graphics/Paint;

    sget v2, Lbbc/mobile/news/view/PageView;->UNSELECTED_COLOR_INDEX:I

    const v3, -0x777778

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    sget v1, Lbbc/mobile/news/view/PageView;->INDICATOR_WIDTH_INDEX:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/PageView;->mIndicatorWidth:I

    .line 68
    sget v1, Lbbc/mobile/news/view/PageView;->INDICATOR_HEIGHT_INDEX:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/PageView;->mIndicatorHeight:I

    .line 69
    sget v1, Lbbc/mobile/news/view/PageView;->INDICATOR_SPACEING_INDEX:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/PageView;->mIndicatorSpacing:I

    .line 71
    sget v1, Lbbc/mobile/news/view/PageView;->PAGES_INDEX:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/PageView;->mPages:I

    .line 72
    sget v1, Lbbc/mobile/news/view/PageView;->SELECTED_PAGE_INDEX:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/PageView;->mSelectedPage:I

    .line 73
    sget v1, Lbbc/mobile/news/view/PageView;->ALIGNMENT_INDEX:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/PageView;->mAlignment:I

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method private static final drawBox(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paint"

    .prologue
    .line 145
    int-to-float v1, p1

    int-to-float v2, p2

    add-int v0, p1, p3

    int-to-float v3, v0

    add-int v0, p2, p4

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 146
    return-void
.end method

.method private getStartDrawOffsetX()I
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Lbbc/mobile/news/view/PageView;->mAlignment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    :goto_0
    return v0

    .line 133
    :cond_0
    iget v0, p0, Lbbc/mobile/news/view/PageView;->mAlignment:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lbbc/mobile/news/view/PageView;->getWidthOfAllIndicators()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getWidthOfAllIndicators()I
    .locals 3

    .prologue
    .line 140
    iget v0, p0, Lbbc/mobile/news/view/PageView;->mIndicatorWidth:I

    iget v1, p0, Lbbc/mobile/news/view/PageView;->mPages:I

    mul-int/2addr v0, v1

    iget v1, p0, Lbbc/mobile/news/view/PageView;->mPages:I

    iget v2, p0, Lbbc/mobile/news/view/PageView;->mIndicatorSpacing:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lbbc/mobile/news/view/PageView;->mSelectedPage:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    iget v0, p0, Lbbc/mobile/news/view/PageView;->mIndicatorWidth:I

    iget v3, p0, Lbbc/mobile/news/view/PageView;->mIndicatorSpacing:I

    add-int v7, v0, v3

    .line 113
    .local v7, indicatorWidthAndSpacing:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lbbc/mobile/news/view/PageView;->mIndicatorHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v2, v0, v3

    .line 114
    .local v2, y:I
    invoke-direct {p0}, Lbbc/mobile/news/view/PageView;->getStartDrawOffsetX()I

    move-result v1

    .line 117
    .local v1, x:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget v0, p0, Lbbc/mobile/news/view/PageView;->mPages:I

    if-lt v6, v0, :cond_0

    .line 127
    return-void

    .line 119
    :cond_0
    iget v0, p0, Lbbc/mobile/news/view/PageView;->mSelectedPage:I

    if-ne v6, v0, :cond_1

    .line 120
    iget v3, p0, Lbbc/mobile/news/view/PageView;->mIndicatorWidth:I

    iget v4, p0, Lbbc/mobile/news/view/PageView;->mIndicatorHeight:I

    iget-object v5, p0, Lbbc/mobile/news/view/PageView;->mSelectedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lbbc/mobile/news/view/PageView;->drawBox(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 124
    :goto_1
    add-int/2addr v1, v7

    .line 117
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget v3, p0, Lbbc/mobile/news/view/PageView;->mIndicatorWidth:I

    iget v4, p0, Lbbc/mobile/news/view/PageView;->mIndicatorHeight:I

    iget-object v5, p0, Lbbc/mobile/news/view/PageView;->mUnselectedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lbbc/mobile/news/view/PageView;->drawBox(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 151
    invoke-direct {p0}, Lbbc/mobile/news/view/PageView;->getWidthOfAllIndicators()I

    move-result v4

    .line 153
    .local v4, widthOfIndicators:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->getPaddingRight()I

    move-result v6

    add-int v2, v5, v6

    .line 154
    .local v2, width:I
    iget v5, p0, Lbbc/mobile/news/view/PageView;->mIndicatorHeight:I

    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->getPaddingBottom()I

    move-result v6

    add-int v0, v5, v6

    .line 156
    .local v0, height:I
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 157
    .local v3, widthMeasureSpec:I
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 159
    .local v1, heightMeasureSpec:I
    sget-object v5, Lbbc/mobile/news/view/PageView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onMeasure() width="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lbbc/mobile/news/view/PageView;->setMeasuredDimension(II)V

    .line 162
    return-void
.end method

.method public setAlignment(I)V
    .locals 1
    .parameter "alignment"

    .prologue
    .line 88
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 89
    iput p1, p0, Lbbc/mobile/news/view/PageView;->mAlignment:I

    .line 90
    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->requestLayout()V

    .line 92
    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 99
    iput p1, p0, Lbbc/mobile/news/view/PageView;->mSelectedPage:I

    .line 100
    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->invalidate()V

    .line 101
    return-void
.end method

.method public setPages(I)V
    .locals 0
    .parameter "pages"

    .prologue
    .line 83
    iput p1, p0, Lbbc/mobile/news/view/PageView;->mPages:I

    .line 84
    invoke-virtual {p0}, Lbbc/mobile/news/view/PageView;->requestLayout()V

    .line 85
    return-void
.end method

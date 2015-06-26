.class public Lbbc/mobile/news/view/SplitView;
.super Landroid/view/ViewGroup;
.source "SplitView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mForceAdvertSize:Z

.field private final mMinSplitAdvert544:I

.field private final mMinSplitAdvert680:I

.field private final mPortraitHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbbc/mobile/news/view/SplitView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/SplitView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lbbc/mobile/news/view/SplitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/SplitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lbbc/mobile/app/NewsApplication;

    invoke-virtual {v1}, Lbbc/mobile/app/NewsApplication;->isWorldWide()Z

    move-result v0

    .line 41
    .local v0, isWorldWide:Z
    invoke-virtual {p0}, Lbbc/mobile/news/view/SplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$bool;->isTablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lbbc/mobile/news/view/SplitView;->mForceAdvertSize:Z

    .line 42
    invoke-virtual {p0}, Lbbc/mobile/news/view/SplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$dimen;->tablet_min_advert_544:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/SplitView;->mMinSplitAdvert544:I

    .line 43
    invoke-virtual {p0}, Lbbc/mobile/news/view/SplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$dimen;->tablet_min_advert_680:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/SplitView;->mMinSplitAdvert680:I

    .line 44
    invoke-virtual {p0}, Lbbc/mobile/news/view/SplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$dimen;->portrait_news_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/SplitView;->mPortraitHeight:I

    .line 45
    return-void

    .line 41
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 75
    invoke-virtual {p0}, Lbbc/mobile/news/view/SplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v5, :cond_0

    .line 76
    .local v5, isPortrait:Z
    :goto_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/SplitView;->getChildCount()I

    move-result v1

    .line 77
    .local v1, childCount:I
    const/4 v4, 0x0

    .local v4, i:I
    const/4 v6, 0x0

    .local v6, next:I
    :goto_1
    if-lt v4, v1, :cond_1

    .line 90
    return-void

    .end local v1           #childCount:I
    .end local v4           #i:I
    .end local v5           #isPortrait:Z
    .end local v6           #next:I
    :cond_0
    move v5, v7

    .line 75
    goto :goto_0

    .line 78
    .restart local v1       #childCount:I
    .restart local v4       #i:I
    .restart local v5       #isPortrait:Z
    .restart local v6       #next:I
    :cond_1
    invoke-virtual {p0, v4}, Lbbc/mobile/news/view/SplitView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, child:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 81
    .local v2, childHeight:I
    sub-int v8, p4, p2

    add-int v9, v6, v2

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 82
    add-int/2addr v6, v2

    .line 77
    .end local v2           #childHeight:I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 86
    .local v3, childWidth:I
    add-int v8, v6, v3

    sub-int v9, p5, p3

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 87
    add-int/2addr v6, v3

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 50
    invoke-virtual {p0}, Lbbc/mobile/news/view/SplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v5, :cond_0

    move v3, v5

    .line 51
    .local v3, isPortrait:Z
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .local v4, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 52
    .local v2, height:I
    div-int/lit8 v1, v4, 0x2

    .line 53
    .local v1, half:I
    sget-object v7, Lbbc/mobile/news/view/SplitView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SplitView half: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", 544="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lbbc/mobile/news/view/SplitView;->mMinSplitAdvert544:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", 680="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lbbc/mobile/news/view/SplitView;->mMinSplitAdvert680:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lbbc/mobile/news/view/SplitView;->getChildCount()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 55
    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {p0, v6}, Lbbc/mobile/news/view/SplitView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v7, p0, Lbbc/mobile/news/view/SplitView;->mPortraitHeight:I

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, p1, v7}, Landroid/view/View;->measure(II)V

    .line 57
    invoke-virtual {p0, v5}, Lbbc/mobile/news/view/SplitView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Lbbc/mobile/news/view/SplitView;->mPortraitHeight:I

    sub-int v6, v2, v6

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, p1, v6}, Landroid/view/View;->measure(II)V

    .line 69
    :goto_1
    invoke-virtual {p0, v4, v2}, Lbbc/mobile/news/view/SplitView;->setMeasuredDimension(II)V

    .line 70
    return-void

    .end local v1           #half:I
    .end local v2           #height:I
    .end local v3           #isPortrait:Z
    .end local v4           #width:I
    :cond_0
    move v3, v6

    .line 50
    goto :goto_0

    .line 60
    .restart local v1       #half:I
    .restart local v2       #height:I
    .restart local v3       #isPortrait:Z
    .restart local v4       #width:I
    :cond_1
    iget-boolean v7, p0, Lbbc/mobile/news/view/SplitView;->mForceAdvertSize:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lbbc/mobile/news/view/SplitView;->mMinSplitAdvert544:I

    sub-int v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 61
    iget v8, p0, Lbbc/mobile/news/view/SplitView;->mMinSplitAdvert680:I

    sub-int v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_2

    iget v7, p0, Lbbc/mobile/news/view/SplitView;->mMinSplitAdvert544:I

    .line 60
    :goto_2
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 62
    .local v0, advertWidth:I
    :goto_3
    invoke-virtual {p0, v6}, Lbbc/mobile/news/view/SplitView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    sub-int v7, v4, v0

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, p2}, Landroid/view/View;->measure(II)V

    .line 63
    invoke-virtual {p0, v5}, Lbbc/mobile/news/view/SplitView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 61
    .end local v0           #advertWidth:I
    :cond_2
    iget v7, p0, Lbbc/mobile/news/view/SplitView;->mMinSplitAdvert680:I

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    .line 67
    :cond_4
    invoke-virtual {p0, v6}, Lbbc/mobile/news/view/SplitView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_1
.end method

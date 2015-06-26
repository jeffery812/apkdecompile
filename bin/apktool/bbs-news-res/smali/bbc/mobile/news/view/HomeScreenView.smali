.class public Lbbc/mobile/news/view/HomeScreenView;
.super Landroid/view/ViewGroup;
.source "HomeScreenView.java"


# static fields
.field public static final LANDSCAPE_COLUMNS_RATIO:F = 1.0625f

.field private static final TAG:Ljava/lang/String; = "HomeScreenView"


# instance fields
.field private mArticleContainerView:Landroid/view/View;

.field private mVerticleFadeView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/HomeScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private getNewsFragmentView()Lbbc/mobile/news/view/NewsFragmentView;
    .locals 1

    .prologue
    .line 137
    sget v0, Lbbc/mobile/news/R$id;->homescreenNewsFragmentView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/HomeScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/view/NewsFragmentView;

    return-object v0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "HomeScreenView"

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget v0, Lbbc/mobile/news/R$id;->homescreenVerticleFadeView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/HomeScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/HomeScreenView;->mVerticleFadeView:Landroid/view/View;

    .line 41
    sget v0, Lbbc/mobile/news/R$id;->homescreenArticleContainer:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/HomeScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/HomeScreenView;->mArticleContainerView:Landroid/view/View;

    .line 42
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 103
    invoke-virtual {p0}, Lbbc/mobile/news/view/HomeScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v4, :cond_2

    .line 106
    .local v4, isPortrait:Z
    :goto_0
    const/4 v6, 0x0

    .line 107
    .local v6, yOffset:I
    invoke-direct {p0}, Lbbc/mobile/news/view/HomeScreenView;->getNewsFragmentView()Lbbc/mobile/news/view/NewsFragmentView;

    move-result-object v5

    .line 108
    .local v5, newsFragmentView:Lbbc/mobile/news/view/NewsFragmentView;
    if-eqz v5, :cond_1

    iget-object v8, p0, Lbbc/mobile/news/view/HomeScreenView;->mArticleContainerView:Landroid/view/View;

    if-eqz v8, :cond_1

    .line 109
    if-eqz v4, :cond_3

    .line 110
    invoke-virtual {v5}, Lbbc/mobile/news/view/NewsFragmentView;->getMeasuredHeight()I

    move-result v6

    .line 111
    invoke-virtual {v5}, Lbbc/mobile/news/view/NewsFragmentView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v5, v7, v7, v8, v6}, Lbbc/mobile/news/view/NewsFragmentView;->layout(IIII)V

    .line 112
    iget-object v8, p0, Lbbc/mobile/news/view/HomeScreenView;->mArticleContainerView:Landroid/view/View;

    iget-object v9, p0, Lbbc/mobile/news/view/HomeScreenView;->mArticleContainerView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v7, v6, v9, p5}, Landroid/view/View;->layout(IIII)V

    .line 119
    :goto_1
    iget-object v7, p0, Lbbc/mobile/news/view/HomeScreenView;->mVerticleFadeView:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, fadeViewRight:I
    const/4 v1, 0x0

    .line 122
    .local v1, fadeViewLeft:I
    const/4 v3, 0x0

    .line 123
    .local v3, fadeViewTop:I
    const/4 v0, 0x0

    .line 124
    .local v0, fadeViewBottom:I
    if-nez v4, :cond_0

    .line 125
    invoke-virtual {v5}, Lbbc/mobile/news/view/NewsFragmentView;->getRight()I

    move-result v7

    iget-object v8, p0, Lbbc/mobile/news/view/HomeScreenView;->mVerticleFadeView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v1, v7, v8

    .line 126
    move v3, p3

    .line 127
    move v0, p5

    .line 128
    invoke-virtual {v5}, Lbbc/mobile/news/view/NewsFragmentView;->getRight()I

    move-result v2

    .line 130
    :cond_0
    iget-object v7, p0, Lbbc/mobile/news/view/HomeScreenView;->mVerticleFadeView:Landroid/view/View;

    invoke-virtual {v7, v1, v3, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 133
    .end local v0           #fadeViewBottom:I
    .end local v1           #fadeViewLeft:I
    .end local v2           #fadeViewRight:I
    .end local v3           #fadeViewTop:I
    :cond_1
    return-void

    .end local v4           #isPortrait:Z
    .end local v5           #newsFragmentView:Lbbc/mobile/news/view/NewsFragmentView;
    .end local v6           #yOffset:I
    :cond_2
    move v4, v7

    .line 103
    goto :goto_0

    .line 115
    .restart local v4       #isPortrait:Z
    .restart local v5       #newsFragmentView:Lbbc/mobile/news/view/NewsFragmentView;
    .restart local v6       #yOffset:I
    :cond_3
    invoke-virtual {v5}, Lbbc/mobile/news/view/NewsFragmentView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v5, v7, v7, v8, p5}, Lbbc/mobile/news/view/NewsFragmentView;->layout(IIII)V

    .line 116
    iget-object v7, p0, Lbbc/mobile/news/view/HomeScreenView;->mArticleContainerView:Landroid/view/View;

    invoke-virtual {v5}, Lbbc/mobile/news/view/NewsFragmentView;->getRight()I

    move-result v8

    invoke-virtual {v7, v8, v6, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x1

    const/high16 v10, 0x4000

    .line 47
    invoke-virtual {p0}, Lbbc/mobile/news/view/HomeScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v1, :cond_3

    .line 48
    .local v1, isPortrait:Z
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 49
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 51
    .local v0, heightSpecSize:I
    invoke-direct {p0}, Lbbc/mobile/news/view/HomeScreenView;->getNewsFragmentView()Lbbc/mobile/news/view/NewsFragmentView;

    move-result-object v4

    .line 53
    .local v4, newsFragmentView:Lbbc/mobile/news/view/NewsFragmentView;
    const-string v7, "HomeScreenView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onMeasure widthSpecSize:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " heightSpecSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lbbc/mobile/news/view/HomeScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lbbc/mobile/news/R$dimen;->portrait_news_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 57
    .local v5, portraitHeight:I
    iget-object v7, p0, Lbbc/mobile/news/view/HomeScreenView;->mArticleContainerView:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 58
    if-eqz v1, :cond_4

    .line 59
    iget-object v7, p0, Lbbc/mobile/news/view/HomeScreenView;->mArticleContainerView:Landroid/view/View;

    .line 60
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 61
    sub-int v9, v0, v5

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 59
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 71
    :cond_0
    :goto_1
    if-eqz v4, :cond_1

    .line 72
    if-eqz v1, :cond_5

    .line 74
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 75
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 73
    invoke-virtual {v4, v7, v8}, Lbbc/mobile/news/view/NewsFragmentView;->measure(II)V

    .line 90
    :cond_1
    :goto_2
    iget-object v7, p0, Lbbc/mobile/news/view/HomeScreenView;->mVerticleFadeView:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 91
    iget-object v7, p0, Lbbc/mobile/news/view/HomeScreenView;->mVerticleFadeView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 92
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lbbc/mobile/news/view/HomeScreenView;->mVerticleFadeView:Landroid/view/View;

    .line 93
    iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 94
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 92
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 97
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {p0, v6, v0}, Lbbc/mobile/news/view/HomeScreenView;->setMeasuredDimension(II)V

    .line 98
    return-void

    .line 47
    .end local v0           #heightSpecSize:I
    .end local v1           #isPortrait:Z
    .end local v4           #newsFragmentView:Lbbc/mobile/news/view/NewsFragmentView;
    .end local v5           #portraitHeight:I
    .end local v6           #widthSpecSize:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 64
    .restart local v0       #heightSpecSize:I
    .restart local v1       #isPortrait:Z
    .restart local v4       #newsFragmentView:Lbbc/mobile/news/view/NewsFragmentView;
    .restart local v5       #portraitHeight:I
    .restart local v6       #widthSpecSize:I
    :cond_4
    div-int/lit8 v7, v6, 0x2

    int-to-float v3, v7

    .line 65
    .local v3, modWidth:F
    const/high16 v7, 0x3f88

    mul-float/2addr v3, v7

    .line 66
    iget-object v7, p0, Lbbc/mobile/news/view/HomeScreenView;->mArticleContainerView:Landroid/view/View;

    .line 67
    float-to-int v8, v3

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 68
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 66
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_1

    .line 77
    .end local v3           #modWidth:F
    :cond_5
    iget-object v7, p0, Lbbc/mobile/news/view/HomeScreenView;->mArticleContainerView:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 79
    iget-object v7, p0, Lbbc/mobile/news/view/HomeScreenView;->mArticleContainerView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 80
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 78
    invoke-virtual {v4, v7, v8}, Lbbc/mobile/news/view/NewsFragmentView;->measure(II)V

    goto :goto_2

    .line 84
    :cond_6
    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 85
    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 83
    invoke-virtual {v4, v7, v8}, Lbbc/mobile/news/view/NewsFragmentView;->measure(II)V

    goto :goto_2
.end method

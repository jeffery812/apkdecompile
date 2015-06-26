.class public Lbbc/mobile/news/view/NewsFragmentView;
.super Landroid/view/ViewGroup;
.source "NewsFragmentView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdViewHolder:Landroid/view/View;

.field private mCategoryListView:Landroid/widget/ListView;

.field private mFadeView:Landroid/view/View;

.field private mIsTablet:Z

.field private mLoadingSpinner:Landroid/view/View;

.field private mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

.field private mTickerView:Lbbc/mobile/news/view/TickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lbbc/mobile/news/view/NewsFragmentView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/NewsFragmentView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/NewsFragmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0}, Lbbc/mobile/news/view/NewsFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbbc/mobile/news/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lbbc/mobile/news/view/NewsFragmentView;->mIsTablet:Z

    .line 39
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    sget v0, Lbbc/mobile/news/R$id;->homescreenPortraitView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/NewsFragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/view/PortraitCategoryWrapper;

    iput-object v0, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    .line 45
    sget v0, Lbbc/mobile/news/R$id;->homescreenCategoryListView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/NewsFragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    .line 46
    sget v0, Lbbc/mobile/news/R$id;->ticker:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/NewsFragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/view/TickerView;

    iput-object v0, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    .line 47
    sget v0, Lbbc/mobile/news/R$id;->bannerViewPlaceHolder:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/NewsFragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/NewsFragmentView;->mAdViewHolder:Landroid/view/View;

    .line 48
    sget v0, Lbbc/mobile/news/R$id;->homescreenVerticleFadeView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/NewsFragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/NewsFragmentView;->mFadeView:Landroid/view/View;

    .line 49
    sget v0, Lbbc/mobile/news/R$id;->loadingSpinner:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/NewsFragmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/NewsFragmentView;->mLoadingSpinner:Landroid/view/View;

    .line 50
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 121
    invoke-virtual {p0}, Lbbc/mobile/news/view/NewsFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    const/4 v3, 0x1

    .line 122
    .local v3, isPortrait:Z
    :goto_0
    if-eqz v3, :cond_8

    iget-boolean v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mIsTablet:Z

    if-nez v9, :cond_8

    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mAdViewHolder:Landroid/view/View;

    if-eqz v9, :cond_8

    const/4 v4, 0x1

    .line 123
    .local v4, layoutAdView:Z
    :goto_1
    move/from16 v6, p5

    .line 124
    .local v6, topOfAdView:I
    const/4 v8, 0x0

    .line 126
    .local v8, yoffs:I
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mIsTablet:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v9}, Lbbc/mobile/news/view/TickerView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_0

    .line 127
    if-eqz v3, :cond_9

    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v9}, Lbbc/mobile/news/view/TickerView;->getMeasuredHeight()I

    move-result v5

    .line 128
    .local v5, tickerViewHeight:I
    :goto_2
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    const/4 v10, 0x0

    iget-object v11, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v11}, Lbbc/mobile/news/view/TickerView;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v9, v10, v8, v11, v5}, Lbbc/mobile/news/view/TickerView;->layout(IIII)V

    .line 129
    add-int/2addr v8, v5

    .line 132
    .end local v5           #tickerViewHeight:I
    :cond_0
    if-eqz v4, :cond_1

    .line 133
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mAdViewHolder:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    sub-int v6, p5, v9

    .line 136
    :cond_1
    if-eqz v3, :cond_a

    iget-boolean v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mIsTablet:Z

    if-eqz v9, :cond_a

    .line 137
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v9, :cond_2

    .line 138
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    const/4 v10, 0x0

    iget-object v11, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v11}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->getMeasuredWidth()I

    move-result v11

    .line 139
    iget-object v12, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v12}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v8

    .line 138
    invoke-virtual {v9, v10, v8, v11, v12}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->layout(IIII)V

    .line 140
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v9}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 142
    :cond_2
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    if-eqz v9, :cond_3

    .line 143
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    const/16 v10, -0x3e8

    const/16 v11, -0x3e8

    const/16 v12, -0x1f4

    const/16 v13, -0x1f4

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/ListView;->layout(IIII)V

    .line 156
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 157
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mAdViewHolder:Landroid/view/View;

    const/4 v10, 0x0

    iget-object v11, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getBottom()I

    move-result v11

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v9, v10, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 160
    :cond_4
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mFadeView:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 161
    if-nez v3, :cond_c

    .line 162
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mFadeView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mFadeView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 164
    .local v2, fadeWidth:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/NewsFragmentView;->getWidth()I

    move-result v7

    .line 165
    .local v7, width:I
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mFadeView:Landroid/view/View;

    sub-int v10, v7, v2

    const/4 v11, 0x0

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v9, v10, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 172
    .end local v2           #fadeWidth:I
    .end local v7           #width:I
    :cond_5
    :goto_4
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mLoadingSpinner:Landroid/view/View;

    if-eqz v9, :cond_6

    .line 173
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mLoadingSpinner:Landroid/view/View;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lbbc/mobile/news/view/NewsFragmentView;->getWidth()I

    move-result v12

    invoke-virtual {p0}, Lbbc/mobile/news/view/NewsFragmentView;->getHeight()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 175
    :cond_6
    return-void

    .line 121
    .end local v3           #isPortrait:Z
    .end local v4           #layoutAdView:Z
    .end local v6           #topOfAdView:I
    .end local v8           #yoffs:I
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 122
    .restart local v3       #isPortrait:Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 127
    .restart local v4       #layoutAdView:Z
    .restart local v6       #topOfAdView:I
    .restart local v8       #yoffs:I
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 147
    :cond_a
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    if-eqz v9, :cond_b

    .line 148
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    const/4 v10, 0x0

    iget-object v11, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v9, v10, v8, v11, v6}, Landroid/widget/ListView;->layout(IIII)V

    .line 151
    :cond_b
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v9, :cond_3

    .line 152
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    const/16 v10, -0x3e8

    const/16 v11, -0x3e8

    const/16 v12, -0x1f4

    const/16 v13, -0x1f4

    invoke-virtual {v9, v10, v11, v12, v13}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->layout(IIII)V

    goto :goto_3

    .line 168
    :cond_c
    iget-object v9, p0, Lbbc/mobile/news/view/NewsFragmentView;->mFadeView:Landroid/view/View;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x1

    const/16 v12, 0x8

    const/4 v6, 0x0

    const/high16 v11, -0x8000

    const/high16 v10, 0x4000

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 58
    .local v5, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 60
    .local v2, heightSpecSize:I
    const/4 v0, 0x0

    .line 61
    .local v0, adHeight:I
    const/4 v4, 0x0

    .line 63
    .local v4, tickerHeight:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/NewsFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v3, :cond_6

    .line 65
    .local v3, isPortrait:Z
    :goto_0
    if-eqz v3, :cond_0

    iget-boolean v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mIsTablet:Z

    if-nez v7, :cond_0

    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mAdViewHolder:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v7}, Lbbc/mobile/news/view/TickerView;->getVisibility()I

    move-result v7

    if-eq v7, v12, :cond_0

    .line 66
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mAdViewHolder:Landroid/view/View;

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 67
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 66
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 68
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v7}, Lbbc/mobile/news/view/TickerView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 69
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mAdViewHolder:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 74
    :cond_0
    iget-boolean v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mIsTablet:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v7}, Lbbc/mobile/news/view/TickerView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 75
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v7}, Lbbc/mobile/news/view/TickerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    .local v1, heightParam:I
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 77
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 76
    invoke-virtual {v7, v8, v9}, Lbbc/mobile/news/view/TickerView;->measure(II)V

    .line 78
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mTickerView:Lbbc/mobile/news/view/TickerView;

    invoke-virtual {v7}, Lbbc/mobile/news/view/TickerView;->getMeasuredHeight()I

    move-result v4

    .line 81
    .end local v1           #heightParam:I
    :cond_1
    if-eqz v3, :cond_7

    iget-boolean v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mIsTablet:Z

    if-eqz v7, :cond_7

    .line 82
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v7, :cond_2

    .line 83
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v7, v6}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setVisibility(I)V

    .line 84
    iget-object v6, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 85
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 84
    invoke-virtual {v6, v7, v8}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->measure(II)V

    .line 87
    :cond_2
    iget-object v6, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    if-eqz v6, :cond_3

    .line 88
    iget-object v6, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 89
    iget-object v6, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v6, v12}, Landroid/widget/ListView;->setVisibility(I)V

    .line 104
    :cond_3
    :goto_1
    iget-object v6, p0, Lbbc/mobile/news/view/NewsFragmentView;->mFadeView:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 105
    iget-object v6, p0, Lbbc/mobile/news/view/NewsFragmentView;->mFadeView:Landroid/view/View;

    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mFadeView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v7, v2}, Landroid/view/View;->measure(II)V

    .line 108
    :cond_4
    iget-object v6, p0, Lbbc/mobile/news/view/NewsFragmentView;->mLoadingSpinner:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 109
    iget-object v6, p0, Lbbc/mobile/news/view/NewsFragmentView;->mLoadingSpinner:Landroid/view/View;

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 110
    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 109
    invoke-virtual {v6, v7, v8}, Landroid/view/View;->measure(II)V

    .line 113
    :cond_5
    invoke-virtual {p0, v5, v2}, Lbbc/mobile/news/view/NewsFragmentView;->setMeasuredDimension(II)V

    .line 114
    return-void

    .end local v3           #isPortrait:Z
    :cond_6
    move v3, v6

    .line 63
    goto/16 :goto_0

    .line 94
    .restart local v3       #isPortrait:Z
    :cond_7
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    if-eqz v7, :cond_8

    .line 95
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mPortraitView:Lbbc/mobile/news/view/PortraitCategoryWrapper;

    invoke-virtual {v7, v12}, Lbbc/mobile/news/view/PortraitCategoryWrapper;->setVisibility(I)V

    .line 97
    :cond_8
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    if-eqz v7, :cond_3

    .line 98
    iget-object v7, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 99
    iget-object v6, p0, Lbbc/mobile/news/view/NewsFragmentView;->mCategoryListView:Landroid/widget/ListView;

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 100
    sub-int v8, v2, v0

    sub-int/2addr v8, v4

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 99
    invoke-virtual {v6, v7, v8}, Landroid/widget/ListView;->measure(II)V

    goto :goto_1
.end method

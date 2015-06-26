.class public Lbbc/mobile/news/view/TickerView;
.super Landroid/widget/ViewFlipper;
.source "TickerView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TickerView"


# instance fields
.field private TICKER_TICK:I

.field private mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

.field private mTicker:Lbbc/mobile/news/model/Ticker;

.field private tickerClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 40
    const/16 v0, 0x1388

    iput v0, p0, Lbbc/mobile/news/view/TickerView;->TICKER_TICK:I

    .line 207
    new-instance v0, Lbbc/mobile/news/view/TickerView$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/TickerView$1;-><init>(Lbbc/mobile/news/view/TickerView;)V

    iput-object v0, p0, Lbbc/mobile/news/view/TickerView;->tickerClickListener:Landroid/view/View$OnClickListener;

    .line 49
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/TickerView;->init(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/16 v0, 0x1388

    iput v0, p0, Lbbc/mobile/news/view/TickerView;->TICKER_TICK:I

    .line 207
    new-instance v0, Lbbc/mobile/news/view/TickerView$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/TickerView$1;-><init>(Lbbc/mobile/news/view/TickerView;)V

    iput-object v0, p0, Lbbc/mobile/news/view/TickerView;->tickerClickListener:Landroid/view/View$OnClickListener;

    .line 55
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/TickerView;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/view/TickerView;)Lbbc/mobile/news/model/Ticker;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lbbc/mobile/news/view/TickerView;->mTicker:Lbbc/mobile/news/model/Ticker;

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/view/TickerView;)Lbbc/mobile/news/OnArticleSelectedListener;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lbbc/mobile/news/view/TickerView;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

    return-object v0
.end method

.method private createHeadlineView(Lbbc/mobile/news/model/TickerItem;)Landroid/view/View;
    .locals 13
    .parameter "item"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, blankView:Landroid/view/View;
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .end local v0           #blankView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p1, v10}, Lbbc/mobile/news/model/TickerItem;->isLive(Landroid/content/Context;)Z

    move-result v2

    .line 107
    .local v2, isLive:Z
    invoke-virtual {p1}, Lbbc/mobile/news/model/TickerItem;->isBreaking()Z

    move-result v1

    .line 111
    .local v1, isBreaking:Z
    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lbbc/mobile/news/R$layout;->breaking_news_bar:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lbbc/mobile/news/view/TickerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 117
    .local v9, view:Landroid/view/View;
    :goto_1
    sget v10, Lbbc/mobile/news/R$id;->ticker_link:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 118
    .local v7, tickerLink:Landroid/view/View;
    if-eqz v7, :cond_1

    .line 119
    iget-object v10, p0, Lbbc/mobile/news/view/TickerView;->tickerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    if-eqz v2, :cond_3

    .line 121
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_1
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbbc/mobile/news/model/TickerItem;->getPrompt()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, prompt:Ljava/lang/String;
    invoke-virtual {p1}, Lbbc/mobile/news/model/TickerItem;->getHeadline()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, text:Ljava/lang/String;
    sget v10, Lbbc/mobile/news/R$id;->ticker_text:I

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 132
    .local v8, tickerText:Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v10, p0, Lbbc/mobile/news/view/TickerView;->tickerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 135
    invoke-virtual {v9, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 137
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    .local v5, spannableBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 141
    .local v4, promptLength:I
    if-eqz v1, :cond_4

    .line 142
    new-instance v10, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lbbc/mobile/news/R$style;->breakingTitle:I

    invoke-direct {v10, v11, v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 143
    const/4 v11, 0x0

    const/16 v12, 0x21

    .line 142
    invoke-virtual {v5, v10, v11, v4, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 144
    new-instance v10, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lbbc/mobile/news/R$style;->breakingText:I

    invoke-direct {v10, v11, v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 145
    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v11

    const/16 v12, 0x21

    .line 144
    invoke-virtual {v5, v10, v4, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 154
    :goto_3
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v9

    .line 156
    goto/16 :goto_0

    .line 114
    .end local v3           #prompt:Ljava/lang/String;
    .end local v4           #promptLength:I
    .end local v5           #spannableBuilder:Landroid/text/SpannableStringBuilder;
    .end local v6           #text:Ljava/lang/String;
    .end local v7           #tickerLink:Landroid/view/View;
    .end local v8           #tickerText:Landroid/widget/TextView;
    .end local v9           #view:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lbbc/mobile/news/R$layout;->tickerbar:I

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lbbc/mobile/news/view/TickerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .restart local v9       #view:Landroid/view/View;
    goto/16 :goto_1

    .line 124
    .restart local v7       #tickerLink:Landroid/view/View;
    :cond_3
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 148
    .restart local v3       #prompt:Ljava/lang/String;
    .restart local v4       #promptLength:I
    .restart local v5       #spannableBuilder:Landroid/text/SpannableStringBuilder;
    .restart local v6       #text:Ljava/lang/String;
    .restart local v8       #tickerText:Landroid/widget/TextView;
    :cond_4
    new-instance v10, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lbbc/mobile/news/R$style;->tickerLatest:I

    invoke-direct {v10, v11, v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 149
    const/4 v11, 0x0

    const/16 v12, 0x21

    .line 148
    invoke-virtual {v5, v10, v11, v4, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 150
    new-instance v10, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lbbc/mobile/news/R$style;->tickerText:I

    invoke-direct {v10, v11, v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 151
    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v11

    const/16 v12, 0x21

    .line 150
    invoke-virtual {v5, v10, v4, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 60
    sget v0, Lbbc/mobile/news/R$anim;->fade_in:I

    invoke-virtual {p0, p1, v0}, Lbbc/mobile/news/view/TickerView;->setInAnimation(Landroid/content/Context;I)V

    .line 61
    sget v0, Lbbc/mobile/news/R$anim;->fade_out:I

    invoke-virtual {p0, p1, v0}, Lbbc/mobile/news/view/TickerView;->setOutAnimation(Landroid/content/Context;I)V

    .line 62
    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/TickerView;->setClickable(Z)V

    .line 63
    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/TickerView;->setFocusable(Z)V

    .line 64
    iget-object v0, p0, Lbbc/mobile/news/view/TickerView;->tickerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/TickerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget v0, p0, Lbbc/mobile/news/view/TickerView;->TICKER_TICK:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/TickerView;->setFlipInterval(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public getTicker()Lbbc/mobile/news/model/Ticker;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lbbc/mobile/news/view/TickerView;->mTicker:Lbbc/mobile/news/model/Ticker;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lbbc/mobile/news/view/TickerView;->mTicker:Lbbc/mobile/news/model/Ticker;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 164
    :try_start_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->stopFlipping()V

    goto :goto_0
.end method

.method public declared-synchronized setData(Lbbc/mobile/news/model/Ticker;)V
    .locals 4
    .parameter "ticker"

    .prologue
    .line 70
    monitor-enter p0

    if-eqz p1, :cond_2

    .line 71
    :try_start_0
    iput-object p1, p0, Lbbc/mobile/news/view/TickerView;->mTicker:Lbbc/mobile/news/model/Ticker;

    .line 72
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lbbc/mobile/news/view/TickerView;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->removeAllViews()V

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lbbc/mobile/news/model/Ticker;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 84
    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->startFlipping()V

    .line 85
    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->updateIsLive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v0           #i:I
    :goto_1
    monitor-exit p0

    return-void

    .line 76
    .restart local v0       #i:I
    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Lbbc/mobile/news/model/Ticker;->getItem(I)Lbbc/mobile/news/model/TickerItem;

    move-result-object v1

    .line 77
    .local v1, item:Lbbc/mobile/news/model/TickerItem;
    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p1, v0}, Lbbc/mobile/news/model/Ticker;->getItem(I)Lbbc/mobile/news/model/TickerItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lbbc/mobile/news/view/TickerView;->createHeadlineView(Lbbc/mobile/news/model/TickerItem;)Landroid/view/View;

    move-result-object v2

    .line 79
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lbbc/mobile/news/view/TickerView;->tickerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/TickerView;->addView(Landroid/view/View;)V

    .line 75
    .end local v2           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0           #i:I
    .end local v1           #item:Lbbc/mobile/news/model/TickerItem;
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lbbc/mobile/news/view/TickerView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 70
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setOnArticleSelectedListener(Lbbc/mobile/news/OnArticleSelectedListener;)V
    .locals 0
    .parameter "onArticleSelectedListener"

    .prologue
    .line 204
    iput-object p1, p0, Lbbc/mobile/news/view/TickerView;->mOnArticleSelectedListener:Lbbc/mobile/news/OnArticleSelectedListener;

    .line 205
    return-void
.end method

.method public declared-synchronized updateIsLive()V
    .locals 9

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lbbc/mobile/news/view/TickerView;->mTicker:Lbbc/mobile/news/model/Ticker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 200
    :cond_0
    monitor-exit p0

    return-void

    .line 181
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_1
    iget-object v6, p0, Lbbc/mobile/news/view/TickerView;->mTicker:Lbbc/mobile/news/model/Ticker;

    invoke-virtual {v6}, Lbbc/mobile/news/model/Ticker;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 182
    iget-object v6, p0, Lbbc/mobile/news/view/TickerView;->mTicker:Lbbc/mobile/news/model/Ticker;

    invoke-virtual {v6, v1}, Lbbc/mobile/news/model/Ticker;->getItem(I)Lbbc/mobile/news/model/TickerItem;

    move-result-object v3

    .line 183
    .local v3, item:Lbbc/mobile/news/model/TickerItem;
    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/TickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, child:Landroid/view/View;
    sget v6, Lbbc/mobile/news/R$id;->ticker_text:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 185
    .local v5, tickerText:Landroid/view/View;
    sget v6, Lbbc/mobile/news/R$id;->ticker_link:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 186
    .local v4, tickerLink:Landroid/view/View;
    invoke-virtual {p0}, Lbbc/mobile/news/view/TickerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lbbc/mobile/news/model/TickerItem;->isLive(Landroid/content/Context;)Z

    move-result v2

    .line 188
    .local v2, isLive:Z
    const-string v6, "ARTICLE_UPDATE"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "updateIsLive(), articleID:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lbbc/mobile/news/model/TickerItem;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isLive:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz v2, :cond_2

    .line 191
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    invoke-virtual {v5, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 178
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #isLive:Z
    .end local v3           #item:Lbbc/mobile/news/model/TickerItem;
    .end local v4           #tickerLink:Landroid/view/View;
    .end local v5           #tickerText:Landroid/view/View;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

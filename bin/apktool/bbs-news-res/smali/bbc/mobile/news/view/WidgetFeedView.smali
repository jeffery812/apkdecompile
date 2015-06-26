.class public Lbbc/mobile/news/view/WidgetFeedView;
.super Landroid/widget/LinearLayout;
.source "WidgetFeedView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckBox:Landroid/widget/Checkable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mFeed:Lbbc/mobile/news/model/Feed;

.field private mFeedSelectedListener:Lbbc/mobile/news/view/OnFeedSelectedListener;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Lbbc/mobile/news/view/WidgetFeedView$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/WidgetFeedView$1;-><init>(Lbbc/mobile/news/view/WidgetFeedView;)V

    iput-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 24
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/WidgetFeedView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/view/WidgetFeedView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/WidgetFeedView;->onViewSelected(Landroid/view/View;)V

    return-void
.end method

.method private onViewSelected(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 58
    invoke-virtual {p0}, Lbbc/mobile/news/view/WidgetFeedView;->toggleChecked()V

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 94
    if-ne p1, p0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 101
    .end local p1
    :goto_0
    return v0

    .line 97
    .restart local p1
    :cond_0
    instance-of v0, p1, Lbbc/mobile/news/view/FeedView;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Lbbc/mobile/news/view/FeedView;

    .end local p1
    invoke-virtual {p1}, Lbbc/mobile/news/view/FeedView;->getFeed()Lbbc/mobile/news/model/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/view/WidgetFeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 101
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->hashCode()I

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mCheckBox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 33
    sget v0, Lbbc/mobile/news/R$id;->feedTitleTextView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/WidgetFeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mTextView:Landroid/widget/TextView;

    .line 34
    sget v0, Lbbc/mobile/news/R$id;->feedEnabledCheckBox:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/WidgetFeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    iput-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mCheckBox:Landroid/widget/Checkable;

    .line 35
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 72
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mCheckBox:Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 73
    return-void
.end method

.method public setFeed(Lbbc/mobile/news/model/Feed;)V
    .locals 0
    .parameter "feed"

    .prologue
    .line 44
    iput-object p1, p0, Lbbc/mobile/news/view/WidgetFeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    .line 45
    return-void
.end method

.method public setOnSelectedFeedListener(Lbbc/mobile/news/view/OnFeedSelectedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 28
    iput-object p1, p0, Lbbc/mobile/news/view/WidgetFeedView;->mFeedSelectedListener:Lbbc/mobile/news/view/OnFeedSelectedListener;

    .line 29
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mFeedSelectedListener:Lbbc/mobile/news/view/OnFeedSelectedListener;

    invoke-virtual {v0, p0}, Lbbc/mobile/news/view/OnFeedSelectedListener;->registerCheckable(Landroid/widget/Checkable;)V

    .line 30
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 38
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mTextView:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mCheckBox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->toggle()V

    .line 83
    return-void
.end method

.method public toggleChecked()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mCheckBox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mFeedSelectedListener:Lbbc/mobile/news/view/OnFeedSelectedListener;

    iget-object v1, p0, Lbbc/mobile/news/view/WidgetFeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/OnFeedSelectedListener;->setSelectedFeed(Lbbc/mobile/news/model/Feed;)V

    .line 51
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mCheckBox:Landroid/widget/Checkable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 52
    iget-object v0, p0, Lbbc/mobile/news/view/WidgetFeedView;->mFeedSelectedListener:Lbbc/mobile/news/view/OnFeedSelectedListener;

    iget-object v1, p0, Lbbc/mobile/news/view/WidgetFeedView;->mCheckBox:Landroid/widget/Checkable;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/OnFeedSelectedListener;->onChecked(Landroid/widget/Checkable;)V

    .line 54
    :cond_0
    return-void
.end method

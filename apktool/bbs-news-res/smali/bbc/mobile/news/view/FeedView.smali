.class public Lbbc/mobile/news/view/FeedView;
.super Landroid/widget/FrameLayout;
.source "FeedView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mExternalHeight:I

.field private mFeed:Lbbc/mobile/news/model/Feed;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lbbc/mobile/news/view/FeedView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/FeedView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lbbc/mobile/news/view/FeedView;->mExternalHeight:I

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/FeedView;->setClickable(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public getFeed()Lbbc/mobile/news/model/Feed;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lbbc/mobile/news/view/FeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lbbc/mobile/news/view/FeedView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 43
    sget v0, Lbbc/mobile/news/R$id;->feedTitle:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/FeedView;->mTextView:Landroid/widget/TextView;

    .line 44
    sget v0, Lbbc/mobile/news/R$id;->feedEnabled:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/FeedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lbbc/mobile/news/view/FeedView;->mCheckBox:Landroid/widget/CheckBox;

    .line 45
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 145
    iget v0, p0, Lbbc/mobile/news/view/FeedView;->mExternalHeight:I

    if-ltz v0, :cond_0

    .line 146
    iget v0, p0, Lbbc/mobile/news/view/FeedView;->mExternalHeight:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 148
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 149
    return-void
.end method

.method public performClick()Z
    .locals 4

    .prologue
    .line 75
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 76
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/FeedView;->playSoundEffect(I)V

    .line 77
    iget-object v2, p0, Lbbc/mobile/news/view/FeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v2}, Lbbc/mobile/news/model/Feed;->isMoveable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0}, Lbbc/mobile/news/view/FeedView;->toggle()V

    .line 79
    iget-object v2, p0, Lbbc/mobile/news/view/FeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    iget-object v3, p0, Lbbc/mobile/news/view/FeedView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lbbc/mobile/news/model/Feed;->setVisible(Z)V

    .line 81
    :cond_0
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    .line 82
    .local v1, stats:Lbbc/mobile/news/stats/Stats;
    invoke-virtual {v1}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    .line 83
    .local v0, omniture:Lbbc/mobile/news/stats/Omniture3;
    iget-object v2, p0, Lbbc/mobile/news/view/FeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v2}, Lbbc/mobile/news/model/Feed;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    iget-object v2, p0, Lbbc/mobile/news/view/FeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v1, v2}, Lbbc/mobile/news/stats/Stats;->logAddCategoryInPersonalisationACTION(Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/stats/Stats;

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lbbc/mobile/news/view/FeedView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lbbc/mobile/news/view/FeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v3}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lbbc/mobile/news/stats/Omniture3;->logCategoryAdded(Landroid/content/Context;Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    .line 95
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 90
    :cond_2
    iget-object v2, p0, Lbbc/mobile/news/view/FeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v1, v2}, Lbbc/mobile/news/stats/Stats;->logRemoveCategoryInPersonalisationACTION(Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/stats/Stats;

    .line 91
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lbbc/mobile/news/view/FeedView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lbbc/mobile/news/view/FeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v3}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lbbc/mobile/news/stats/Omniture3;->logCategoryRemoved(Landroid/content/Context;Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    goto :goto_0
.end method

.method public setCheckBoxLock(ZZ)V
    .locals 1
    .parameter "locked"
    .parameter "checked"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/FeedView;->setEnabled(Z)V

    .line 64
    invoke-virtual {p0, p2}, Lbbc/mobile/news/view/FeedView;->setChecked(Z)V

    .line 65
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 100
    iget-object v0, p0, Lbbc/mobile/news/view/FeedView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    return-void
.end method

.method public setFeed(Lbbc/mobile/news/model/Feed;)V
    .locals 4
    .parameter "feed"

    .prologue
    .line 49
    iput-object p1, p0, Lbbc/mobile/news/view/FeedView;->mFeed:Lbbc/mobile/news/model/Feed;

    .line 50
    iget-object v1, p0, Lbbc/mobile/news/view/FeedView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->isMoveable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 57
    .local v0, checked:Z
    :goto_0
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/FeedView;->setChecked(Z)V

    .line 58
    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->isMoveable()Z

    move-result v1

    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/FeedView;->setEnabled(Z)V

    .line 59
    return-void

    .line 54
    .end local v0           #checked:Z
    :cond_0
    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->isVisibilitySet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->isVisible()Z

    move-result v0

    .restart local v0       #checked:Z
    goto :goto_0

    .line 55
    .end local v0           #checked:Z
    :cond_1
    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->isDefault()Z

    move-result v0

    .restart local v0       #checked:Z
    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 138
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lbbc/mobile/news/view/FeedView;->mExternalHeight:I

    .line 139
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lbbc/mobile/news/view/FeedView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Feed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbbc/mobile/news/view/FeedView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " top :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbbc/mobile/news/view/FeedView;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Feed (TextView not inited)"

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lbbc/mobile/news/view/FeedView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 113
    return-void
.end method

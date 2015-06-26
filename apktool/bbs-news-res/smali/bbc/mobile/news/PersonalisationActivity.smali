.class public Lbbc/mobile/news/PersonalisationActivity;
.super Lbbc/mobile/news/BaseActivity;
.source "PersonalisationActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field public static final CONFIG_BDL_KEY:Ljava/lang/String; = "ConfigBdlKey"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lbbc/mobile/news/adapter/PersonalisationAdapter;

.field private mConfig:Lbbc/mobile/news/model/Config;

.field private mFeedManager:Lbbc/mobile/news/feed/FeedManager;

.field private mListView:Lbbc/mobile/news/view/SortableListView;

.field private mOkButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lbbc/mobile/news/PersonalisationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/PersonalisationActivity;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lbbc/mobile/news/BaseActivity;-><init>()V

    .line 30
    new-instance v0, Lbbc/mobile/news/feed/FeedManager;

    const-string v1, "Personal-FeedManager"

    invoke-direct {v0, v1}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbbc/mobile/news/PersonalisationActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/PersonalisationActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lbbc/mobile/news/PersonalisationActivity;->setResultAndFinish(Z)V

    return-void
.end method

.method private requestConfig(I)V
    .locals 3
    .parameter "strategy"

    .prologue
    .line 93
    iget-object v0, p0, Lbbc/mobile/news/PersonalisationActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 94
    iget-object v0, p0, Lbbc/mobile/news/PersonalisationActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v1, p0, Lbbc/mobile/news/PersonalisationActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lbbc/mobile/news/feed/FeedManager;->addConfigFeed(Landroid/content/Context;Landroid/os/Handler;II)V

    .line 95
    iget-object v0, p0, Lbbc/mobile/news/PersonalisationActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 96
    return-void
.end method

.method private setResultAndFinish(Z)V
    .locals 3
    .parameter "resultOk"

    .prologue
    .line 125
    invoke-virtual {p0}, Lbbc/mobile/news/PersonalisationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 127
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lbbc/mobile/news/PersonalisationActivity;->setResult(ILandroid/content/Intent;)V

    .line 128
    iget-object v1, p0, Lbbc/mobile/news/PersonalisationActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v1, :cond_0

    .line 129
    new-instance v1, Lbbc/mobile/news/model/Personalisation;

    iget-object v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v2}, Lbbc/mobile/news/model/Config;->getFeeds()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Lbbc/mobile/news/model/Personalisation;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, v1}, Lbbc/mobile/news/util/GlobalSettings;->savePersonalisation(Landroid/content/Context;Lbbc/mobile/news/model/Personalisation;)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Lbbc/mobile/news/PersonalisationActivity;->finish()V

    .line 139
    return-void

    .line 132
    :cond_0
    sget-object v1, Lbbc/mobile/news/PersonalisationActivity;->TAG:Ljava/lang/String;

    const-string v2, "Could not save config as config is null"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lbbc/mobile/news/PersonalisationActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigFailed(Lbbc/mobile/news/model/Config;II)V
    .locals 2
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v1}, Lbbc/mobile/news/PersonalisationActivity;->showRefreshSpinner(Z)V

    .line 113
    sget v0, Lbbc/mobile/news/R$string;->toast_no_connection:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/PersonalisationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 114
    invoke-direct {p0, v1}, Lbbc/mobile/news/PersonalisationActivity;->setResultAndFinish(Z)V

    .line 115
    return-void
.end method

.method public onConfigSuccess(Lbbc/mobile/news/model/Config;II)V
    .locals 2
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/PersonalisationActivity;->showRefreshSpinner(Z)V

    .line 102
    iput-object p1, p0, Lbbc/mobile/news/PersonalisationActivity;->mConfig:Lbbc/mobile/news/model/Config;

    .line 103
    iget-object v0, p0, Lbbc/mobile/news/PersonalisationActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/PersonalisationActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Config;->getFeeds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    iget-object v0, p0, Lbbc/mobile/news/PersonalisationActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object v0, p0, Lbbc/mobile/news/PersonalisationActivity;->mAdapter:Lbbc/mobile/news/adapter/PersonalisationAdapter;

    iget-object v1, p0, Lbbc/mobile/news/PersonalisationActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Config;->getFeeds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/adapter/PersonalisationAdapter;->setFeeds(Ljava/util/ArrayList;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-virtual {p0}, Lbbc/mobile/news/PersonalisationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$bool;->isPhone:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mHasActionBar:Z

    .line 42
    iget-boolean v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mHasActionBar:Z

    if-nez v2, :cond_0

    .line 43
    invoke-virtual {p0, v4}, Lbbc/mobile/news/PersonalisationActivity;->requestWindowFeature(I)Z

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v2, Lbbc/mobile/news/R$layout;->personalisation_activity_layout:I

    invoke-virtual {p0, v2}, Lbbc/mobile/news/PersonalisationActivity;->setContentView(I)V

    .line 50
    new-instance v2, Lbbc/mobile/news/adapter/PersonalisationAdapter;

    invoke-direct {v2}, Lbbc/mobile/news/adapter/PersonalisationAdapter;-><init>()V

    iput-object v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mAdapter:Lbbc/mobile/news/adapter/PersonalisationAdapter;

    .line 54
    sget v2, Lbbc/mobile/news/R$id;->personalisationListView:I

    invoke-virtual {p0, v2}, Lbbc/mobile/news/PersonalisationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lbbc/mobile/news/view/SortableListView;

    iput-object v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mListView:Lbbc/mobile/news/view/SortableListView;

    .line 55
    iget-object v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mListView:Lbbc/mobile/news/view/SortableListView;

    sget v3, Lbbc/mobile/news/R$id;->personalisationEmpty:I

    invoke-virtual {p0, v3}, Lbbc/mobile/news/PersonalisationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbc/mobile/news/view/SortableListView;->setEmptyView(Landroid/view/View;)V

    .line 56
    iget-object v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mListView:Lbbc/mobile/news/view/SortableListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lbbc/mobile/news/view/SortableListView;->setOverScrollMode(I)V

    .line 57
    iget-object v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mListView:Lbbc/mobile/news/view/SortableListView;

    iget-object v3, p0, Lbbc/mobile/news/PersonalisationActivity;->mAdapter:Lbbc/mobile/news/adapter/PersonalisationAdapter;

    invoke-virtual {v2, v3}, Lbbc/mobile/news/view/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mListView:Lbbc/mobile/news/view/SortableListView;

    iget-object v3, p0, Lbbc/mobile/news/PersonalisationActivity;->mAdapter:Lbbc/mobile/news/adapter/PersonalisationAdapter;

    invoke-virtual {v2, v3}, Lbbc/mobile/news/view/SortableListView;->setDropListener(Lbbc/mobile/news/view/SortableListView$DropListener;)V

    .line 59
    iget-object v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mListView:Lbbc/mobile/news/view/SortableListView;

    invoke-virtual {v2, v4}, Lbbc/mobile/news/view/SortableListView;->setItemsCanFocus(Z)V

    .line 61
    sget v2, Lbbc/mobile/news/R$id;->personlisationOkButton:I

    invoke-virtual {p0, v2}, Lbbc/mobile/news/PersonalisationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mOkButton:Landroid/widget/Button;

    .line 62
    iget-object v2, p0, Lbbc/mobile/news/PersonalisationActivity;->mOkButton:Landroid/widget/Button;

    new-instance v3, Lbbc/mobile/news/PersonalisationActivity$1;

    invoke-direct {v3, p0}, Lbbc/mobile/news/PersonalisationActivity$1;-><init>(Lbbc/mobile/news/PersonalisationActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v1

    .line 72
    .local v1, stats:Lbbc/mobile/news/stats/Stats;
    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v1}, Lbbc/mobile/news/stats/Stats;->logPersonalisationPAGEVIEW()Lbbc/mobile/news/stats/Stats;

    .line 74
    invoke-virtual {v1}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    .line 75
    .local v0, omniture:Lbbc/mobile/news/stats/Omniture3;
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0, p0}, Lbbc/mobile/news/stats/Omniture3;->logEditPageView(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;

    .line 80
    .end local v0           #omniture:Lbbc/mobile/news/stats/Omniture3;
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lbbc/mobile/news/PersonalisationActivity;->requestConfig(I)V

    .line 81
    invoke-virtual {p0, v4}, Lbbc/mobile/news/PersonalisationActivity;->showRefreshSpinner(Z)V

    .line 82
    return-void
.end method

.method public onHomeButtonClicked()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbbc/mobile/news/PersonalisationActivity;->setResultAndFinish(Z)V

    .line 121
    return-void
.end method

.method public onRefreshButtonClicked()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbbc/mobile/news/PersonalisationActivity;->requestConfig(I)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/PersonalisationActivity;->showRefreshSpinner(Z)V

    .line 89
    return-void
.end method

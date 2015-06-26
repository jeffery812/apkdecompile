.class public Lbbc/mobile/news/WidgetConfigActivity;
.super Lbbc/mobile/news/BaseActivity;
.source "WidgetConfigActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetConfigActivity"


# instance fields
.field private mAdapter:Lbbc/mobile/news/adapter/WidgetConfigAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbbc/mobile/news/adapter/WidgetConfigAdapter",
            "<",
            "Lbbc/mobile/news/model/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeConfigClickListener:Landroid/view/View$OnClickListener;

.field private mFeedManager:Lbbc/mobile/news/feed/FeedManager;

.field private mListView:Landroid/widget/ListView;

.field private mOkButton:Landroid/widget/Button;

.field private mWidgetId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lbbc/mobile/news/BaseActivity;-><init>()V

    .line 29
    new-instance v0, Lbbc/mobile/news/feed/FeedManager;

    const-string v1, "WidgetConfig-FeedManager"

    invoke-direct {v0, v1}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbbc/mobile/news/WidgetConfigActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 166
    new-instance v0, Lbbc/mobile/news/WidgetConfigActivity$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/WidgetConfigActivity$1;-><init>(Lbbc/mobile/news/WidgetConfigActivity;)V

    iput-object v0, p0, Lbbc/mobile/news/WidgetConfigActivity;->mChangeConfigClickListener:Landroid/view/View$OnClickListener;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/WidgetConfigActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lbbc/mobile/news/WidgetConfigActivity;->setResultAndFinish(Z)V

    return-void
.end method

.method private addNewWidget(Landroid/content/Context;ILbbc/mobile/news/model/Feed;)V
    .locals 3
    .parameter "context"
    .parameter "widgetId"
    .parameter "feed"

    .prologue
    .line 128
    if-eqz p3, :cond_0

    .line 130
    invoke-virtual {p3}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lbbc/mobile/news/widget/WidgetManager;->addWidget(Landroid/content/Context;ILjava/lang/String;)V

    .line 131
    const/4 v2, 0x1

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    .line 132
    .local v1, widgetIds:[I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    const-string v2, "appWidgetIds"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #widgetIds:[I
    :cond_0
    return-void
.end method

.method private failedToGetConfig()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0, v1}, Lbbc/mobile/news/WidgetConfigActivity;->showRefreshSpinner(Z)V

    .line 122
    sget v0, Lbbc/mobile/news/R$string;->toast_no_connection:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    invoke-direct {p0, v1}, Lbbc/mobile/news/WidgetConfigActivity;->setResultAndFinish(Z)V

    .line 124
    return-void
.end method

.method private setResultAndFinish(Z)V
    .locals 3
    .parameter "resultOk"

    .prologue
    .line 150
    if-eqz p1, :cond_1

    .line 152
    iget-object v1, p0, Lbbc/mobile/news/WidgetConfigActivity;->mAdapter:Lbbc/mobile/news/adapter/WidgetConfigAdapter;

    invoke-virtual {v1}, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->getSelectedFeed()Lbbc/mobile/news/model/Feed;

    move-result-object v0

    .line 153
    .local v0, selectedFeed:Lbbc/mobile/news/model/Feed;
    if-eqz v0, :cond_0

    .line 154
    const/4 v1, -0x1

    invoke-virtual {p0}, Lbbc/mobile/news/WidgetConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lbbc/mobile/news/WidgetConfigActivity;->setResult(ILandroid/content/Intent;)V

    .line 155
    iget v1, p0, Lbbc/mobile/news/WidgetConfigActivity;->mWidgetId:I

    invoke-direct {p0, p0, v1, v0}, Lbbc/mobile/news/WidgetConfigActivity;->addNewWidget(Landroid/content/Context;ILbbc/mobile/news/model/Feed;)V

    .line 162
    .end local v0           #selectedFeed:Lbbc/mobile/news/model/Feed;
    :cond_0
    :goto_0
    const-string v1, "WidgetConfigActivity"

    const-string v2, "activity finishing"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lbbc/mobile/news/WidgetConfigActivity;->finish()V

    .line 164
    return-void

    .line 159
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0}, Lbbc/mobile/news/WidgetConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lbbc/mobile/news/WidgetConfigActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getActivityScreenOrientation()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, -0x1

    return v0
.end method

.method public getData(Landroid/os/Bundle;)V
    .locals 1
    .parameter "extras"

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbbc/mobile/news/WidgetConfigActivity;->mWidgetId:I

    .line 57
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->requestConfig(I)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->showRefreshSpinner(Z)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->setResultAndFinish(Z)V

    goto :goto_0
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 141
    sget v0, Lbbc/mobile/news/R$id;->personalisationListView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbbc/mobile/news/WidgetConfigActivity;->mListView:Landroid/widget/ListView;

    .line 142
    iget-object v0, p0, Lbbc/mobile/news/WidgetConfigActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 143
    sget v0, Lbbc/mobile/news/R$id;->personlisationOkButton:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lbbc/mobile/news/WidgetConfigActivity;->mOkButton:Landroid/widget/Button;

    .line 144
    iget-object v0, p0, Lbbc/mobile/news/WidgetConfigActivity;->mOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lbbc/mobile/news/WidgetConfigActivity;->mChangeConfigClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v0, Lbbc/mobile/news/adapter/WidgetConfigAdapter;

    invoke-direct {v0}, Lbbc/mobile/news/adapter/WidgetConfigAdapter;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/WidgetConfigActivity;->mAdapter:Lbbc/mobile/news/adapter/WidgetConfigAdapter;

    .line 146
    return-void
.end method

.method public onConfigFailed(Lbbc/mobile/news/model/Config;II)V
    .locals 0
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 117
    invoke-direct {p0}, Lbbc/mobile/news/WidgetConfigActivity;->failedToGetConfig()V

    .line 118
    return-void
.end method

.method public onConfigSuccess(Lbbc/mobile/news/model/Config;II)V
    .locals 9
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    const/4 v8, 0x1

    .line 80
    invoke-virtual {p1}, Lbbc/mobile/news/model/Config;->getFeeds()Ljava/util/ArrayList;

    move-result-object v2

    .line 81
    .local v2, feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    if-eqz v2, :cond_5

    .line 82
    iget-object v6, p0, Lbbc/mobile/news/WidgetConfigActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lbbc/mobile/news/WidgetConfigActivity;->showRefreshSpinner(Z)V

    .line 84
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v5

    .line 85
    .local v5, isWorldWide:Z
    const/4 v0, 0x0

    .line 86
    .local v0, defaultFeed:Lbbc/mobile/news/model/Feed;
    const/4 v3, 0x0

    .line 87
    .local v3, firstFeed:Lbbc/mobile/news/model/Feed;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 88
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lbbc/mobile/news/model/Feed;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 100
    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    .line 101
    move-object v0, v3

    .line 103
    :cond_1
    iget-object v6, p0, Lbbc/mobile/news/WidgetConfigActivity;->mAdapter:Lbbc/mobile/news/adapter/WidgetConfigAdapter;

    invoke-virtual {v6, v0}, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->setDefaultFeed(Lbbc/mobile/news/model/Feed;)V

    .line 104
    iget-object v6, p0, Lbbc/mobile/news/WidgetConfigActivity;->mAdapter:Lbbc/mobile/news/adapter/WidgetConfigAdapter;

    invoke-virtual {v6, v2}, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->setFeeds(Ljava/util/ArrayList;)V

    .line 105
    iget-object v6, p0, Lbbc/mobile/news/WidgetConfigActivity;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lbbc/mobile/news/WidgetConfigActivity;->mAdapter:Lbbc/mobile/news/adapter/WidgetConfigAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    iget-object v6, p0, Lbbc/mobile/news/WidgetConfigActivity;->mAdapter:Lbbc/mobile/news/adapter/WidgetConfigAdapter;

    invoke-virtual {v6}, Lbbc/mobile/news/adapter/WidgetConfigAdapter;->notifyDataSetChanged()V

    .line 112
    .end local v0           #defaultFeed:Lbbc/mobile/news/model/Feed;
    .end local v3           #firstFeed:Lbbc/mobile/news/model/Feed;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lbbc/mobile/news/model/Feed;>;"
    .end local v5           #isWorldWide:Z
    :goto_1
    return-void

    .line 89
    .restart local v0       #defaultFeed:Lbbc/mobile/news/model/Feed;
    .restart local v3       #firstFeed:Lbbc/mobile/news/model/Feed;
    .restart local v4       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lbbc/mobile/news/model/Feed;>;"
    .restart local v5       #isWorldWide:Z
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Feed;

    .line 90
    .local v1, feed:Lbbc/mobile/news/model/Feed;
    if-nez v3, :cond_3

    .line 91
    move-object v3, v1

    .line 93
    :cond_3
    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 94
    move-object v0, v1

    .line 96
    :cond_4
    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_0

    .line 97
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 109
    .end local v0           #defaultFeed:Lbbc/mobile/news/model/Feed;
    .end local v1           #feed:Lbbc/mobile/news/model/Feed;
    .end local v3           #firstFeed:Lbbc/mobile/news/model/Feed;
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lbbc/mobile/news/model/Feed;>;"
    .end local v5           #isWorldWide:Z
    :cond_5
    const-string v6, "WidgetConfigActivity"

    const-string v7, "ERROR: could not receive feeds from personalisation config"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lbbc/mobile/news/WidgetConfigActivity;->failedToGetConfig()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lbbc/mobile/news/R$layout;->personalisation_activity_layout:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->setContentView(I)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->setResult(I)V

    .line 42
    invoke-virtual {p0}, Lbbc/mobile/news/WidgetConfigActivity;->initViews()V

    .line 44
    invoke-virtual {p0}, Lbbc/mobile/news/WidgetConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->getData(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method public onRefreshButtonClicked()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->requestConfig(I)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/WidgetConfigActivity;->showRefreshSpinner(Z)V

    .line 68
    return-void
.end method

.method public requestConfig(I)V
    .locals 3
    .parameter "strategy"

    .prologue
    .line 72
    iget-object v0, p0, Lbbc/mobile/news/WidgetConfigActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 73
    iget-object v0, p0, Lbbc/mobile/news/WidgetConfigActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v1, p0, Lbbc/mobile/news/WidgetConfigActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lbbc/mobile/news/feed/FeedManager;->addConfigFeed(Landroid/content/Context;Landroid/os/Handler;II)V

    .line 74
    iget-object v0, p0, Lbbc/mobile/news/WidgetConfigActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 75
    return-void
.end method

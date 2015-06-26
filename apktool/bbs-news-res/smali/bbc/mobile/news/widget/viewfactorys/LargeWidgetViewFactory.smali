.class public Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;
.super Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;
.source "LargeWidgetViewFactory.java"


# static fields
.field private static final ARTICLES_PER_PAGE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private getEvenNumberOfArticles(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Article;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Article;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, articles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Article;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 94
    .local v0, articleCount:I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 95
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    :cond_0
    return-object p1
.end method

.method private getFirstIndex()I
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getPage()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    .line 105
    .local v0, index:I
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 108
    :cond_0
    return v0
.end method

.method private getSecondIndex(I)I
    .locals 2
    .parameter "firstIndex"

    .prologue
    .line 113
    const/4 v0, -0x1

    .line 115
    .local v0, index:I
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 116
    add-int/lit8 v0, p1, 0x1

    .line 118
    :cond_0
    return v0
.end method

.method private setLoadingArticleView(Landroid/widget/RemoteViews;III)Landroid/widget/RemoteViews;
    .locals 2
    .parameter "remoteView"
    .parameter "viewId"
    .parameter "headlineId"
    .parameter "imageId"

    .prologue
    .line 129
    sget v0, Lbbc/mobile/news/R$drawable;->thumbnail_placeholder:I

    invoke-virtual {p1, p4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 131
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbbc/mobile/news/R$string;->widget_loading_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getBlackIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 134
    return-object p1
.end method


# virtual methods
.method public declared-synchronized buildRemoteViews()Landroid/widget/RemoteViews;
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 49
    monitor-enter p0

    :try_start_0
    sget-object v0, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->TAG:Ljava/lang/String;

    const-string v2, "buildRemoteViews() called..."

    invoke-static {v0, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->hasCategory()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 87
    :goto_0
    monitor-exit p0

    return-object v1

    .line 53
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v6

    .line 54
    .local v6, category:Lbbc/mobile/news/model/Category;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getLayoutId()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 56
    .local v1, articleView:Landroid/widget/RemoteViews;
    invoke-virtual {v6}, Lbbc/mobile/news/model/Category;->getArticles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getEvenNumberOfArticles(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lbbc/mobile/news/model/Category;->setArticles(Ljava/util/ArrayList;)V

    .line 58
    sget-object v0, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Category: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " articles."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getFirstIndex()I

    move-result v7

    .line 61
    .local v7, firstIndex:I
    invoke-direct {p0, v7}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getSecondIndex(I)I

    move-result v8

    .line 63
    .local v8, secondIndex:I
    sget-object v0, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "page()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getPage()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " firstIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secondIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v0, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->TAG:Ljava/lang/String;

    const-string v2, "Creating first article view... "

    invoke-static {v0, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eq v7, v9, :cond_1

    .line 68
    invoke-virtual {p0, v7}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$id;->widgetArticleContainerLeft:I

    .line 69
    sget v4, Lbbc/mobile/news/R$id;->widgetArticleHeadlineLeft:I

    .line 70
    sget v5, Lbbc/mobile/news/R$id;->widgetArticleImageLeft:I

    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->setArticleView(Landroid/widget/RemoteViews;Lbbc/mobile/news/model/Article;III)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 72
    :cond_1
    sget-object v0, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->TAG:Ljava/lang/String;

    const-string v2, "Creating second article view... "

    invoke-static {v0, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-eq v8, v9, :cond_2

    .line 75
    invoke-virtual {p0, v8}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$id;->widgetArticleContainerRight:I

    .line 76
    sget v4, Lbbc/mobile/news/R$id;->widgetArticleHeadlineRight:I

    .line 77
    sget v5, Lbbc/mobile/news/R$id;->widgetArticleImageRight:I

    move-object v0, p0

    .line 75
    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->setArticleView(Landroid/widget/RemoteViews;Lbbc/mobile/news/model/Article;III)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 79
    :cond_2
    invoke-virtual {v6}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->setWidgetHeader(Landroid/widget/RemoteViews;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 81
    sget v0, Lbbc/mobile/news/R$id;->widgetRefreshButton:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 82
    sget v0, Lbbc/mobile/news/R$id;->widgetArticlesContainer:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    sget v0, Lbbc/mobile/news/R$id;->widgetContainer:I

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 84
    sget v0, Lbbc/mobile/news/R$id;->widgetErrorView:I

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 86
    sget-object v0, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->TAG:Ljava/lang/String;

    const-string v2, "returning from buildRemoteViews() ..."

    invoke-static {v0, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 49
    .end local v1           #articleView:Landroid/widget/RemoteViews;
    .end local v6           #category:Lbbc/mobile/news/model/Category;
    .end local v7           #firstIndex:I
    .end local v8           #secondIndex:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 175
    sget v0, Lbbc/mobile/news/R$layout;->widget_4x2:I

    return v0
.end method

.method public getLoadingRemoteViews(I)Landroid/widget/RemoteViews;
    .locals 7
    .parameter "widgetId"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 141
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getLayoutId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 146
    .local v1, loadingView:Landroid/widget/RemoteViews;
    sget v2, Lbbc/mobile/news/R$id;->widgetArticleContainerLeft:I

    .line 147
    sget v3, Lbbc/mobile/news/R$id;->widgetArticleHeadlineLeft:I

    .line 148
    sget v4, Lbbc/mobile/news/R$id;->widgetArticleImageLeft:I

    .line 146
    invoke-direct {p0, v1, v2, v3, v4}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->setLoadingArticleView(Landroid/widget/RemoteViews;III)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 150
    sget v2, Lbbc/mobile/news/R$id;->widgetArticleContainerRight:I

    .line 151
    sget v3, Lbbc/mobile/news/R$id;->widgetArticleHeadlineRight:I

    .line 152
    sget v4, Lbbc/mobile/news/R$id;->widgetArticleImageRight:I

    .line 150
    invoke-direct {p0, v1, v2, v3, v4}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->setLoadingArticleView(Landroid/widget/RemoteViews;III)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 155
    sget v2, Lbbc/mobile/news/R$id;->widgetArticleContainerLeft:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 156
    sget v2, Lbbc/mobile/news/R$id;->widgetArticleContainerRight:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 157
    sget v2, Lbbc/mobile/news/R$id;->widgetArticlesContainer:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 158
    sget v2, Lbbc/mobile/news/R$id;->widgetContainer:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 159
    sget v2, Lbbc/mobile/news/R$id;->widgetRefreshButton:I

    invoke-virtual {v1, v2, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 160
    sget v2, Lbbc/mobile/news/R$id;->widgetErrorView:I

    invoke-virtual {v1, v2, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 163
    sget v2, Lbbc/mobile/news/R$id;->widgetRefreshButton:I

    invoke-virtual {p0, v0, p1}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getRefreshPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 165
    sget v2, Lbbc/mobile/news/R$id;->title:I

    sget v3, Lbbc/mobile/news/R$string;->widget_loading_text:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 166
    sget v2, Lbbc/mobile/news/R$id;->widgetArticleImageRight:I

    sget v3, Lbbc/mobile/news/R$drawable;->thumbnail_placeholder:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 167
    sget v2, Lbbc/mobile/news/R$id;->widgetArticleImageLeft:I

    sget v3, Lbbc/mobile/news/R$drawable;->thumbnail_placeholder:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 169
    return-object v1
.end method

.method protected getPageCount()I
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public setCategory(Lbbc/mobile/news/model/Category;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 31
    return-void
.end method

.method public setPage(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 36
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;->getPageCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 37
    const/4 p1, 0x0

    .line 40
    :cond_0
    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    .line 41
    const/4 p1, 0x0

    .line 43
    :cond_1
    invoke-super {p0, p1}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->setPage(I)V

    .line 44
    return-void
.end method

.method public setWidgetId(I)V
    .locals 0
    .parameter "widgetId"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->setWidgetId(I)V

    .line 26
    return-void
.end method

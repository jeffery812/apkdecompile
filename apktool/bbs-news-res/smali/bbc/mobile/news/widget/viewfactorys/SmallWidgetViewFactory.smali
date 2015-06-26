.class public Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;
.super Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;
.source "SmallWidgetViewFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method private setLoadingArticleView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "loadingView"

    .prologue
    .line 82
    sget v0, Lbbc/mobile/news/R$id;->widget_med_item_image:I

    sget v1, Lbbc/mobile/news/R$drawable;->thumbnail_placeholder:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 83
    sget v0, Lbbc/mobile/news/R$id;->widget_med_item_headline:I

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$string;->widget_loading_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 85
    sget v0, Lbbc/mobile/news/R$id;->widgetArticlesContainer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 86
    sget v0, Lbbc/mobile/news/R$id;->widgetArticlesContainer:I

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->getBlackIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 88
    return-object p1
.end method


# virtual methods
.method public declared-synchronized buildRemoteViews()Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    sget-object v0, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->TAG:Ljava/lang/String;

    const-string v2, "buildRemoteViews() called..."

    invoke-static {v0, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->hasCategory()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 67
    :goto_0
    monitor-exit p0

    return-object v1

    .line 41
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v6

    .line 42
    .local v6, category:Lbbc/mobile/news/model/Category;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->getLayoutId()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 44
    .local v1, articleView:Landroid/widget/RemoteViews;
    invoke-virtual {v6}, Lbbc/mobile/news/model/Category;->getArticles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Lbbc/mobile/news/model/Category;->setArticles(Ljava/util/ArrayList;)V

    .line 46
    sget-object v0, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->TAG:Ljava/lang/String;

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

    .line 48
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->getPage()I

    move-result v7

    .line 50
    .local v7, firstIndex:I
    sget-object v0, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->TAG:Ljava/lang/String;

    const-string v2, "Creating first article view... "

    invoke-static {v0, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1

    .line 54
    invoke-virtual {p0, v7}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v2

    .line 55
    sget v3, Lbbc/mobile/news/R$id;->widgetArticlesContainer:I

    .line 56
    sget v4, Lbbc/mobile/news/R$id;->widget_med_item_headline:I

    .line 57
    sget v5, Lbbc/mobile/news/R$id;->widget_med_item_image:I

    move-object v0, p0

    .line 53
    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->setArticleView(Landroid/widget/RemoteViews;Lbbc/mobile/news/model/Article;III)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 59
    :cond_1
    invoke-virtual {v6}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->setWidgetHeader(Landroid/widget/RemoteViews;Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 61
    sget v0, Lbbc/mobile/news/R$id;->widgetRefreshButton:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 62
    sget v0, Lbbc/mobile/news/R$id;->widgetArticlesContainer:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 63
    sget v0, Lbbc/mobile/news/R$id;->widgetContainer:I

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 64
    sget v0, Lbbc/mobile/news/R$id;->widgetErrorView:I

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 66
    sget-object v0, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->TAG:Ljava/lang/String;

    const-string v2, "returning from buildRemoteViews() ..."

    invoke-static {v0, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 37
    .end local v1           #articleView:Landroid/widget/RemoteViews;
    .end local v6           #category:Lbbc/mobile/news/model/Category;
    .end local v7           #firstIndex:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lbbc/mobile/news/R$layout;->widget_4x1:I

    return v0
.end method

.method public getLoadingRemoteViews(I)Landroid/widget/RemoteViews;
    .locals 6
    .parameter "widgetId"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 94
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->getLayoutId()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 99
    .local v1, loadingView:Landroid/widget/RemoteViews;
    invoke-direct {p0, v1}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->setLoadingArticleView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 102
    sget v2, Lbbc/mobile/news/R$id;->widgetArticlesContainer:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    sget v2, Lbbc/mobile/news/R$id;->widgetContainer:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    sget v2, Lbbc/mobile/news/R$id;->widgetRefreshButton:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    sget v2, Lbbc/mobile/news/R$id;->widgetErrorView:I

    invoke-virtual {v1, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 108
    sget v2, Lbbc/mobile/news/R$id;->widgetRefreshButton:I

    invoke-virtual {p0, v0, p1}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;->getRefreshPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 110
    sget v2, Lbbc/mobile/news/R$id;->title:I

    sget v3, Lbbc/mobile/news/R$string;->widget_loading_text:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 112
    return-object v1
.end method

.method protected setArticleView(Landroid/widget/RemoteViews;Lbbc/mobile/news/model/Article;III)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "remoteView"
    .parameter "article"
    .parameter "viewId"
    .parameter "headlineId"
    .parameter "imageId"

    .prologue
    .line 73
    invoke-super/range {p0 .. p5}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->setArticleView(Landroid/widget/RemoteViews;Lbbc/mobile/news/model/Article;III)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 75
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    sget v1, Lbbc/mobile/news/R$id;->widgetArticlesContainer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 77
    return-object p1
.end method

.method public setCategory(Lbbc/mobile/news/model/Category;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 21
    invoke-super {p0, p1}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 22
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->setPage(I)V

    .line 27
    return-void
.end method

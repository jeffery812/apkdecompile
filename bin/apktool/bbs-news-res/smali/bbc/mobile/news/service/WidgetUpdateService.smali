.class public Lbbc/mobile/news/service/WidgetUpdateService;
.super Landroid/app/IntentService;
.source "WidgetUpdateService.java"


# static fields
.field public static final MSG_PAGE_CHANGE:I = 0x1

.field public static final MSG_UPDATE_WIDGET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WidgetUpdateService"

.field public static final WIDGET_INVALID:I = -0x1

.field public static final WIDGET_SHOW_NEXT:I = 0x0

.field public static final WIDGET_SHOW_PREVIOUS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "WidgetUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private doChangeWidgetPage(ILandroid/content/Intent;Landroid/content/Context;)V
    .locals 6
    .parameter "widgetId"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 195
    const-string v2, "WidgetUpdateService"

    const-string v3, "doChangeWidgetPage()"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p1, v1, v5

    .line 198
    .local v1, widgetIds:[I
    const-string v2, "WidgetUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "single widget id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-eqz p1, :cond_0

    .line 201
    sget v2, Lbbc/mobile/news/R$string;->bundle_key_widget_page_change:I

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 202
    .local v0, newPage:I
    invoke-static {v1, p2, p3, v0, v5}, Lbbc/mobile/news/service/WidgetUpdateService;->doUpdate([ILandroid/content/Intent;Landroid/content/Context;IZ)V

    .line 204
    .end local v0           #newPage:I
    :cond_0
    return-void
.end method

.method public static doUpdate([ILandroid/content/Intent;Landroid/content/Context;IZ)V
    .locals 19
    .parameter "widgetIds"
    .parameter "intent"
    .parameter "context"
    .parameter "page"
    .parameter "forceUpdateFeeds"

    .prologue
    .line 77
    const-string v13, "WidgetUpdateService"

    const-string v14, "doUpdateWidget()"

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static/range {p2 .. p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    .line 81
    .local v11, widgetManager:Landroid/appwidget/AppWidgetManager;
    const-string v13, "WidgetUpdateService"

    const-string v14, "populating feed cache..."

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static/range {p2 .. p2}, Lbbc/mobile/news/service/WidgetUpdateService;->populateFeedCache(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 84
    const-string v13, "WidgetUpdateService"

    const-string v14, "ERROR: could not populate feed cache... quitting update"

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v12, 0x0

    .local v12, x:I
    :goto_0
    move-object/from16 v0, p0

    array-length v13, v0

    if-ge v12, v13, :cond_0

    .line 90
    aget v13, p0, v12

    invoke-static {v13}, Lbbc/mobile/news/widget/WidgetManager;->fetchFromDisk(I)Z

    move-result v8

    .line 91
    .local v8, loadfromCache:Z
    aget v13, p0, v12

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lbbc/mobile/news/widget/WidgetManager;->setFetchFromDisk(IZ)V

    .line 93
    aget v13, p0, v12

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lbbc/mobile/news/service/WidgetUpdateService;->getWidgetViewFactory(Landroid/content/Context;I)Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;

    move-result-object v10

    .line 94
    .local v10, viewFactory:Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;
    aget v13, p0, v12

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lbbc/mobile/news/widget/WidgetManager;->getWidgetCategoryName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, categoryName:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 97
    invoke-static {}, Lbbc/mobile/news/cache/FeedCache;->getInstance()Lbbc/mobile/news/cache/FeedCache;

    move-result-object v13

    invoke-virtual {v13}, Lbbc/mobile/news/cache/FeedCache;->getDefaultFeed()Ljava/lang/String;

    move-result-object v2

    .line 99
    :cond_2
    if-eqz v10, :cond_a

    .line 101
    if-eqz p4, :cond_3

    .line 102
    aget v13, p0, v12

    aget v14, p0, v12

    invoke-virtual {v10, v14}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getLoadingRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 104
    :cond_3
    const-string v13, "WidgetUpdateService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "WidgetId: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v15, p0, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "matches category "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    if-eqz p4, :cond_4

    invoke-static/range {p2 .. p2}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-nez v8, :cond_4

    .line 108
    const-string v13, "WidgetUpdateService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Network connected... attempting to refresh feed "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lbbc/mobile/news/model/Feed;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {}, Lbbc/mobile/news/cache/FeedCache;->getInstance()Lbbc/mobile/news/cache/FeedCache;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lbbc/mobile/news/cache/FeedCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Feed;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v13 .. v16}, Lbbc/mobile/news/webclient/CategoryManager;->get(Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;IZ[Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v7

    .line 111
    .local v7, forceUpdatedCategory:Lbbc/mobile/news/model/Category;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 112
    const-string v13, "WidgetUpdateService"

    const-string v14, "Force update of category Ok!"

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v6

    .line 115
    .local v6, firstForcedArticle:Lbbc/mobile/news/model/Article;
    if-eqz v6, :cond_4

    .line 116
    const-string v13, "WidgetUpdateService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "First article of force updated category title= "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .end local v6           #firstForcedArticle:Lbbc/mobile/news/model/Article;
    .end local v7           #forceUpdatedCategory:Lbbc/mobile/news/model/Category;
    :cond_4
    const-string v13, "WidgetUpdateService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Requesting category "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from cache..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lbbc/mobile/news/cache/FeedCache;->getInstance()Lbbc/mobile/news/cache/FeedCache;

    move-result-object v13

    invoke-virtual {v13, v2}, Lbbc/mobile/news/cache/FeedCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Feed;

    move-result-object v4

    .line 125
    .local v4, feed:Lbbc/mobile/news/model/Feed;
    if-eqz v4, :cond_7

    .line 126
    const-string v13, "WidgetUpdateService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Feed object fetched for category "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lbbc/mobile/news/model/Feed;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v4, v16, v17

    invoke-static/range {v13 .. v16}, Lbbc/mobile/news/webclient/CategoryManager;->get(Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;IZ[Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v1

    .line 133
    .local v1, category:Lbbc/mobile/news/model/Category;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 135
    const-string v13, "WidgetUpdateService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " pulled from cache... setting view factory and updating..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v5

    .line 138
    .local v5, firstCachedArticle:Lbbc/mobile/news/model/Article;
    if-eqz v5, :cond_5

    .line 139
    const-string v13, "WidgetUpdateService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "First cached article title= "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_5
    if-eqz p4, :cond_6

    invoke-static/range {p2 .. p2}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 143
    const-string v13, "WidgetUpdateService"

    const-string v14, "Updating image cache for article images..."

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {v1}, Lbbc/mobile/news/service/WidgetUpdateService;->fetchImages(Lbbc/mobile/news/model/Category;)V

    .line 147
    :cond_6
    aget v13, p0, v12

    invoke-virtual {v10, v13}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->setWidgetId(I)V

    .line 148
    invoke-virtual {v10, v1}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 149
    move/from16 v0, p3

    invoke-virtual {v10, v0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->setPage(I)V

    .line 150
    invoke-virtual {v10}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->buildRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v9

    .line 151
    .local v9, remoteView:Landroid/widget/RemoteViews;
    if-eqz v9, :cond_8

    .line 152
    aget v13, p0, v12

    invoke-virtual {v11, v13, v9}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 88
    .end local v1           #category:Lbbc/mobile/news/model/Category;
    .end local v4           #feed:Lbbc/mobile/news/model/Feed;
    .end local v5           #firstCachedArticle:Lbbc/mobile/news/model/Article;
    .end local v9           #remoteView:Landroid/widget/RemoteViews;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 128
    .restart local v4       #feed:Lbbc/mobile/news/model/Feed;
    :cond_7
    const-string v13, "WidgetUpdateService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ERROR: Could not find feed object for category "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 154
    .restart local v1       #category:Lbbc/mobile/news/model/Category;
    .restart local v5       #firstCachedArticle:Lbbc/mobile/news/model/Article;
    .restart local v9       #remoteView:Landroid/widget/RemoteViews;
    :cond_8
    aget v13, p0, v12

    .line 155
    sget v14, Lbbc/mobile/news/R$string;->toast_no_connection:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aget v15, p0, v12

    .line 154
    invoke-virtual {v10, v14, v15}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getErrorRemoteViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 156
    const-string v13, "WidgetUpdateService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "WidgetError:  remote view null, widgetId = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v15, p0, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 161
    .end local v5           #firstCachedArticle:Lbbc/mobile/news/model/Article;
    .end local v9           #remoteView:Landroid/widget/RemoteViews;
    :cond_9
    aget v13, p0, v12

    .line 162
    sget v14, Lbbc/mobile/news/R$string;->toast_no_connection:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aget v15, p0, v12

    .line 161
    invoke-virtual {v10, v14, v15}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getErrorRemoteViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_2

    .line 167
    .end local v1           #category:Lbbc/mobile/news/model/Category;
    .end local v4           #feed:Lbbc/mobile/news/model/Feed;
    :cond_a
    sget v13, Lbbc/mobile/news/R$string;->toast_no_connection:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, errorMessage:Ljava/lang/String;
    const-string v13, "WidgetUpdateService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "WidgetError: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " widgetIds = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private doUpdateWidgets([ILandroid/content/Intent;Landroid/content/Context;)V
    .locals 5
    .parameter "widgetIds"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 175
    const-string v2, "WidgetUpdateService"

    const-string v4, "doUpdateWidgets()"

    invoke-static {v2, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    if-nez p1, :cond_0

    .line 178
    const-string v2, "WidgetUpdateService"

    const-string v3, "onHandleIntent() received widgetIds[]=null, why... no one knows!... bailing!"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v0, "widgetIds: "

    .line 184
    .local v0, logWidgetIds:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_1

    .line 188
    const-string v2, "WidgetUpdateService"

    invoke-static {v2, v0}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {p3}, Lbbc/mobile/news/util/GlobalSettings;->isPollingDisabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-static {p1, p2, p3, v3, v2}, Lbbc/mobile/news/service/WidgetUpdateService;->doUpdate([ILandroid/content/Intent;Landroid/content/Context;IZ)V

    goto :goto_0

    .line 185
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private static fetchImages(Lbbc/mobile/news/model/Category;)V
    .locals 8
    .parameter "category"

    .prologue
    .line 231
    const-string v5, "WidgetUpdateService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fedtchImages() category "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " articles."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 235
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lbbc/mobile/news/model/Category;->getArticles()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 275
    return-void

    .line 235
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Article;

    .line 237
    .local v0, article:Lbbc/mobile/news/model/Article;
    const/4 v3, 0x0

    .line 238
    .local v3, isCached:Z
    const/4 v4, 0x0

    .line 240
    .local v4, url:Ljava/net/URI;
    if-eqz v0, :cond_0

    .line 244
    :try_start_0
    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getThumbnailAsUrl()Ljava/net/URL;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getThumbnailAsUrl()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v4

    .line 246
    :goto_1
    if-eqz v4, :cond_2

    .line 247
    invoke-static {v4}, Lbbc/mobile/news/webclient/BitmapManager;->isInDiskCache(Ljava/net/URI;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 253
    :cond_2
    :goto_2
    if-nez v3, :cond_5

    if-eqz v4, :cond_5

    .line 257
    :try_start_1
    invoke-static {v1, v4}, Lbbc/mobile/news/webclient/BitmapManager;->downloadBitmapFromNetwork(Landroid/content/Context;Ljava/net/URI;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 258
    const-string v6, "WidgetUpdateService"

    const-string v7, "Cache miss for widget article image, downloaded sucessfully"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v2

    .line 264
    .local v2, exception:Ljava/lang/OutOfMemoryError;
    const-string v6, "WidgetUpdateService"

    const-string v7, "OutOfMemory when downloading article image for widget"

    invoke-static {v6, v7, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 244
    .end local v2           #exception:Ljava/lang/OutOfMemoryError;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 249
    :catch_1
    move-exception v2

    .line 250
    .local v2, exception:Ljava/net/URISyntaxException;
    const-string v6, "WidgetUpdateService"

    const-string v7, "Exception caught when receiving bitmap from invalid url"

    invoke-static {v6, v7, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 260
    .end local v2           #exception:Ljava/net/URISyntaxException;
    :cond_4
    :try_start_2
    const-string v6, "WidgetUpdateService"

    const-string v7, "Cache miss for widget article image, download failed"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 268
    :cond_5
    if-eqz v4, :cond_6

    .line 269
    const-string v6, "WidgetUpdateService"

    const-string v7, "Cache hit for widget article image!"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_6
    const-string v6, "WidgetUpdateService"

    const-string v7, "Url null for image thumbnail"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getWidgetViewFactory(Landroid/content/Context;I)Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;
    .locals 5
    .parameter "context"
    .parameter "widgetId"

    .prologue
    .line 208
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 210
    .local v1, providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_1

    .line 212
    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, componentName:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 216
    const-class v2, Lbbc/mobile/news/widget/LargeWidgetProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    new-instance v2, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;

    invoke-direct {v2, p0}, Lbbc/mobile/news/widget/viewfactorys/LargeWidgetViewFactory;-><init>(Landroid/content/Context;)V

    .line 226
    .end local v0           #componentName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 219
    .restart local v0       #componentName:Ljava/lang/String;
    :cond_0
    const-class v2, Lbbc/mobile/news/widget/SmallWidgetProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    new-instance v2, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;

    invoke-direct {v2, p0}, Lbbc/mobile/news/widget/viewfactorys/SmallWidgetViewFactory;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 225
    .end local v0           #componentName:Ljava/lang/String;
    :cond_1
    const-string v2, "WidgetUpdateService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported Widget. No View factory found, widgetId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static populateFeedCache(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 279
    const-string v1, "WidgetUpdateService"

    const-string v2, "requesting config from disk ..."

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lbbc/mobile/news/webclient/BootstrapManager;->getPersonalised(Landroid/content/Context;I)Lbbc/mobile/news/model/Config;

    move-result-object v0

    .line 282
    .local v0, config:Lbbc/mobile/news/model/Config;
    if-eqz v0, :cond_0

    .line 283
    const-string v1, "WidgetUpdateService"

    const-string v2, "Config found! ..."

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Config;->populateFeedCache(Z)Z

    move-result v1

    .line 288
    :goto_0
    return v1

    .line 287
    :cond_0
    const-string v1, "WidgetUpdateService"

    const-string v2, "ERROR: could not find config file."

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 54
    const-string v3, "WidgetUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onHandleIntent() "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget v3, Lbbc/mobile/news/R$string;->bundle_key_service_message:I

    invoke-virtual {p0, v3}, Lbbc/mobile/news/service/WidgetUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 57
    .local v0, message:I
    sget v3, Lbbc/mobile/news/R$string;->bundle_key_widget_id:I

    invoke-virtual {p0, v3}, Lbbc/mobile/news/service/WidgetUpdateService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, widgetId:I
    const-string v3, "appWidgetIds"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 60
    .local v2, widgetIds:[I
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 61
    const/4 v3, 0x1

    new-array v2, v3, [I

    .end local v2           #widgetIds:[I
    const-string v3, "appWidgetId"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v6

    .line 62
    .restart local v2       #widgetIds:[I
    const-string v3, "WidgetUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WIDGET IDS NULL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length of array "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    const-string v3, "WidgetUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "message: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v3, "WidgetUpdateService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "intent: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-direct {p0, v2, p1, p0}, Lbbc/mobile/news/service/WidgetUpdateService;->doUpdateWidgets([ILandroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-direct {p0, v1, p1, p0}, Lbbc/mobile/news/service/WidgetUpdateService;->doChangeWidgetPage(ILandroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

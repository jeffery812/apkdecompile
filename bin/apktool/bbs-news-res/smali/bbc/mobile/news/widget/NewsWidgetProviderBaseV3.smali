.class public abstract Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;
.super Landroid/appwidget/AppWidgetProvider;
.source "NewsWidgetProviderBaseV3.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final CLICK_ACTION_REQUEST_CODE:I = 0x1

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final REFRESH_ACTION:Ljava/lang/String; = "bbc.mobile.news.newswidget.provider.REFRESH"

.field public static final REFRESH_ACTION_CODE:I = 0x2

.field private static volatile REQUEST_CODE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ICS_WIDGET"

.field private static sDataObserver:Lbbc/mobile/news/widget/WidgetProviderObserver;

.field private static sWorkerQueue:Landroid/os/Handler;

.field private static sWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "content://bbc.mobile.news.newswidget.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->CONTENT_URI:Landroid/net/Uri;

    .line 39
    const/4 v0, 0x0

    sput v0, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 43
    const-string v0, "ICS_WIDGET"

    const-string v1, "widget created..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NewsWidgetProvider-worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->sWorkerThread:Landroid/os/HandlerThread;

    .line 47
    sget-object v0, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->sWorkerQueue:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public static final getHomeActivityIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 184
    sget-object v2, Lbbc/mobile/news/helper/NewsServiceConstants;->HOME_ACTIVITY_INTENT:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v2}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 186
    .local v0, homeActivityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 188
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v1, homeButtonIntent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 191
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 193
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 195
    const-string v2, "FROM"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    if-eqz p1, :cond_0

    .line 198
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    .end local v1           #homeButtonIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final declared-synchronized getUniqueRequestCode()I
    .locals 2

    .prologue
    .line 244
    const-class v1, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;

    monitor-enter v1

    :try_start_0
    sget v0, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->REQUEST_CODE:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->REQUEST_CODE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final setHomePendingIntent(Landroid/widget/RemoteViews;Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "remoteViews"
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 151
    sget v0, Lbbc/mobile/news/R$id;->widgetHomeButton:I

    .line 154
    invoke-static {}, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->getUniqueRequestCode()I

    move-result v1

    .line 155
    invoke-static {p1, p2}, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->getHomeActivityIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    .line 156
    const/high16 v3, 0x800

    .line 152
    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 151
    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 158
    return-object p0
.end method


# virtual methods
.method public abstract getLayoutResource()I
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 77
    const-string v1, "ICS_WIDGET"

    const-string v2, "onDeleted()..."

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 82
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 83
    return-void

    .line 80
    :cond_0
    aget v1, p2, v0

    invoke-static {p1, v1}, Lbbc/mobile/news/widget/WidgetManager;->deleteWidget(Landroid/content/Context;I)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 54
    const-string v3, "ICS_WIDGET"

    const-string v4, "onEnabled()..."

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 58
    .local v2, r:Landroid/content/ContentResolver;
    sget-object v3, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->sDataObserver:Lbbc/mobile/news/widget/WidgetProviderObserver;

    if-nez v3, :cond_0

    .line 59
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 60
    .local v1, mgr:Landroid/appwidget/AppWidgetManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;

    invoke-direct {v0, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v3, Lbbc/mobile/news/widget/WidgetProviderObserver;

    sget-object v4, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->sWorkerQueue:Landroid/os/Handler;

    invoke-direct {v3, v1, v0, v4}, Lbbc/mobile/news/widget/WidgetProviderObserver;-><init>(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;Landroid/os/Handler;)V

    sput-object v3, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->sDataObserver:Lbbc/mobile/news/widget/WidgetProviderObserver;

    .line 62
    sget-object v3, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    sget-object v5, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->sDataObserver:Lbbc/mobile/news/widget/WidgetProviderObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #mgr:Landroid/appwidget/AppWidgetManager;
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 69
    const-string v0, "ICS_WIDGET"

    const-string v1, "onReceive()..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 10
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    const/4 v9, 0x1

    .line 90
    const-string v6, "ICS_WIDGET"

    const-string v7, "onUpdate()..."

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p3

    if-lt v1, v6, :cond_0

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 147
    return-void

    .line 95
    :cond_0
    aget v6, p3, v1

    invoke-static {p1, v6}, Lbbc/mobile/news/widget/WidgetManager;->getWidgetCategoryName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, categoryName:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lbbc/mobile/news/widget/NewsRemoteViewsService;

    invoke-direct {v2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v2, intent:Landroid/content/Intent;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 101
    const-string v6, "appWidgetId"

    aget v7, p3, v1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    invoke-virtual {v2, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 103
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->getLayoutResource()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 105
    .local v5, rv:Landroid/widget/RemoteViews;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-ge v6, v7, :cond_1

    .line 106
    aget v6, p3, v1

    sget v7, Lbbc/mobile/news/R$id;->widget_news_list:I

    invoke-virtual {v5, v6, v7, v2}, Landroid/widget/RemoteViews;->setRemoteAdapter(IILandroid/content/Intent;)V

    .line 111
    :goto_1
    sget v6, Lbbc/mobile/news/R$id;->widget_news_list:I

    sget v7, Lbbc/mobile/news/R$id;->widgetEmptyView:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setEmptyView(II)V

    .line 112
    sget v6, Lbbc/mobile/news/R$id;->widgetNewsItemCategory:I

    invoke-virtual {v5, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 117
    const/4 v6, 0x4

    invoke-static {v6}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent(I)Landroid/content/Intent;

    move-result-object v3

    .line 118
    .local v3, onClickIntent:Landroid/content/Intent;
    const-string v6, "appWidgetId"

    aget v7, p3, v1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const/high16 v6, 0x800

    .line 121
    invoke-static {p1, v9, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 126
    .local v4, onClickPendingIntent:Landroid/app/PendingIntent;
    sget v6, Lbbc/mobile/news/R$id;->widget_news_list:I

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 129
    aget v6, p3, v1

    invoke-static {v5, p1, v6}, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->setHomePendingIntent(Landroid/widget/RemoteViews;Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 130
    aget v6, p3, v1

    invoke-virtual {p0, v5, p1, p2, v6}, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV3;->setRefreshPendingIntent(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 137
    aget v6, p3, v1

    invoke-virtual {p2, v6, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 139
    sget v6, Lbbc/mobile/news/R$id;->widget_news_list:I

    invoke-virtual {p2, p3, v6}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 93
    .end local v3           #onClickIntent:Landroid/content/Intent;
    .end local v4           #onClickPendingIntent:Landroid/app/PendingIntent;
    .end local v5           #rv:Landroid/widget/RemoteViews;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 108
    .restart local v5       #rv:Landroid/widget/RemoteViews;
    :cond_1
    sget v6, Lbbc/mobile/news/R$id;->widget_news_list:I

    invoke-virtual {v5, v6, v2}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    goto :goto_1

    .line 142
    .end local v5           #rv:Landroid/widget/RemoteViews;
    :cond_2
    const-string v6, "ICS_WIDGET"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ERROR: Widget Update Failed: No widget news category that matches widget Id: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v8, p3, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onWidgetHomeClicked(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "widgetId"
    .parameter "categoryName"

    .prologue
    .line 236
    const-string v0, "ICS_WIDGET"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWidgetHomeClicked() widgetId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x4

    invoke-static {v0}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 239
    return-void
.end method

.method public onWidgetNewsItemClicked(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 208
    invoke-static {p2}, Lbbc/mobile/news/util/IntentFactory;->getCategory(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, categoryName:Ljava/lang/String;
    invoke-static {p2}, Lbbc/mobile/news/util/IntentFactory;->getArticleId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, articleId:Ljava/lang/String;
    const-string v3, "appWidgetId"

    .line 211
    const/4 v4, 0x0

    .line 210
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 213
    .local v2, widgetId:I
    if-eqz v2, :cond_0

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    const-string v3, "ICS_WIDGET"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onWidgetNewsItemClicked() category:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 218
    const-string v5, "  articleId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  widgetId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 219
    const-string v5, "  starting news app..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 217
    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v3, 0x4

    invoke-static {v1, v0, v3}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v3, "ICS_WIDGET"

    const-string v4, "onWidgetNewsItemClicked() ERROR: invalid parameters."

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWidgetRefreshClicked(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 232
    return-void
.end method

.method public setRefreshPendingIntent(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)Landroid/widget/RemoteViews;
    .locals 5
    .parameter "remoteViews"
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetId"

    .prologue
    const/4 v4, 0x0

    .line 164
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p4, v1, v4

    .line 166
    .local v1, widgetIds:[I
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v2, "appWidgetIds"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 169
    new-instance v2, Landroid/content/ComponentName;

    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 171
    sget v2, Lbbc/mobile/news/R$id;->widgetRefreshButton:I

    .line 174
    const/4 v3, 0x2

    .line 172
    invoke-static {p2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 171
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 178
    return-object p1
.end method

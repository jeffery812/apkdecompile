.class public Lbbc/mobile/news/widget/NewsWidgetProviderBaseV2;
.super Landroid/appwidget/AppWidgetProvider;
.source "NewsWidgetProviderBaseV2.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidget"

.field public static final WIDGET_PAGE_CHANGE:Ljava/lang/String; = "bbc.mobile.news.widget.WIDGET_PAGE_CHANGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static getServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isUk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bbc.mobile.news.uk.service.WidgetUpdateService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :goto_0
    return-object p1

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bbc.mobile.news.ww.service.WidgetUpdateService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private logAppWidgetIds([I)V
    .locals 4
    .parameter "appWidgetIds"

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 67
    return-void

    .line 66
    :cond_0
    const-string v1, "AppWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appWidgetIds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized onDeleted(Landroid/content/Context;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    const-string v1, "AppWidget"

    const-string v2, "onDeleted()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV2;->logAppWidgetIds([I)V

    .line 43
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 46
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 44
    :cond_0
    :try_start_1
    aget v1, p2, v0

    invoke-static {p1, v1}, Lbbc/mobile/news/widget/WidgetManager;->deleteWidget(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v0           #x:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 53
    const-string v0, "AppWidget"

    const-string v1, "onDisabled()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 60
    const-string v0, "AppWidget"

    const-string v1, "onEnabled()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bbc.mobile.news.widget.WIDGET_PAGE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string v1, "AppWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive() WIDGET_PAGE_CHANGE intent :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p1, p2}, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV2;->getServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    .end local v0           #serviceIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 17
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 19
    const-string v1, "AppWidget"

    const-string v2, "onUpdate()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV2;->logAppWidgetIds([I)V

    .line 21
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v1}, Lbbc/mobile/news/widget/NewsWidgetProviderBaseV2;->getServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 22
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 25
    return-void
.end method

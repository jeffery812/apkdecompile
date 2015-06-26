.class public Lbbc/mobile/news/widget/NewsRemoteViewsService;
.super Landroid/widget/RemoteViewsService;
.source "NewsRemoteViewsService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lbbc/mobile/news/widget/NewsRemoteViewsService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/widget/NewsRemoteViewsService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method

.method private getFactoryForWidgetProvider(Landroid/content/ComponentName;Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .parameter "providerName"
    .parameter "intent"

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lbbc/mobile/news/widget/StackViewWidgetProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lbbc/mobile/news/widget/viewfactorys/StackWidgetViewFactory;

    invoke-virtual {p0}, Lbbc/mobile/news/widget/NewsRemoteViewsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lbbc/mobile/news/widget/viewfactorys/StackWidgetViewFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 76
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lbbc/mobile/news/widget/GridViewWidgetProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Lbbc/mobile/news/widget/viewfactorys/GridWidgetViewFactory;

    invoke-virtual {p0}, Lbbc/mobile/news/widget/NewsRemoteViewsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lbbc/mobile/news/widget/viewfactorys/GridWidgetViewFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0, p2}, Lbbc/mobile/news/widget/NewsRemoteViewsService;->getErrorFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getErrorFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .parameter "intent"

    .prologue
    .line 82
    new-instance v0, Lbbc/mobile/news/widget/viewfactorys/StackWidgetViewFactory;

    invoke-virtual {p0}, Lbbc/mobile/news/widget/NewsRemoteViewsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lbbc/mobile/news/widget/viewfactorys/StackWidgetViewFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 7
    .parameter "intent"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 41
    .local v2, widgetManager:Landroid/appwidget/AppWidgetManager;
    const-string v4, "appWidgetId"

    .line 42
    const/4 v5, 0x0

    .line 41
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, widgetId:I
    if-eqz v1, :cond_2

    .line 46
    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 48
    .local v3, widgetProvider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v3, :cond_1

    invoke-virtual {p0, p1}, Lbbc/mobile/news/widget/NewsRemoteViewsService;->getErrorFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object v0

    .line 66
    .end local v3           #widgetProvider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    :goto_0
    return-object v0

    .line 50
    .restart local v3       #widgetProvider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    sget-object v4, Lbbc/mobile/news/widget/NewsRemoteViewsService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onGetViewFactory(AppWidgetID:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 51
    const-string v6, "AppWidgetProvider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {p0, v4, p1}, Lbbc/mobile/news/widget/NewsRemoteViewsService;->getFactoryForWidgetProvider(Landroid/content/ComponentName;Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object v0

    .line 55
    .local v0, viewFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    if-nez v0, :cond_0

    .line 59
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "onGetViewFactory().. called from unsupported WidgetProvider!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    .end local v0           #viewFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .end local v3           #widgetProvider:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    sget-object v4, Lbbc/mobile/news/widget/NewsRemoteViewsService;->TAG:Ljava/lang/String;

    const-string v5, "onGetViewFactory() Invalid app Id"

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lbbc/mobile/news/widget/NewsRemoteViewsService;->getErrorFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    move-result-object v0

    goto :goto_0
.end method

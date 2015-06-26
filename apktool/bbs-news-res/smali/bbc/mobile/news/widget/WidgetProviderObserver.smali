.class public Lbbc/mobile/news/widget/WidgetProviderObserver;
.super Landroid/database/ContentObserver;
.source "WidgetProviderObserver.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ICS_WIDGET"


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;Landroid/os/Handler;)V
    .locals 2
    .parameter "mgr"
    .parameter "cn"
    .parameter "h"

    .prologue
    .line 25
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 26
    const-string v0, "ICS_WIDGET"

    const-string v1, "NewsWidgetDataProviderObserver() created..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lbbc/mobile/news/widget/WidgetProviderObserver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 28
    iput-object p2, p0, Lbbc/mobile/news/widget/WidgetProviderObserver;->mComponentName:Landroid/content/ComponentName;

    .line 29
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 40
    const-string v0, "ICS_WIDGET"

    const-string v1, "Observer - onChange()..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lbbc/mobile/news/widget/WidgetProviderObserver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lbbc/mobile/news/widget/WidgetProviderObserver;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p0, Lbbc/mobile/news/widget/WidgetProviderObserver;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$id;->widget_news_list:I

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 43
    return-void
.end method

.class public Lbbc/mobile/news/widget/WidgetManager;
.super Ljava/lang/Object;
.source "WidgetManager.java"


# static fields
.field public static final FETCH_FROM_DISK:I = 0x1

.field public static final FETCH_FROM_NETWORK:I = 0x0

.field public static final TAG:Ljava/lang/String; = null

.field private static final TYPE:Ljava/lang/String; = "_type"

.field private static final WIDGET_KEY_PREFIX:Ljava/lang/String; = "bbcwidget_"

.field public static final mFetchFromDisk:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbbc/mobile/news/widget/WidgetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/widget/WidgetManager;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lbbc/mobile/news/widget/WidgetManager;->mFetchFromDisk:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized addWidget(Landroid/content/Context;ILbbc/mobile/news/model/Category;)V
    .locals 2
    .parameter "context"
    .parameter "widgetId"
    .parameter "category"

    .prologue
    .line 30
    const-class v1, Lbbc/mobile/news/widget/WidgetManager;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lbbc/mobile/news/widget/WidgetManager;->addWidget(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v1

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized addWidget(Landroid/content/Context;ILjava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "widgetId"
    .parameter "categoryName"

    .prologue
    .line 36
    const-class v7, Lbbc/mobile/news/widget/WidgetManager;

    monitor-enter v7

    :try_start_0
    const-string v5, "unknown"

    .line 37
    .local v5, widgetType:Ljava/lang/String;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 38
    .local v0, awi:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    .line 39
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v5

    .line 41
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 42
    .local v4, sp:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 43
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "bbcwidget_"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "bbcwidget_"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_type"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    .line 49
    .local v2, gs:Lbbc/mobile/news/util/GlobalSettings;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 50
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 51
    .local v3, providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v3, :cond_1

    .line 52
    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v6

    iget-object v8, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v8}, Lbbc/mobile/news/widget/WidgetManager;->providerToWidgetType(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p2, v8}, Lbbc/mobile/news/stats/Stats;->logAddWidgetACTION(Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v3           #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    monitor-exit v7

    return-void

    .line 36
    .end local v0           #awi:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #gs:Lbbc/mobile/news/util/GlobalSettings;
    .end local v4           #sp:Landroid/content/SharedPreferences;
    .end local v5           #widgetType:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static final declared-synchronized deleteWidget(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "widgetId"

    .prologue
    .line 59
    const-class v8, Lbbc/mobile/news/widget/WidgetManager;

    monitor-enter v8

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 60
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 63
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v2

    .line 64
    .local v2, gs:Lbbc/mobile/news/util/GlobalSettings;
    const/4 v6, 0x0

    .line 66
    .local v6, stats:Lbbc/mobile/news/stats/Stats;
    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v2}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v6

    .line 70
    :cond_0
    if-eqz v6, :cond_2

    .line 72
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 74
    .local v4, providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    const-string v3, "unknown"

    .line 76
    .local v3, provider:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 77
    iget-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v7}, Lbbc/mobile/news/widget/WidgetManager;->providerToWidgetType(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 80
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "bbcwidget_"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "unknown"

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, categoryName:Ljava/lang/String;
    invoke-virtual {v6, v0, v3}, Lbbc/mobile/news/stats/Stats;->logRemoveWidgetACTION(Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;

    .line 85
    .end local v0           #categoryName:Ljava/lang/String;
    .end local v3           #provider:Ljava/lang/String;
    .end local v4           #providerInfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "bbcwidget_"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "bbcwidget_"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_type"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit v8

    return-void

    .line 59
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #gs:Lbbc/mobile/news/util/GlobalSettings;
    .end local v5           #sp:Landroid/content/SharedPreferences;
    .end local v6           #stats:Lbbc/mobile/news/stats/Stats;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static final declared-synchronized fetchFromDisk(I)Z
    .locals 3
    .parameter "widgetID"

    .prologue
    const/4 v0, 0x1

    .line 98
    const-class v1, Lbbc/mobile/news/widget/WidgetManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lbbc/mobile/news/widget/WidgetManager;->mFetchFromDisk:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseIntArray;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final getHoneycombWidgetProviderComponenetNames(Landroid/content/Context;)[Landroid/content/ComponentName;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 154
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 156
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/content/ComponentName;

    .line 158
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lbbc/mobile/news/widget/StackViewWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 159
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lbbc/mobile/news/widget/GridViewWidgetProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    .line 165
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static final getLegacyWidgetProviderComponentNames(Landroid/content/Context;)[Landroid/content/ComponentName;
    .locals 4
    .parameter "context"

    .prologue
    .line 143
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/content/ComponentName;

    const/4 v1, 0x0

    .line 144
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lbbc/mobile/news/widget/LargeWidgetProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 145
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lbbc/mobile/news/widget/SmallWidgetProvider;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    .line 148
    .local v0, legacyWidgets:[Landroid/content/ComponentName;
    return-object v0
.end method

.method public static final declared-synchronized getWidgetCategoryName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "widgetId"

    .prologue
    .line 92
    const-class v2, Lbbc/mobile/news/widget/WidgetManager;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    .local v0, sp:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "bbcwidget_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 92
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static final getWidgetProviderComponentNames(Landroid/content/Context;)[Landroid/content/ComponentName;
    .locals 8
    .parameter "context"

    .prologue
    .line 117
    invoke-static {p0}, Lbbc/mobile/news/widget/WidgetManager;->getLegacyWidgetProviderComponentNames(Landroid/content/Context;)[Landroid/content/ComponentName;

    move-result-object v3

    .line 118
    .local v3, legacyWidgets:[Landroid/content/ComponentName;
    invoke-static {p0}, Lbbc/mobile/news/widget/WidgetManager;->getHoneycombWidgetProviderComponenetNames(Landroid/content/Context;)[Landroid/content/ComponentName;

    move-result-object v1

    .line 119
    .local v1, honeycombWidgets:[Landroid/content/ComponentName;
    array-length v6, v3

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v5, v6, [Landroid/content/ComponentName;

    .line 121
    .local v5, widgetProviders:[Landroid/content/ComponentName;
    const/4 v4, 0x0

    .line 123
    .local v4, next:I
    const/4 v2, 0x0

    .local v2, l:I
    :goto_0
    array-length v6, v3

    if-lt v2, v6, :cond_0

    .line 131
    const/4 v0, 0x0

    .local v0, h:I
    :goto_1
    array-length v6, v1

    if-lt v0, v6, :cond_2

    .line 138
    return-object v5

    .line 124
    .end local v0           #h:I
    :cond_0
    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 125
    aget-object v6, v3, v2

    aput-object v6, v5, v4

    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 123
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .restart local v0       #h:I
    :cond_2
    array-length v6, v5

    if-ge v4, v6, :cond_3

    .line 133
    aget-object v6, v1, v0

    aput-object v6, v5, v4

    .line 134
    add-int/lit8 v4, v4, 0x1

    .line 131
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static final providerToWidgetType(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2
    .parameter "provider"

    .prologue
    .line 171
    if-eqz p0, :cond_3

    .line 173
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lbbc/mobile/news/widget/StackViewWidgetProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "stack"

    .line 183
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lbbc/mobile/news/widget/GridViewWidgetProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "list"

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lbbc/mobile/news/widget/SmallWidgetProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const-string v0, "small"

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lbbc/mobile/news/widget/LargeWidgetProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    const-string v0, "large"

    goto :goto_0

    .line 183
    :cond_3
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public static final declared-synchronized setFetchFromDisk(IZ)V
    .locals 3
    .parameter "widgetID"
    .parameter "fetchFromDisk"

    .prologue
    .line 103
    const-class v1, Lbbc/mobile/news/widget/WidgetManager;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lbbc/mobile/news/widget/WidgetManager;->mFetchFromDisk:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p0, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit v1

    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final declared-synchronized setFetchFromDisk([IZ)V
    .locals 5
    .parameter "widgetIDs"
    .parameter "fetchFromDisk"

    .prologue
    .line 109
    const-class v3, Lbbc/mobile/news/widget/WidgetManager;

    monitor-enter v3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 111
    .local v0, FETCH_FLAG:I
    :goto_0
    const/4 v1, 0x0

    .local v1, x:I
    :goto_1
    :try_start_0
    array-length v2, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_1

    .line 113
    monitor-exit v3

    return-void

    .line 109
    .end local v0           #FETCH_FLAG:I
    .end local v1           #x:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    .restart local v0       #FETCH_FLAG:I
    .restart local v1       #x:I
    :cond_1
    :try_start_1
    sget-object v2, Lbbc/mobile/news/widget/WidgetManager;->mFetchFromDisk:Landroid/util/SparseIntArray;

    aget v4, p0, v1

    invoke-virtual {v2, v4, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.class public Lbbc/mobile/news/stats/Beacon;
.super Ljava/lang/Object;
.source "Beacon.java"

# interfaces
.implements Lbbc/mobile/news/stats/StatsProvider;


# instance fields
.field private bbcBeacon:Lbbc/beacon/android/BBCBeacon2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "productName"
    .parameter "app_name"
    .parameter "edition"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Lbbc/mobile/news/stats/Beacon;->initNewBeacon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static final actionToString(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;)Ljava/lang/String;
    .locals 3
    .parameter "counterName"

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "news."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".page"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public action(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "action"
    .parameter "actionType"
    .parameter "actionName"

    .prologue
    .line 30
    if-nez p2, :cond_0

    .line 31
    const-string p2, ""

    .line 33
    :cond_0
    if-nez p3, :cond_1

    .line 34
    const-string p3, ""

    .line 36
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/stats/Beacon;->bbcBeacon:Lbbc/beacon/android/BBCBeacon2;

    invoke-static {p1}, Lbbc/mobile/news/stats/Beacon;->actionToString(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lbbc/beacon/android/BBCBeacon2;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public action(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "action"
    .parameter "actionType"
    .parameter "actionName"
    .parameter "orientation"

    .prologue
    .line 111
    return-void
.end method

.method public clearDeviceIdentifier(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    iget-object v0, p0, Lbbc/mobile/news/stats/Beacon;->bbcBeacon:Lbbc/beacon/android/BBCBeacon2;

    invoke-virtual {v0, p1}, Lbbc/beacon/android/BBCBeacon2;->clearDeviceIdentifier(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public initNewBeacon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "productName"
    .parameter "app_name"
    .parameter "edition"

    .prologue
    .line 47
    const-string v4, "unknown"

    .line 51
    .local v4, appVersion:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 52
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1040

    invoke-virtual {v7, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 53
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    new-instance v0, Lbbc/beacon/android/BBCBeaconFactory;

    invoke-direct {v0}, Lbbc/beacon/android/BBCBeaconFactory;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lbbc/beacon/android/BBCBeaconFactory;->makeBeacon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbbc/beacon/android/BBCBeacon2;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/stats/Beacon;->bbcBeacon:Lbbc/beacon/android/BBCBeacon2;

    .line 58
    invoke-static {p1}, Lbbc/mobile/news/util/GlobalSettings;->getEnvironment(Landroid/content/Context;)Lbbc/mobile/news/util/Environment;

    move-result-object v0

    sget-object v1, Lbbc/mobile/news/util/Environment;->LIVE:Lbbc/mobile/news/util/Environment;

    if-eq v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lbbc/mobile/news/stats/Beacon;->bbcBeacon:Lbbc/beacon/android/BBCBeacon2;

    const-string v1, "int"

    invoke-virtual {v0, v1}, Lbbc/beacon/android/BBCBeacon2;->setNonLiveEnvironment(Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public log(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public pageView(Ljava/lang/String;)V
    .locals 1
    .parameter "counterName"

    .prologue
    .line 64
    iget-object v0, p0, Lbbc/mobile/news/stats/Beacon;->bbcBeacon:Lbbc/beacon/android/BBCBeacon2;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lbbc/mobile/news/stats/Beacon;->bbcBeacon:Lbbc/beacon/android/BBCBeacon2;

    invoke-virtual {v0, p1}, Lbbc/beacon/android/BBCBeacon2;->trackPageView(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public pageView(Ljava/lang/String;Ljava/lang/String;Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Lbbc/mobile/news/model/Article;)V
    .locals 2
    .parameter "pageInfo"
    .parameter "articleId"
    .parameter "type"
    .parameter "article"

    .prologue
    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public pageView(Ljava/lang/String;Ljava/lang/String;Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Lbbc/mobile/news/model/Article;Ljava/lang/String;)V
    .locals 0
    .parameter "pageInfo"
    .parameter "articleId"
    .parameter "type"
    .parameter "article"
    .parameter "orientation"

    .prologue
    .line 98
    return-void
.end method

.method public pageView(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "counterName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lbbc/mobile/news/stats/Beacon;->bbcBeacon:Lbbc/beacon/android/BBCBeacon2;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lbbc/mobile/news/stats/Beacon;->bbcBeacon:Lbbc/beacon/android/BBCBeacon2;

    invoke-virtual {v0, p1, p2}, Lbbc/beacon/android/BBCBeacon2;->trackPageViewWithCustomParameters(Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    :cond_0
    return-void
.end method

.method public trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "counterName"
    .parameter "actionType"
    .parameter "actionName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p4, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lbbc/mobile/news/stats/Beacon;->bbcBeacon:Lbbc/beacon/android/BBCBeacon2;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lbbc/mobile/news/stats/Beacon;->bbcBeacon:Lbbc/beacon/android/BBCBeacon2;

    invoke-static {p1}, Lbbc/mobile/news/stats/Beacon;->actionToString(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lbbc/beacon/android/BBCBeacon2;->trackActionWithCustomParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    :cond_0
    return-void
.end method

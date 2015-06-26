.class public Lbbc/mobile/app/NewsApplication;
.super Landroid/app/Application;
.source "NewsApplication.java"

# interfaces
.implements Lbbc/mobile/app/AlarmReceiverProvider;


# static fields
.field private static final DEFAULT_UPDATE_INTERVAL:J = 0x5265c00L

.field public static final HALF_HOUR:J = 0x1b7740L

.field private static final MIN_UPDATE_INTERVAL:J = 0x1b7740L

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_MINUTE:J = 0x7530L

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lbbc/mobile/app/NewsApplication;


# instance fields
.field private final mOnPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPolicy:Lbbc/mobile/news/model/Policy;

.field private mPushCallback:Lio/boxcar/push/BXCCallback;

.field private mPushNotificationStrategy:Lio/boxcar/push/ui/BXCNotificationStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lbbc/mobile/app/NewsApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/app/NewsApplication;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 114
    new-instance v0, Lbbc/mobile/app/NewsApplication$1;

    invoke-direct {v0, p0}, Lbbc/mobile/app/NewsApplication$1;-><init>(Lbbc/mobile/app/NewsApplication;)V

    iput-object v0, p0, Lbbc/mobile/app/NewsApplication;->mPushNotificationStrategy:Lio/boxcar/push/ui/BXCNotificationStrategy;

    .line 129
    new-instance v0, Lbbc/mobile/app/NewsApplication$2;

    invoke-direct {v0, p0}, Lbbc/mobile/app/NewsApplication$2;-><init>(Lbbc/mobile/app/NewsApplication;)V

    iput-object v0, p0, Lbbc/mobile/app/NewsApplication;->mPushCallback:Lio/boxcar/push/BXCCallback;

    .line 265
    new-instance v0, Lbbc/mobile/app/NewsApplication$3;

    invoke-direct {v0, p0}, Lbbc/mobile/app/NewsApplication$3;-><init>(Lbbc/mobile/app/NewsApplication;)V

    iput-object v0, p0, Lbbc/mobile/app/NewsApplication;->mOnPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 57
    sput-object p0, Lbbc/mobile/app/NewsApplication;->instance:Lbbc/mobile/app/NewsApplication;

    .line 58
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/app/NewsApplication;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lbbc/mobile/app/NewsApplication;->scheduleUpdateService(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lbbc/mobile/app/NewsApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lbbc/mobile/app/NewsApplication;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0}, Lbbc/mobile/app/NewsApplication;->startPush()V

    return-void
.end method

.method public static final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lbbc/mobile/app/NewsApplication;->instance:Lbbc/mobile/app/NewsApplication;

    return-object v0
.end method

.method private processAppUpgrade()V
    .locals 9

    .prologue
    .line 183
    const-string v5, "upgrade_version_code"

    .line 184
    .local v5, upgradeKey:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 185
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v6, "upgrade_version_code"

    const/4 v7, -0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 188
    .local v2, lastVersionCode:I
    :try_start_0
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 189
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .local v3, newVersionCode:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 201
    invoke-direct {p0}, Lbbc/mobile/app/NewsApplication;->wipeDataCache()V

    .line 204
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "upgrade_version_code"

    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    return-void

    .line 191
    .end local v3           #newVersionCode:I
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3       #newVersionCode:I
    goto :goto_0
.end method

.method private registerSharedPreferenceListener(Z)V
    .locals 2
    .parameter "register"

    .prologue
    .line 256
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 257
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    if-eqz p1, :cond_0

    .line 258
    iget-object v1, p0, Lbbc/mobile/app/NewsApplication;->mOnPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lbbc/mobile/app/NewsApplication;->mOnPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private scheduleUpdateService(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "context"
    .parameter "sharedPreferences"

    .prologue
    .line 296
    .line 297
    sget v0, Lbbc/mobile/news/R$string;->pref_key_update_frequency:I

    invoke-virtual {p0, v0}, Lbbc/mobile/app/NewsApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "86400000"

    .line 296
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 299
    .local v4, updateInterval:J
    sget v0, Lbbc/mobile/news/R$string;->pref_key_updates_enabled:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 298
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 301
    .local v6, updatesEnabled:Z
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    if-eqz v6, :cond_0

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 303
    .local v2, currentTimeMillis:J
    invoke-static {p1, v2, v3}, Lbbc/mobile/news/util/GlobalSettings;->setAlarmTimeMillis(Landroid/content/Context;J)V

    .line 304
    invoke-static {p1, v4, v5}, Lbbc/mobile/news/util/GlobalSettings;->setAlarmIntervalMillis(Landroid/content/Context;J)V

    .line 305
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getAlarmReceiverClass()Ljava/lang/Class;

    move-result-object v1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lbbc/mobile/news/service/UpdateService;->scheduleUpdateService(Landroid/content/Context;Ljava/lang/Class;JJ)V

    .line 310
    .end local v2           #currentTimeMillis:J
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getAlarmReceiverClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/service/UpdateService;->cancelAlarms(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private startPush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0}, Lbbc/mobile/news/push/PushUtils;->start(Lbbc/mobile/app/NewsApplication;)V

    .line 104
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->isPushEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0}, Lbbc/mobile/news/push/PushUtils;->register(Lbbc/mobile/app/NewsApplication;)V

    .line 107
    :cond_0
    return-void
.end method

.method private wipeDataCache()V
    .locals 7

    .prologue
    .line 217
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 218
    .local v3, filesDir:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 219
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "files"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, dataCacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 223
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 224
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 232
    .end local v0           #dataCacheDir:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    :cond_0
    sget v4, Lbbc/mobile/news/util/GlobalSettings;->NOT_SET:I

    int-to-long v4, v4

    invoke-static {p0, v4, v5}, Lbbc/mobile/news/util/GlobalSettings;->setLastCategoryUpdateTime(Landroid/content/Context;J)V

    .line 233
    return-void

    .line 224
    .restart local v0       #dataCacheDir:Ljava/io/File;
    .restart local v2       #files:[Ljava/io/File;
    :cond_1
    aget-object v1, v2, v4

    .line 225
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 226
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 224
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAlarmReceiverClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getAlarmReciever() in Interface AlarmReceiverProvider has to be overridden by a subclass. \n Super classmethod must not be called, as no AlarmReceivers Exist"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppEdition()Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    sget v0, Lbbc/mobile/news/R$string;->istats_app_edition_unknown:I

    .line 350
    .local v0, appEditionResId:I
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->isInGoogleMarket()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->isUk()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    sget v0, Lbbc/mobile/news/R$string;->istats_app_edition_google_uk:I

    .line 369
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lbbc/mobile/app/NewsApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 354
    :cond_1
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->isWorldWide()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    sget v0, Lbbc/mobile/news/R$string;->istats_app_edition_google_ww:I

    .line 357
    goto :goto_0

    .line 358
    :cond_2
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->isInAmazonMarket()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->isUk()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    sget v0, Lbbc/mobile/news/R$string;->istats_app_edition_amazon_uk:I

    .line 361
    goto :goto_0

    .line 362
    :cond_3
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->isWorldWide()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    sget v0, Lbbc/mobile/news/R$string;->istats_app_edition_amazon_ww:I

    .line 365
    goto :goto_0

    .line 367
    :cond_4
    sget-object v1, Lbbc/mobile/app/NewsApplication;->TAG:Ljava/lang/String;

    const-string v2, "ERROR getAppEdition() returning incorrect app edition"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPolicy()Lbbc/mobile/news/model/Policy;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lbbc/mobile/app/NewsApplication;->mPolicy:Lbbc/mobile/news/model/Policy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/app/NewsApplication;->mPolicy:Lbbc/mobile/news/model/Policy;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Policy;->hasExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lbbc/mobile/app/NewsApplication;->mPolicy:Lbbc/mobile/news/model/Policy;

    .line 339
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPolicyUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPolicyUrl() overridden by super class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPushCallback()Lio/boxcar/push/BXCCallback;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lbbc/mobile/app/NewsApplication;->mPushCallback:Lio/boxcar/push/BXCCallback;

    return-object v0
.end method

.method public final getPushNotificationStrategy()Lio/boxcar/push/ui/BXCNotificationStrategy;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbbc/mobile/app/NewsApplication;->mPushNotificationStrategy:Lio/boxcar/push/ui/BXCNotificationStrategy;

    return-object v0
.end method

.method public getPushParameters()Lbbc/mobile/news/push/PushParameters;
    .locals 2

    .prologue
    .line 389
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getPushParameters() overridden by super class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUnitString(Z)Ljava/lang/String;
    .locals 1
    .parameter "isTablet"

    .prologue
    .line 394
    const-string v0, ""

    return-object v0
.end method

.method protected initAdverts()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method protected initStats(Lbbc/mobile/news/stats/Stats;)V
    .locals 1
    .parameter "stats"

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 315
    new-instance p1, Lbbc/mobile/news/stats/Stats;

    .end local p1
    invoke-direct {p1, p0}, Lbbc/mobile/news/stats/Stats;-><init>(Landroid/content/Context;)V

    .line 317
    .restart local p1
    :cond_0
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbc/mobile/news/util/GlobalSettings;->setStats(Lbbc/mobile/news/stats/Stats;)V

    .line 318
    return-void
.end method

.method public isUk()Z
    .locals 2

    .prologue
    .line 379
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "isUk() must be overridden by super class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isWorldWide()Z
    .locals 2

    .prologue
    .line 374
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "isWorldWide() must be overridden by super class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 239
    sget-object v0, Lbbc/mobile/app/NewsApplication;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged(): %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lbbc/mobile/news/helper/BBCLog;->ii(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 70
    invoke-direct {p0}, Lbbc/mobile/app/NewsApplication;->processAppUpgrade()V

    .line 76
    invoke-virtual {p0}, Lbbc/mobile/app/NewsApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$bool;->isTablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Lbbc/mobile/news/util/GlobalSettings;->setIsTablet(Z)V

    .line 78
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lbbc/mobile/app/NewsApplication;->registerSharedPreferenceListener(Z)V

    .line 79
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lbbc/mobile/app/NewsApplication;->registerSharedPreferenceListener(Z)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lbbc/mobile/app/NewsApplication;->initStats(Lbbc/mobile/news/stats/Stats;)V

    .line 83
    :try_start_0
    invoke-direct {p0}, Lbbc/mobile/app/NewsApplication;->startPush()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lbbc/mobile/app/NewsApplication$4;

    invoke-direct {v2, p0}, Lbbc/mobile/app/NewsApplication$4;-><init>(Lbbc/mobile/app/NewsApplication;)V

    .line 97
    const-wide/16 v4, 0x1f4

    .line 86
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 251
    sget-object v0, Lbbc/mobile/app/NewsApplication;->TAG:Ljava/lang/String;

    const-string v1, "onLowMemory()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 177
    sget-object v0, Lbbc/mobile/app/NewsApplication;->TAG:Ljava/lang/String;

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {p0}, Lbbc/mobile/news/push/PushUtils;->stop(Lbbc/mobile/app/NewsApplication;)V

    .line 179
    return-void
.end method

.method public setPolicy(Lbbc/mobile/news/model/Policy;)V
    .locals 0
    .parameter "policy"

    .prologue
    .line 344
    iput-object p1, p0, Lbbc/mobile/app/NewsApplication;->mPolicy:Lbbc/mobile/news/model/Policy;

    .line 345
    return-void
.end method

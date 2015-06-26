.class public final Lcom/adobe/adms/measurement/ADMS_Measurement;
.super Lcom/adobe/adms/measurement/ADMS_MeasurementBase;
.source "ADMS_Measurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/adms/measurement/ADMS_Measurement$1;,
        Lcom/adobe/adms/measurement/ADMS_Measurement$ADMS_MeasurementHolder;
    }
.end annotation


# static fields
.field private static final ADMS_CACHEFILE:Ljava/lang/String; = "ADMS_OfflineCache.offline"

.field private static final ADMS_Visitor_ID:Ljava/lang/String; = "APP_MEASUREMENT_VISITOR_ID"

.field private static final PREFS_NAME:Ljava/lang/String; = "APP_MEASUREMENT_CACHE"

.field private static final androidVersions:[Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static churn:Lcom/adobe/adms/measurement/ADMS_Churn;

.field private static defaultAcceptLanguage:Ljava/lang/String;

.field private static defaultCharSet:Ljava/lang/String;

.field private static defaultUserAgent:Ljava/lang/String;

.field private static defaultVisitorID:Ljava/lang/String;

.field static editor:Landroid/content/SharedPreferences$Editor;

.field private static operatingSystem:Ljava/lang/String;

.field private static platform:Ljava/lang/String;

.field static prefs:Landroid/content/SharedPreferences;

.field private static resolution:Ljava/lang/String;

.field private static worker:Lcom/adobe/adms/measurement/ADMS_Worker;


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 30
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "BASE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1.0"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1.1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "1.5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "1.6"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "2.0"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2.0.1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2.1"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "2.2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "2.3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "2.3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "3.0"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "3.1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "3.2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "4.0"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "4.0"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->androidVersions:[Ljava/lang/String;

    .line 35
    sput-object v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    .line 37
    sput-object v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;

    .line 38
    sput-object v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->resolution:Ljava/lang/String;

    .line 39
    sput-object v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->platform:Ljava/lang/String;

    .line 40
    sput-object v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->operatingSystem:Ljava/lang/String;

    .line 41
    sput-object v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultVisitorID:Ljava/lang/String;

    .line 42
    sput-object v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultUserAgent:Ljava/lang/String;

    .line 43
    sput-object v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultAcceptLanguage:Ljava/lang/String;

    .line 44
    const-string v0, "UTF-8"

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultCharSet:Ljava/lang/String;

    .line 46
    sput-object v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/adms/measurement/ADMS_Measurement$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;-><init>()V

    return-void
.end method

.method protected static debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "logMessage"

    .prologue
    .line 219
    sget-boolean v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLogging:Z

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "ADMS_MEASUREMENT"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    return-void
.end method

.method protected static getAndroidVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 388
    .local v0, apiVersion:I
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->androidVersions:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 389
    const-string v1, "Unknown"

    .line 392
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->androidVersions:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method private getUUID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 328
    const/4 v2, 0x0

    .line 330
    .local v2, visUUID:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 332
    .local v1, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 341
    if-nez v2, :cond_0

    .line 342
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 352
    .end local v1           #telephony:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 353
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 357
    :cond_2
    return-object v2

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_DefaultValues;->exceptionLog(Ljava/lang/Exception;)V

    .line 347
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static isOnline()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 460
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v3

    iget-object v3, v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 465
    .local v0, cm:Landroid/net/ConnectivityManager;
    .local v1, netInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 463
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #netInfo:Landroid/net/NetworkInfo;
    :cond_1
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v3

    iget-object v3, v3, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 464
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 465
    .restart local v1       #netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected static loadPref(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 319
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "APP_MEASUREMENT_VISITOR_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static savePref(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "c"
    .parameter "uuid"

    .prologue
    .line 323
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "APP_MEASUREMENT_VISITOR_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 324
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    return-void
.end method

.method private static setStaticContext(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 86
    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;

    move-result-object v0

    .line 88
    .local v0, measurement:Lcom/adobe/adms/measurement/ADMS_Measurement;
    if-eqz p0, :cond_2

    iget-object v1, v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-eq v1, p0, :cond_2

    .line 89
    monitor-enter v0

    .line 90
    :try_start_0
    iput-object p0, v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    .line 91
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/adobe/adms/measurement/ADMS_Churn;

    invoke-direct {v1, v0}, Lcom/adobe/adms/measurement/ADMS_Churn;-><init>(Lcom/adobe/adms/measurement/ADMS_Measurement;)V

    sput-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    .line 94
    :cond_0
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    if-nez v1, :cond_1

    .line 95
    new-instance v1, Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-direct {v1}, Lcom/adobe/adms/measurement/ADMS_Worker;-><init>()V

    sput-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    .line 97
    :cond_1
    iget-object v1, v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    const-string v2, "APP_MEASUREMENT_CACHE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->prefs:Landroid/content/SharedPreferences;

    .line 98
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->editor:Landroid/content/SharedPreferences$Editor;

    .line 99
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "ADMS_OfflineCache.offline"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/adms/measurement/ADMS_Worker;->cacheFilename:Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-virtual {v1}, Lcom/adobe/adms/measurement/ADMS_Worker;->readFromDisk()V

    .line 101
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/adms/measurement/ADMS_Worker;->setOnline(Z)V

    .line 103
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setOfflineHitLimit(I)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setOfflineThrottleDelay(I)V

    .line 105
    monitor-exit v0

    .line 107
    :cond_2
    return-void

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static sharedInstance()Lcom/adobe/adms/measurement/ADMS_Measurement;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement$ADMS_MeasurementHolder;->baseInstance:Lcom/adobe/adms/measurement/ADMS_Measurement;

    return-object v0
.end method

.method public static sharedInstance(Landroid/content/Context;)Lcom/adobe/adms/measurement/ADMS_Measurement;
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setStaticContext(Landroid/content/Context;)V

    .line 68
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement$ADMS_MeasurementHolder;->baseInstance:Lcom/adobe/adms/measurement/ADMS_Measurement;

    return-object v0
.end method


# virtual methods
.method public clearTrackingQueue()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-virtual {v0}, Lcom/adobe/adms/measurement/ADMS_Worker;->clearTrackingQueue()V

    .line 191
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected getApplicationID()Ljava/lang/String;
    .locals 9

    .prologue
    .line 225
    sget-object v6, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 227
    :try_start_0
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 228
    const-string v6, ""

    sput-object v6, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    sget-object v6, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;

    return-object v6

    .line 230
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 231
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 232
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 233
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    .local v1, applicationName:Ljava/lang/String;
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 236
    .local v2, applicationVersion:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 237
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/adobe/adms/measurement/ADMS_Measurement;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 240
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #applicationName:Ljava/lang/String;
    .end local v2           #applicationVersion:Ljava/lang/String;
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 241
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 243
    const-string v6, ""

    sput-object v6, Lcom/adobe/adms/measurement/ADMS_Measurement;->appID:Ljava/lang/String;

    goto :goto_0

    .line 237
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #applicationName:Ljava/lang/String;
    .restart local v2       #applicationVersion:Ljava/lang/String;
    .restart local v4       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_2
    const-string v6, ""
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected getCarrierString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 278
    const-string v1, ""

    .line 281
    :goto_0
    return-object v1

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 281
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getDefaultAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 375
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultAcceptLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 377
    const-string v0, "en-US"

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultAcceptLanguage:Ljava/lang/String;

    .line 382
    :cond_0
    :goto_0
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultAcceptLanguage:Ljava/lang/String;

    return-object v0

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultAcceptLanguage:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getDefaultCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultCharSet:Ljava/lang/String;

    return-object v0
.end method

.method protected getDefaultUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 365
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultUserAgent:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getDefaultAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, acceptLanguage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getApplicationID()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, applicationID:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mozilla/5.0 (Linux; U; Android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .end local v0           #acceptLanguage:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Build/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->isSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultUserAgent:Ljava/lang/String;

    .line 371
    .end local v1           #applicationID:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultUserAgent:Ljava/lang/String;

    return-object v2

    .line 369
    .restart local v0       #acceptLanguage:Ljava/lang/String;
    .restart local v1       #applicationID:Ljava/lang/String;
    :cond_1
    const-string v0, "en_US"

    goto :goto_0

    .end local v0           #acceptLanguage:Ljava/lang/String;
    :cond_2
    const-string v2, ""

    goto :goto_1
.end method

.method protected getDefaultVisitorID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultVisitorID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->loadPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->savePref(Landroid/content/Context;Ljava/lang/String;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->loadPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultVisitorID:Ljava/lang/String;

    .line 311
    :cond_1
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultVisitorID:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLogging:Z

    if-eqz v0, :cond_2

    .line 312
    const-string v0, "Unable to generate Visitor ID"

    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 313
    const-string v0, ""

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultVisitorID:Ljava/lang/String;

    .line 315
    :cond_2
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->defaultVisitorID:Ljava/lang/String;

    return-object v0
.end method

.method public getLifecycleSessionTimeout()I
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    iget v0, v0, Lcom/adobe/adms/measurement/ADMS_Churn;->lifecycleSessionTimeout:I

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNetworkConnectionString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 285
    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 286
    const-string v4, ""

    .line 301
    :goto_0
    return-object v4

    .line 288
    :cond_0
    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 289
    .local v0, connManager:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 291
    .local v3, mWifi:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 292
    const-string v4, "WiFi"

    goto :goto_0

    .line 295
    :cond_1
    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 296
    .local v1, connManager1:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 298
    .local v2, mMobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    const-string v4, "Cell"

    goto :goto_0

    .line 301
    :cond_2
    const-string v4, ""

    goto :goto_0
.end method

.method protected getOperatingSystemString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->operatingSystem:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->operatingSystem:Ljava/lang/String;

    .line 273
    :cond_0
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->operatingSystem:Ljava/lang/String;

    return-object v0
.end method

.method protected getPlatformString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->platform:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 264
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->platform:Ljava/lang/String;

    .line 266
    :cond_0
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->platform:Ljava/lang/String;

    return-object v0
.end method

.method protected getResolutionString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->resolution:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 252
    const-string v2, ""

    sput-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->resolution:Ljava/lang/String;

    .line 259
    :cond_0
    :goto_0
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->resolution:Ljava/lang/String;

    return-object v2

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 255
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, resolution:Ljava/lang/String;
    sput-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->resolution:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTrackingQueueSize()I
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-virtual {v0}, Lcom/adobe/adms/measurement/ADMS_Worker;->getTrackingQueueSize()I

    move-result v0

    return v0
.end method

.method protected sendRequest(Ljava/lang/String;)V
    .locals 3
    .parameter "requestString"

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hit Request String : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->debugLog(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->userAgent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->userAgent:Ljava/lang/String;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->userAgent:Ljava/lang/String;

    const-string v1, "\t"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->userAgent:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->userAgent:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->userAgent:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->userAgent:Ljava/lang/String;

    const-string v1, "\r"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->userAgent:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tUser-Agent\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tAccept-Language\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->getDefaultAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 214
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    invoke-virtual {v0, p1}, Lcom/adobe/adms/measurement/ADMS_Worker;->queue(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    invoke-static {p1}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setStaticContext(Landroid/content/Context;)V

    .line 120
    :cond_0
    return-void
.end method

.method public setLifecycleSessionTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 154
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    iput p1, v0, Lcom/adobe/adms/measurement/ADMS_Churn;->lifecycleSessionTimeout:I

    .line 156
    :cond_0
    return-void
.end method

.method public setOffline()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->isOffline:Z

    .line 181
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->isOffline:Z

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setWorkerOffline(Z)V

    .line 182
    return-void
.end method

.method public setOfflineHitLimit(I)V
    .locals 2
    .parameter "offlineHitLimit"

    .prologue
    .line 426
    if-gez p1, :cond_0

    .line 427
    const/4 p1, 0x0

    .line 429
    :cond_0
    iput p1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->offlineHitLimit:I

    .line 431
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    monitor-enter v1

    .line 432
    :try_start_0
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    iput p1, v0, Lcom/adobe/adms/measurement/ADMS_Worker;->offlineLimit:I

    .line 433
    monitor-exit v1

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOfflineThrottleDelay(I)V
    .locals 4
    .parameter "offlineThrottleDelay"

    .prologue
    .line 406
    if-gez p1, :cond_0

    .line 407
    const/4 p1, 0x0

    .line 409
    :cond_0
    iput p1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->offlineThrottleDelay:I

    .line 411
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    monitor-enter v1

    .line 412
    :try_start_0
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    int-to-double v2, p1

    iput-wide v2, v0, Lcom/adobe/adms/measurement/ADMS_Worker;->throttleDelay:D

    .line 413
    monitor-exit v1

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOfflineTrackingEnabled(Z)V
    .locals 2
    .parameter "offlineTrackingEnabled"

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->offlineTrackingEnabled:Z

    .line 448
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    monitor-enter v1

    .line 449
    :try_start_0
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    iput-boolean p1, v0, Lcom/adobe/adms/measurement/ADMS_Worker;->trackOffline:Z

    .line 450
    monitor-exit v1

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnline()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->isOffline:Z

    .line 173
    iget-boolean v0, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->isOffline:Z

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setWorkerOffline(Z)V

    .line 174
    return-void
.end method

.method protected setWorkerOffline(Z)V
    .locals 3
    .parameter "isOffline"

    .prologue
    .line 454
    sget-object v1, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    monitor-enter v1

    .line 455
    :try_start_0
    sget-object v2, Lcom/adobe/adms/measurement/ADMS_Measurement;->worker:Lcom/adobe/adms/measurement/ADMS_Worker;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/adobe/adms/measurement/ADMS_Worker;->setOnline(Z)V

    .line 456
    monitor-exit v1

    .line 457
    return-void

    .line 455
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/adms/measurement/ADMS_Measurement;->setStaticContext(Landroid/content/Context;)V

    .line 135
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_Churn;->startActivity(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method public stopActivity()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/adobe/adms/measurement/ADMS_Measurement;->churn:Lcom/adobe/adms/measurement/ADMS_Churn;

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_Measurement;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adobe/adms/measurement/ADMS_Churn;->stopActivity(Landroid/content/Context;)V

    .line 148
    return-void
.end method

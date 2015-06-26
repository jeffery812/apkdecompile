.class public Lcom/omniture/ChurnMeasurementBase;
.super Ljava/lang/Object;
.source "ChurnMeasurementBase.java"


# static fields
.field private static final kADMS_ConfigTypeInstall:I = 0x0

.field private static final kADMS_ConfigTypeLaunch:I = 0x2

.field private static final kADMS_ConfigTypeUpgrade:I = 0x1

.field private static final kADMS_DefaultBackgroundSessionTimeout:I = 0xf

.field private static final kADMS_DefaultPauseSessionTimeout:I = 0xf

.field private static final kADMS_InstallDate:Ljava/lang/String; = "ADMS_InstallDate"

.field private static final kADMS_LastDateUsed:Ljava/lang/String; = "ADMS_LastDateUsed"

.field private static final kADMS_LastVersion:Ljava/lang/String; = "ADMS_LastVersion"

.field private static final kADMS_Launches:Ljava/lang/String; = "ADMS_Launches"

.field private static final kADMS_LaunchesAfterUpgrade:Ljava/lang/String; = "ADMS_LaunchesAfterUpgrade"

.field private static final kADMS_PauseDate:Ljava/lang/String; = "ADMS_PauseDate"

.field private static final kADMS_SessionOpen:Ljava/lang/String; = "ADMS_SessionOpen"

.field private static final kADMS_SessionStart:Ljava/lang/String; = "ADMS_SessionStart"

.field protected static final kADMS_SuccessfulClose:Ljava/lang/String; = "ADMS_SuccessfulClose"

.field private static final kADMS_UpgradeDate:Ljava/lang/String; = "ADMS_UpgradeDate"

.field private static final kAppCrashEvent:Ljava/lang/String; = "event7"

.field private static final kAppEnvironmentVar:Ljava/lang/String; = "eVar9"

.field private static final kAppIDProp:Ljava/lang/String; = "prop1"

.field private static final kAppIDVar:Ljava/lang/String; = "eVar2"

.field private static final kAppInstallDateVar:Ljava/lang/String; = "eVar1"

.field private static final kAppInstallEventName:Ljava/lang/String; = "event1"

.field private static final kAppLaunchEvent:Ljava/lang/String; = "event5"

.field private static final kAppLaunchNumberProp:Ljava/lang/String; = "prop2"

.field private static final kAppLaunchNumberSinceLastUpgradeProp:Ljava/lang/String; = "prop3"

.field private static final kAppLaunchNumberSinceLastUpgradeVar:Ljava/lang/String; = "eVar11"

.field private static final kAppLaunchNumberVar:Ljava/lang/String; = "eVar6"

.field private static final kAppUpgradeEventName:Ljava/lang/String; = "event2"

.field private static final kDailyEngagedUserEventName:Ljava/lang/String; = "event3"

.field private static final kDayOfWeekVar:Ljava/lang/String; = "eVar8"

.field private static final kDaysSinceFirstUseVar:Ljava/lang/String; = "eVar4"

.field private static final kDaysSinceLastUpgradeVar:Ljava/lang/String; = "eVar10"

.field private static final kDaysSinceLastUseVar:Ljava/lang/String; = "eVar5"

.field private static final kEngagedDaysLastUpgradeVar:Ljava/lang/String; = "eVar13"

.field private static final kEngagedDaysLifetimeVar:Ljava/lang/String; = "eVar3"

.field private static final kEngagedDaysMonthVar:Ljava/lang/String; = "eVar12"

.field private static final kHourOfDayVar:Ljava/lang/String; = "eVar7"

.field private static final kMonthlyEngagedUserEventName:Ljava/lang/String; = "event4"

.field protected static final kPrevSessionLengthVar:Ljava/lang/String; = "eVar14"


# instance fields
.field public appCrashEvent:Ljava/lang/String;

.field public appEnvironmentEvar:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field public appIdEvar:Ljava/lang/String;

.field public appIdProp:Ljava/lang/String;

.field public appInstallDateEvar:Ljava/lang/String;

.field public appInstallEvent:Ljava/lang/String;

.field public appLaunchEvent:Ljava/lang/String;

.field public appLaunchNumberEvar:Ljava/lang/String;

.field public appLaunchNumberProp:Ljava/lang/String;

.field public appLaunchNumberSinceLastUpgradeEvar:Ljava/lang/String;

.field public appLaunchNumberSinceLastUpgradeProp:Ljava/lang/String;

.field public appUpgradeEvent:Ljava/lang/String;

.field public backgroundSessionTimeout:I

.field private currentAppVersion:Ljava/lang/String;

.field private currentDate:Ljava/util/Date;

.field public dailyEngagedUserEvent:Ljava/lang/String;

.field private dayMonthYearFormat:Ljava/text/DateFormat;

.field private dayOfWeekDateFormat:Ljava/text/DateFormat;

.field public dayOfWeekEvar:Ljava/lang/String;

.field public daysSinceFirstUseEvar:Ljava/lang/String;

.field public daysSinceLastUpgradeEvar:Ljava/lang/String;

.field public daysSinceLastUseEvar:Ljava/lang/String;

.field public engagedDaysLastUpgradeEvar:Ljava/lang/String;

.field public engagedDaysLifetimeEvar:Ljava/lang/String;

.field public engagedDaysMonthEvar:Ljava/lang/String;

.field private eventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hourOfDayDateFormat:Ljava/text/DateFormat;

.field public hourOfDayEvar:Ljava/lang/String;

.field private measurementBase:Lcom/omniture/AppMeasurementBase;

.field private monthYearDateFormat:Ljava/text/DateFormat;

.field public monthlyEngagedUserEvent:Ljava/lang/String;

.field public pauseSessionTimeout:I

.field public previousSessionLengthEvar:Ljava/lang/String;

.field private variables:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/omniture/AppMeasurementBase;)V
    .locals 3
    .parameter "measurementObj"

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "event1"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appInstallEvent:Ljava/lang/String;

    .line 70
    const-string v0, "event2"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appUpgradeEvent:Ljava/lang/String;

    .line 71
    const-string v0, "event3"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->dailyEngagedUserEvent:Ljava/lang/String;

    .line 72
    const-string v0, "event4"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->monthlyEngagedUserEvent:Ljava/lang/String;

    .line 73
    const-string v0, "event5"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchEvent:Ljava/lang/String;

    .line 74
    const-string v0, "event7"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appCrashEvent:Ljava/lang/String;

    .line 76
    const-string v0, "eVar1"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appInstallDateEvar:Ljava/lang/String;

    .line 77
    const-string v0, "eVar2"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appIdEvar:Ljava/lang/String;

    .line 78
    const-string v0, "eVar3"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->engagedDaysLifetimeEvar:Ljava/lang/String;

    .line 79
    const-string v0, "eVar4"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->daysSinceFirstUseEvar:Ljava/lang/String;

    .line 80
    const-string v0, "eVar5"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->daysSinceLastUseEvar:Ljava/lang/String;

    .line 81
    const-string v0, "eVar6"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchNumberEvar:Ljava/lang/String;

    .line 82
    const-string v0, "eVar7"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->hourOfDayEvar:Ljava/lang/String;

    .line 83
    const-string v0, "eVar8"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->dayOfWeekEvar:Ljava/lang/String;

    .line 84
    const-string v0, "eVar9"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appEnvironmentEvar:Ljava/lang/String;

    .line 85
    const-string v0, "eVar10"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->daysSinceLastUpgradeEvar:Ljava/lang/String;

    .line 86
    const-string v0, "eVar11"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchNumberSinceLastUpgradeEvar:Ljava/lang/String;

    .line 87
    const-string v0, "eVar14"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->previousSessionLengthEvar:Ljava/lang/String;

    .line 91
    const-string v0, "eVar12"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->engagedDaysMonthEvar:Ljava/lang/String;

    .line 92
    const-string v0, "eVar13"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->engagedDaysLastUpgradeEvar:Ljava/lang/String;

    .line 94
    const-string v0, "prop1"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appIdProp:Ljava/lang/String;

    .line 95
    const-string v0, "prop2"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchNumberProp:Ljava/lang/String;

    .line 96
    const-string v0, "prop3"

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchNumberSinceLastUpgradeProp:Ljava/lang/String;

    .line 101
    iput v2, p0, Lcom/omniture/ChurnMeasurementBase;->pauseSessionTimeout:I

    .line 102
    iput v2, p0, Lcom/omniture/ChurnMeasurementBase;->backgroundSessionTimeout:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->eventList:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->variables:Ljava/util/Hashtable;

    .line 107
    iput-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->currentAppVersion:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->appId:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    .line 110
    iput-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->measurementBase:Lcom/omniture/AppMeasurementBase;

    .line 358
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->dayMonthYearFormat:Ljava/text/DateFormat;

    .line 364
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->hourOfDayDateFormat:Ljava/text/DateFormat;

    .line 370
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->dayOfWeekDateFormat:Ljava/text/DateFormat;

    .line 382
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->monthYearDateFormat:Ljava/text/DateFormat;

    .line 114
    iput-object p1, p0, Lcom/omniture/ChurnMeasurementBase;->measurementBase:Lcom/omniture/AppMeasurementBase;

    .line 115
    return-void
.end method

.method private cleanInstanceVariables()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->variables:Ljava/util/Hashtable;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->eventList:Ljava/util/ArrayList;

    .line 221
    invoke-virtual {p0}, Lcom/omniture/ChurnMeasurementBase;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->currentAppVersion:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/omniture/ChurnMeasurementBase;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->currentAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appId:Ljava/lang/String;

    .line 223
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    .line 224
    return-void
.end method

.method private closeSession()V
    .locals 3

    .prologue
    .line 414
    const-string v1, "ADMS_SessionOpen"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->prefsGetInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 415
    .local v0, sessionCount:I
    const-string v1, "ADMS_SessionOpen"

    invoke-virtual {p0, v1, v0}, Lcom/omniture/ChurnMeasurementBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 417
    return-void
.end method

.method private dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->dayMonthYearFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dayOfWeekFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->dayOfWeekDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private daysBetween(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 393
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .parameter "key"

    .prologue
    .line 353
    const-wide/16 v4, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/omniture/ChurnMeasurementBase;->prefsGetLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 354
    .local v2, millis:J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 355
    .local v0, date:Ljava/util/Date;
    return-object v0
.end method

.method private handleEvents()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->eventList:Ljava/util/ArrayList;

    const-string v1, ","

    invoke-static {v0, v1}, Lcom/omniture/ChurnMeasurementBase;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method private handleSessionLength(Ljava/lang/String;)V
    .locals 7
    .parameter "reportSuiteID"

    .prologue
    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADMS_PauseDate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, pausePrefKey:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->prefsContains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    invoke-direct {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 189
    .local v0, lastPausedDate:Ljava/util/Date;
    if-eqz v0, :cond_1

    .line 190
    iget-object v5, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v0, v5}, Lcom/omniture/ChurnMeasurementBase;->secondsBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v4

    .line 191
    .local v4, timeSincePause:I
    iget v5, p0, Lcom/omniture/ChurnMeasurementBase;->backgroundSessionTimeout:I

    if-le v4, v5, :cond_1

    .line 192
    const-string v5, "ADMS_SessionStart"

    invoke-direct {p0, v5}, Lcom/omniture/ChurnMeasurementBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 193
    .local v2, sessionStartDate:Ljava/util/Date;
    invoke-direct {p0, v2, v0}, Lcom/omniture/ChurnMeasurementBase;->secondsBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    .line 194
    .local v3, sessionTime:I
    if-lez v3, :cond_0

    .line 195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    :cond_0
    const-string v5, "ADMS_SessionStart"

    invoke-virtual {p0, v5}, Lcom/omniture/ChurnMeasurementBase;->removeObjectFromPrefsWithKey(Ljava/lang/String;)V

    .line 202
    .end local v0           #lastPausedDate:Ljava/util/Date;
    .end local v2           #sessionStartDate:Ljava/util/Date;
    .end local v3           #sessionTime:I
    .end local v4           #timeSincePause:I
    :cond_1
    return-void
.end method

.method private handleUpgradeDateForConfigType(I)V
    .locals 5
    .parameter "configType"

    .prologue
    .line 247
    const-string v3, "ADMS_UpgradeDate"

    invoke-virtual {p0, v3}, Lcom/omniture/ChurnMeasurementBase;->prefsContains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    const-string v3, "ADMS_LaunchesAfterUpgrade"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/omniture/ChurnMeasurementBase;->prefsGetInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 249
    .local v1, newLaunchesAfterUpgrade:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchNumberSinceLastUpgradeEvar:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 252
    const-string v3, "ADMS_UpgradeDate"

    invoke-direct {p0, v3}, Lcom/omniture/ChurnMeasurementBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 253
    .local v2, previousUpgradeDate:Ljava/util/Date;
    iget-object v3, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v2, v3}, Lcom/omniture/ChurnMeasurementBase;->daysBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 254
    .local v0, daysSinceUpgrade:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/omniture/ChurnMeasurementBase;->daysSinceLastUpgradeEvar:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v0           #daysSinceUpgrade:I
    .end local v2           #previousUpgradeDate:Ljava/util/Date;
    :cond_0
    const-string v3, "ADMS_LaunchesAfterUpgrade"

    invoke-virtual {p0, v3, v1}, Lcom/omniture/ChurnMeasurementBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 259
    .end local v1           #newLaunchesAfterUpgrade:I
    :cond_1
    return-void
.end method

.method private hourFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->hourOfDayDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 341
    .local v0, e:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 342
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 345
    .end local v0           #e:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 398
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 399
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private monthYearFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->monthYearDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openSession()V
    .locals 3

    .prologue
    .line 409
    const-string v1, "ADMS_SessionOpen"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->prefsGetInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 410
    .local v0, sessionCount:I
    const-string v1, "ADMS_SessionOpen"

    invoke-virtual {p0, v1, v0}, Lcom/omniture/ChurnMeasurementBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 412
    return-void
.end method

.method private putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V
    .locals 2
    .parameter "date"
    .parameter "key"

    .prologue
    .line 349
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->prefsPutLong(Ljava/lang/String;J)V

    .line 350
    return-void
.end method

.method private secondsBetween(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 389
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private sessionPauseDetected(Ljava/lang/String;)Z
    .locals 7
    .parameter "reportSuiteID"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 163
    const-string v5, "ADMS_SuccessfulClose"

    invoke-virtual {p0, v5, v4}, Lcom/omniture/ChurnMeasurementBase;->prefsGetBool(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v3

    .line 167
    :cond_1
    const-string v5, "ADMS_SessionOpen"

    invoke-virtual {p0, v5, v4}, Lcom/omniture/ChurnMeasurementBase;->prefsGetInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_2

    move v3, v4

    .line 168
    goto :goto_0

    .line 171
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADMS_PauseDate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, pausePrefKey:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->prefsContains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 174
    invoke-direct {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 175
    .local v0, lastPausedDate:Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 176
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0, v5}, Lcom/omniture/ChurnMeasurementBase;->secondsBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    .line 177
    .local v2, timeSincePause:I
    iget v5, p0, Lcom/omniture/ChurnMeasurementBase;->pauseSessionTimeout:I

    if-ge v2, v5, :cond_0

    move v3, v4

    .line 178
    goto :goto_0
.end method

.method private setEvent(Ljava/lang/String;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->measurementBase:Lcom/omniture/AppMeasurementBase;

    invoke-virtual {v0, p1}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    return-void
.end method

.method private setInstallVariables()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageName"

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/omniture/ChurnMeasurementBase;->dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->appInstallDateEvar:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "+1"

    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->engagedDaysLifetimeEvar:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appInstallEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/omniture/ChurnMeasurementBase;->setEvent(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->dailyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/omniture/ChurnMeasurementBase;->setEvent(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->monthlyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/omniture/ChurnMeasurementBase;->setEvent(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    const-string v1, "ADMS_InstallDate"

    invoke-direct {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method private setLaunchTypeVariables()V
    .locals 3

    .prologue
    .line 227
    const-string v1, "ADMS_InstallDate"

    invoke-virtual {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->prefsContains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    invoke-direct {p0}, Lcom/omniture/ChurnMeasurementBase;->setInstallVariables()V

    .line 229
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->handleUpgradeDateForConfigType(I)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const-string v1, "ADMS_LastVersion"

    invoke-virtual {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->prefsContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const-string v1, "ADMS_LastVersion"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->prefsGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, lastUsedVersion:Ljava/lang/String;
    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->currentAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/omniture/ChurnMeasurementBase;->setLaunchVariables()V

    .line 236
    invoke-direct {p0}, Lcom/omniture/ChurnMeasurementBase;->setNotInstallVariables()V

    .line 237
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->handleUpgradeDateForConfigType(I)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-direct {p0}, Lcom/omniture/ChurnMeasurementBase;->setUpgradeVariables()V

    .line 240
    invoke-direct {p0}, Lcom/omniture/ChurnMeasurementBase;->setNotInstallVariables()V

    .line 241
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->handleUpgradeDateForConfigType(I)V

    goto :goto_0
.end method

.method private setLaunchVariables()V
    .locals 2

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Launch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageName"

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method private setNotInstallVariables()V
    .locals 4

    .prologue
    .line 287
    const-string v2, "ADMS_LastDateUsed"

    invoke-direct {p0, v2}, Lcom/omniture/ChurnMeasurementBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 288
    .local v1, lastUsedDate:Ljava/util/Date;
    invoke-direct {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v3}, Lcom/omniture/ChurnMeasurementBase;->dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    const-string v2, "+1"

    iget-object v3, p0, Lcom/omniture/ChurnMeasurementBase;->engagedDaysLifetimeEvar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->dailyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/omniture/ChurnMeasurementBase;->setEvent(Ljava/lang/String;)V

    .line 292
    :cond_0
    invoke-direct {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->monthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v3}, Lcom/omniture/ChurnMeasurementBase;->monthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->monthlyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/omniture/ChurnMeasurementBase;->setEvent(Ljava/lang/String;)V

    .line 296
    :cond_1
    const-string v2, "ADMS_InstallDate"

    invoke-direct {p0, v2}, Lcom/omniture/ChurnMeasurementBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 298
    .local v0, installDate:Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v0, v3}, Lcom/omniture/ChurnMeasurementBase;->daysBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/omniture/ChurnMeasurementBase;->daysSinceFirstUseEvar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v1, v3}, Lcom/omniture/ChurnMeasurementBase;->daysBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/omniture/ChurnMeasurementBase;->daysSinceLastUseEvar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v2, "ADMS_SuccessfulClose"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/omniture/ChurnMeasurementBase;->prefsGetBool(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->appCrashEvent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/omniture/ChurnMeasurementBase;->setEvent(Ljava/lang/String;)V

    .line 304
    :cond_2
    return-void
.end method

.method private setUpgradeVariables()V
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageName"

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->appUpgradeEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/omniture/ChurnMeasurementBase;->setEvent(Ljava/lang/String;)V

    .line 277
    const-string v0, "ADMS_LaunchesAfterUpgrade"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 279
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    const-string v1, "ADMS_UpgradeDate"

    invoke-direct {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private trackSessionStart(Ljava/lang/String;)V
    .locals 5
    .parameter "reportSuiteID"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/omniture/ChurnMeasurementBase;->cleanInstanceVariables()V

    .line 146
    invoke-direct {p0}, Lcom/omniture/ChurnMeasurementBase;->setLaunchTypeVariables()V

    .line 147
    invoke-virtual {p0}, Lcom/omniture/ChurnMeasurementBase;->setGenericVariables()V

    .line 148
    invoke-direct {p0}, Lcom/omniture/ChurnMeasurementBase;->handleEvents()V

    .line 149
    invoke-direct {p0, p1}, Lcom/omniture/ChurnMeasurementBase;->handleSessionLength(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->measurementBase:Lcom/omniture/AppMeasurementBase;

    const/4 v1, 0x0

    const-string v2, "o"

    const-string v3, "ADMS BP Event"

    iget-object v4, p0, Lcom/omniture/ChurnMeasurementBase;->variables:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/omniture/AppMeasurementBase;->trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Ljava/lang/String;

    .line 153
    const-string v0, "ADMS_SessionStart"

    invoke-virtual {p0, v0}, Lcom/omniture/ChurnMeasurementBase;->prefsContains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    const-string v1, "ADMS_SessionStart"

    invoke-direct {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 157
    :cond_0
    const-string v0, "ADMS_LastVersion"

    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->currentAppVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->prefsPutString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method


# virtual methods
.method protected getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    const-string v0, ""

    return-object v0
.end method

.method protected getApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    const-string v0, ""

    return-object v0
.end method

.method protected getDynamicEvar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "evar"

    .prologue
    const/4 v2, 0x4

    .line 327
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_0

    .line 331
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D=v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected prefsContains(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method protected prefsGetBool(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method protected prefsGetInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method protected prefsGetLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 428
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected prefsGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 438
    const-string v0, ""

    return-object v0
.end method

.method protected prefsPutBool(Ljava/lang/String;Z)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 436
    return-void
.end method

.method protected prefsPutInt(Ljava/lang/String;I)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 426
    return-void
.end method

.method protected prefsPutLong(Ljava/lang/String;J)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 431
    return-void
.end method

.method protected prefsPutString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 441
    return-void
.end method

.method protected removeObjectFromPrefsWithKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 452
    return-void
.end method

.method protected setGenericVariables()V
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchEvent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->setEvent(Ljava/lang/String;)V

    .line 309
    const-string v1, "ADMS_Launches"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->prefsGetInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 310
    .local v0, newLaunches:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchNumberEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->appIdEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->hourFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->hourOfDayEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->dayOfWeekFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->dayOfWeekEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->engagedDaysLifetimeEvar:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->getDynamicEvar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->engagedDaysMonthEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->engagedDaysLifetimeEvar:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->getDynamicEvar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->engagedDaysLastUpgradeEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->appIdEvar:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->getDynamicEvar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->appIdProp:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchNumberEvar:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->getDynamicEvar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchNumberProp:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchNumberSinceLastUpgradeEvar:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/omniture/ChurnMeasurementBase;->getDynamicEvar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/omniture/ChurnMeasurementBase;->appLaunchNumberSinceLastUpgradeProp:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/omniture/ChurnMeasurementBase;->currentDate:Ljava/util/Date;

    const-string v2, "ADMS_LastDateUsed"

    invoke-direct {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 323
    const-string v1, "ADMS_Launches"

    invoke-virtual {p0, v1, v0}, Lcom/omniture/ChurnMeasurementBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 324
    return-void
.end method

.method protected setVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "value"
    .parameter "key"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->measurementBase:Lcom/omniture/AppMeasurementBase;

    invoke-virtual {v0, p1}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->measurementBase:Lcom/omniture/AppMeasurementBase;

    invoke-virtual {v0, p2}, Lcom/omniture/AppMeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/omniture/ChurnMeasurementBase;->variables:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    return-void
.end method

.method protected startSession(Ljava/lang/String;)V
    .locals 2
    .parameter "reportSuiteID"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/omniture/ChurnMeasurementBase;->sessionPauseDetected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "ADMS_SessionOpen"

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 120
    invoke-direct {p0, p1}, Lcom/omniture/ChurnMeasurementBase;->trackSessionStart(Ljava/lang/String;)V

    .line 121
    const-string v0, "ADMS_SuccessfulClose"

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurementBase;->prefsPutBool(Ljava/lang/String;Z)V

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/omniture/ChurnMeasurementBase;->openSession()V

    .line 125
    return-void
.end method

.method protected stopSession(Ljava/lang/String;)V
    .locals 3
    .parameter "reportSuiteID"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/omniture/ChurnMeasurementBase;->closeSession()V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADMS_PauseDate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, pausePrefKey:Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/omniture/ChurnMeasurementBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 135
    const-string v1, "ADMS_SessionOpen"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->prefsGetInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const-string v1, "ADMS_SuccessfulClose"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurementBase;->prefsPutBool(Ljava/lang/String;Z)V

    .line 138
    :cond_0
    return-void
.end method

.class public abstract Lcom/adobe/adms/measurement/ADMS_ChurnBase;
.super Ljava/lang/Object;
.source "ADMS_ChurnBase.java"


# static fields
.field private static final kADMS_ConfigTypeInstall:I = 0x0

.field private static final kADMS_ConfigTypeLaunch:I = 0x2

.field private static final kADMS_ConfigTypeUpgrade:I = 0x1

.field protected static final kADMS_InstallDate:Ljava/lang/String; = "ADMS_InstallDate"

.field protected static final kADMS_LastDateUsed:Ljava/lang/String; = "ADMS_LastDateUsed"

.field protected static final kADMS_LastVersion:Ljava/lang/String; = "ADMS_LastVersion"

.field protected static final kADMS_Launches:Ljava/lang/String; = "ADMS_Launches"

.field protected static final kADMS_LaunchesAfterUpgrade:Ljava/lang/String; = "ADMS_LaunchesAfterUpgrade"

.field protected static final kADMS_PauseDate:Ljava/lang/String; = "ADMS_PauseDate"

.field protected static final kADMS_PrevSessionLength:Ljava/lang/String; = "a.PrevSessionLength"

.field protected static final kADMS_SessionStart:Ljava/lang/String; = "ADMS_SessionStart"

.field protected static final kADMS_SuccessfulClose:Ljava/lang/String; = "ADMS_SuccessfulClose"

.field protected static final kADMS_UpgradeDate:Ljava/lang/String; = "ADMS_UpgradeDate"


# instance fields
.field private appCrashEvent:Ljava/lang/String;

.field protected appEnvironmentEvar:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appIdEvar:Ljava/lang/String;

.field private appInstallDateEvar:Ljava/lang/String;

.field private appInstallEvent:Ljava/lang/String;

.field private appLaunchEvent:Ljava/lang/String;

.field private appLaunchNumberEvar:Ljava/lang/String;

.field private appLaunchNumberSinceLastUpgradeEvar:Ljava/lang/String;

.field private appUpgradeEvent:Ljava/lang/String;

.field private contextData:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private currentAppVersion:Ljava/lang/String;

.field private currentDate:Ljava/util/Date;

.field private dailyEngagedUserEvent:Ljava/lang/String;

.field private dayMonthYearFormat:Ljava/text/DateFormat;

.field private dayOfWeekEvar:Ljava/lang/String;

.field private daysSinceFirstUseEvar:Ljava/lang/String;

.field private daysSinceLastUpgradeEvar:Ljava/lang/String;

.field private daysSinceLastUseEvar:Ljava/lang/String;

.field private engagedDaysLifetimeEvar:Ljava/lang/String;

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

.field private hourOfDayEvar:Ljava/lang/String;

.field protected lifecycleSessionTimeout:I

.field private measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

.field private monthYearDateFormat:Ljava/text/DateFormat;

.field private monthlyEngagedUserEvent:Ljava/lang/String;

.field private variables:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/adobe/adms/measurement/ADMS_MeasurementBase;)V
    .locals 2
    .parameter "measurementObj"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "a.InstallEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appInstallEvent:Ljava/lang/String;

    .line 43
    const-string v0, "a.UpgradeEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appUpgradeEvent:Ljava/lang/String;

    .line 44
    const-string v0, "a.DailyEngUserEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dailyEngagedUserEvent:Ljava/lang/String;

    .line 45
    const-string v0, "a.MonthlyEngUserEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthlyEngagedUserEvent:Ljava/lang/String;

    .line 46
    const-string v0, "a.LaunchEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchEvent:Ljava/lang/String;

    .line 47
    const-string v0, "a.CrashEvent"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appCrashEvent:Ljava/lang/String;

    .line 49
    const-string v0, "a.InstallDate"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appInstallDateEvar:Ljava/lang/String;

    .line 50
    const-string v0, "a.AppID"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appIdEvar:Ljava/lang/String;

    .line 51
    const-string v0, "a.EngDaysLifetime"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->engagedDaysLifetimeEvar:Ljava/lang/String;

    .line 52
    const-string v0, "a.DaysSinceFirstUse"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceFirstUseEvar:Ljava/lang/String;

    .line 53
    const-string v0, "a.DaysSinceLastUse"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceLastUseEvar:Ljava/lang/String;

    .line 54
    const-string v0, "a.Launches"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchNumberEvar:Ljava/lang/String;

    .line 55
    const-string v0, "a.HourOfDay"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->hourOfDayEvar:Ljava/lang/String;

    .line 56
    const-string v0, "a.DayOfWeek"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayOfWeekEvar:Ljava/lang/String;

    .line 57
    const-string v0, "a.OSEnvironment"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appEnvironmentEvar:Ljava/lang/String;

    .line 58
    const-string v0, "a.DaysSinceLastUpgrade"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceLastUpgradeEvar:Ljava/lang/String;

    .line 59
    const-string v0, "a.LaunchesSinceUpgrade"

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchNumberSinceLastUpgradeEvar:Ljava/lang/String;

    .line 62
    const/16 v0, 0x12c

    iput v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->lifecycleSessionTimeout:I

    .line 64
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->contextData:Ljava/util/Hashtable;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->eventList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->variables:Ljava/util/Hashtable;

    .line 68
    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentAppVersion:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    .line 71
    iput-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    .line 294
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/d/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayMonthYearFormat:Ljava/text/DateFormat;

    .line 300
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->hourOfDayDateFormat:Ljava/text/DateFormat;

    .line 317
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthYearDateFormat:Ljava/text/DateFormat;

    .line 75
    iput-object p1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    .line 76
    return-void
.end method

.method private cleanInstanceVariables()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->variables:Ljava/util/Hashtable;

    .line 174
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->contextData:Ljava/util/Hashtable;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->eventList:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentAppVersion:Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    .line 180
    return-void
.end method

.method private dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayMonthYearFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dayOfWeekFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    .line 309
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 310
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 311
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 312
    .local v2, dow:I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, dayOfWeekString:Ljava/lang/String;
    return-object v1
.end method

.method private daysBetween(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 328
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
    .line 289
    const-wide/16 v4, 0x0

    invoke-virtual {p0, p1, v4, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsGetLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 290
    .local v2, millis:J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 291
    .local v0, date:Ljava/util/Date;
    return-object v0
.end method

.method private handleEvents()V
    .locals 4

    .prologue
    .line 279
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    .local v0, event:Ljava/lang/String;
    const-string v2, "a."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    .end local v0           #event:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleSessionLength()V
    .locals 8

    .prologue
    .line 134
    const-string v1, "ADMS_PauseDate"

    .line 136
    .local v1, pausePrefKey:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 137
    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 138
    .local v0, lastPausedDate:Ljava/util/Date;
    if-eqz v0, :cond_1

    .line 139
    iget-object v6, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v0, v6}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->secondsBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v5

    .line 140
    .local v5, timeSincePause:I
    iget v6, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->lifecycleSessionTimeout:I

    if-le v5, v6, :cond_1

    .line 141
    const-string v6, "ADMS_SessionStart"

    invoke-direct {p0, v6}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 142
    .local v2, sessionStartDate:Ljava/util/Date;
    invoke-direct {p0, v2, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->secondsBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    .line 143
    .local v3, sessionTime:I
    if-lez v3, :cond_0

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, sessionTimeString:Ljava/lang/String;
    const-string v6, "a.PrevSessionLength"

    invoke-virtual {p0, v4, v6}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v4           #sessionTimeString:Ljava/lang/String;
    :cond_0
    const-string v6, "ADMS_SessionStart"

    invoke-virtual {p0, v6}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->removeObjectFromPrefsWithKey(Ljava/lang/String;)V

    .line 151
    .end local v0           #lastPausedDate:Ljava/util/Date;
    .end local v2           #sessionStartDate:Ljava/util/Date;
    .end local v3           #sessionTime:I
    .end local v5           #timeSincePause:I
    :cond_1
    return-void
.end method

.method private handleUpgradeDateForConfigType(I)V
    .locals 5
    .parameter "configType"

    .prologue
    .line 203
    const-string v3, "ADMS_UpgradeDate"

    invoke-virtual {p0, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    const-string v3, "ADMS_LaunchesAfterUpgrade"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsGetInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 205
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

    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchNumberSinceLastUpgradeEvar:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 208
    const-string v3, "ADMS_UpgradeDate"

    invoke-direct {p0, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 209
    .local v2, previousUpgradeDate:Ljava/util/Date;
    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v2, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 210
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

    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceLastUpgradeEvar:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v0           #daysSinceUpgrade:I
    .end local v2           #previousUpgradeDate:Ljava/util/Date;
    :cond_0
    const-string v3, "ADMS_LaunchesAfterUpgrade"

    invoke-virtual {p0, v3, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 215
    .end local v1           #newLaunchesAfterUpgrade:I
    :cond_1
    return-void
.end method

.method private hourFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->hourOfDayDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 332
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 334
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private monthYearFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthYearDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V
    .locals 2
    .parameter "date"
    .parameter "key"

    .prologue
    .line 285
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutLong(Ljava/lang/String;J)V

    .line 286
    return-void
.end method

.method private secondsBetween(Ljava/util/Date;Ljava/util/Date;)I
    .locals 4
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 324
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

.method private sessionHasTimedOut()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 115
    const-string v5, "ADMS_SuccessfulClose"

    invoke-virtual {p0, v5, v4}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsGetBool(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v3

    .line 119
    :cond_1
    const-string v1, "ADMS_PauseDate"

    .line 120
    .local v1, pausePrefKey:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 121
    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 122
    .local v0, lastPausedDate:Ljava/util/Date;
    if-eqz v0, :cond_2

    .line 123
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0, v5}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->secondsBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v2

    .line 125
    .local v2, timeSincePause:I
    iget v5, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->lifecycleSessionTimeout:I

    if-gt v2, v5, :cond_0

    .end local v0           #lastPausedDate:Ljava/util/Date;
    .end local v2           #timeSincePause:I
    :cond_2
    move v3, v4

    .line 130
    goto :goto_0
.end method

.method private setEvent(Ljava/lang/String;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    invoke-virtual {v0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->eventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    return-void
.end method

.method private setInstallVariables()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageName"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appInstallDateEvar:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "+1"

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->engagedDaysLifetimeEvar:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleReferrers()V

    .line 224
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appInstallEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dailyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthlyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    const-string v1, "ADMS_InstallDate"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private setLaunchTypeVariables()V
    .locals 3

    .prologue
    .line 183
    const-string v1, "ADMS_InstallDate"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setInstallVariables()V

    .line 185
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleUpgradeDateForConfigType(I)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const-string v1, "ADMS_LastVersion"

    invoke-virtual {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "ADMS_LastVersion"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, lastUsedVersion:Ljava/lang/String;
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setLaunchVariables()V

    .line 192
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setNotInstallVariables()V

    .line 193
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleUpgradeDateForConfigType(I)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setUpgradeVariables()V

    .line 196
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setNotInstallVariables()V

    .line 197
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleUpgradeDateForConfigType(I)V

    goto :goto_0
.end method

.method private setLaunchVariables()V
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Launch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageName"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private setNotInstallVariables()V
    .locals 4

    .prologue
    .line 245
    const-string v2, "ADMS_LastDateUsed"

    invoke-direct {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 246
    .local v1, lastUsedDate:Ljava/util/Date;
    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayMonthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    const-string v2, "+1"

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->engagedDaysLifetimeEvar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dailyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 250
    :cond_0
    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthYearFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->monthlyEngagedUserEvent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 254
    :cond_1
    const-string v2, "ADMS_InstallDate"

    invoke-direct {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->getDateFromPrefs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 256
    .local v0, installDate:Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v0, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceFirstUseEvar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v1, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysBetween(Ljava/util/Date;Ljava/util/Date;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->daysSinceLastUseEvar:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v2, "ADMS_SuccessfulClose"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsGetBool(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appCrashEvent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 262
    :cond_2
    return-void
.end method

.method private setUpgradeVariables()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pageName"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appUpgradeEvent:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 235
    const-string v0, "ADMS_LaunchesAfterUpgrade"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 237
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    const-string v1, "ADMS_UpgradeDate"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private setVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "value"
    .parameter "key"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    invoke-virtual {v0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    invoke-virtual {v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->variables:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    return-void
.end method

.method private trackSessionStart()V
    .locals 6

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->cleanInstanceVariables()V

    .line 97
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setLaunchTypeVariables()V

    .line 98
    invoke-virtual {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setGenericVariables()V

    .line 99
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleEvents()V

    .line 100
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->handleSessionLength()V

    .line 102
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    const/4 v1, 0x0

    const-string v2, "o"

    const-string v3, "ADMS BP Event"

    iget-object v4, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->contextData:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->variables:Ljava/util/Hashtable;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 104
    const-string v0, "ADMS_SessionStart"

    invoke-virtual {p0, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsContains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    const-string v1, "ADMS_SessionStart"

    invoke-direct {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 108
    :cond_0
    const-string v0, "ADMS_LastVersion"

    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentAppVersion:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "ADMS_SuccessfulClose"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutBool(Ljava/lang/String;Z)V

    .line 110
    return-void
.end method


# virtual methods
.method protected abstract getApplicationName()Ljava/lang/String;
.end method

.method protected abstract getApplicationVersion()Ljava/lang/String;
.end method

.method protected abstract handleReferrers()V
.end method

.method protected abstract prefsContains(Ljava/lang/String;)Z
.end method

.method protected abstract prefsGetBool(Ljava/lang/String;Z)Z
.end method

.method protected abstract prefsGetInt(Ljava/lang/String;I)I
.end method

.method protected abstract prefsGetLong(Ljava/lang/String;J)J
.end method

.method protected abstract prefsGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract prefsPutBool(Ljava/lang/String;Z)V
.end method

.method protected abstract prefsPutInt(Ljava/lang/String;I)V
.end method

.method protected abstract prefsPutLong(Ljava/lang/String;J)V
.end method

.method protected abstract prefsPutString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract removeObjectFromPrefsWithKey(Ljava/lang/String;)V
.end method

.method protected setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "value"
    .parameter "key"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    invoke-virtual {v0, p1}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->measurementBase:Lcom/adobe/adms/measurement/ADMS_MeasurementBase;

    invoke-virtual {v0, p2}, Lcom/adobe/adms/measurement/ADMS_MeasurementBase;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->contextData:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    return-void
.end method

.method protected setGenericVariables()V
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchEvent:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setEvent(Ljava/lang/String;)V

    .line 267
    const-string v1, "ADMS_Launches"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsGetInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 268
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

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appLaunchNumberEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->appIdEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->hourFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->hourOfDayEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    invoke-direct {p0, v1}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayOfWeekFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->dayOfWeekEvar:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->setContextDataValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->currentDate:Ljava/util/Date;

    const-string v2, "ADMS_LastDateUsed"

    invoke-direct {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 275
    const-string v1, "ADMS_Launches"

    invoke-virtual {p0, v1, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutInt(Ljava/lang/String;I)V

    .line 276
    return-void
.end method

.method protected startSession()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->sessionHasTimedOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->trackSessionStart()V

    .line 82
    :cond_0
    return-void
.end method

.method protected stopSession()V
    .locals 3

    .prologue
    .line 85
    const-string v0, "ADMS_PauseDate"

    .line 86
    .local v0, pausePrefKey:Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->putDateIntoPrefs(Ljava/util/Date;Ljava/lang/String;)V

    .line 88
    const-string v1, "ADMS_SuccessfulClose"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/adobe/adms/measurement/ADMS_ChurnBase;->prefsPutBool(Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

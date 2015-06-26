.class public Lcom/omniture/AppMeasurement;
.super Lcom/omniture/AppMeasurementBaseSE;
.source "AppMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/omniture/AppMeasurement$DoRequest;,
        Lcom/omniture/AppMeasurement$DoPlugins;
    }
.end annotation


# static fields
.field private static final PREF_FILE_NAME:Ljava/lang/String; = "APP_MEASUREMENT_CACHE"

.field private static final PREF_KEY:Ljava/lang/String; = "APP_MEASUREMENT_VISITOR_ID"

.field public static churn:Lcom/omniture/ChurnMeasurement;

.field private static visId:Ljava/lang/String;


# instance fields
.field protected context:Landroid/content/Context;

.field public doPlugins:Lcom/omniture/AppMeasurement$DoPlugins;

.field public doRequest:Lcom/omniture/AppMeasurement$DoRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/omniture/AppMeasurement;->visId:Ljava/lang/String;

    .line 85
    sput-object v0, Lcom/omniture/AppMeasurement;->churn:Lcom/omniture/ChurnMeasurement;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/omniture/AppMeasurementBaseSE;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/omniture/AppMeasurement;->doPlugins:Lcom/omniture/AppMeasurement$DoPlugins;

    .line 43
    iput-object v1, p0, Lcom/omniture/AppMeasurement;->doRequest:Lcom/omniture/AppMeasurement$DoRequest;

    .line 55
    iput-object v1, p0, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    .line 63
    move-object v0, p0

    .line 65
    .local v0, s:Lcom/omniture/AppMeasurement;
    const-string v1, "AN"

    iput-object v1, v0, Lcom/omniture/AppMeasurement;->target:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/omniture/AppMeasurement;-><init>()V

    .line 71
    move-object v0, p0

    .line 75
    .local v0, s:Lcom/omniture/AppMeasurement;
    iput-object p1, v0, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    .line 76
    iget-object v1, v0, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/omniture/AppMeasurement;->offlineFilename:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "AppMeasurement.offline"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/omniture/AppMeasurement;->offlineFilename:Ljava/lang/String;

    .line 80
    :cond_0
    sget-object v1, Lcom/omniture/AppMeasurement;->churn:Lcom/omniture/ChurnMeasurement;

    if-nez v1, :cond_1

    .line 81
    new-instance v1, Lcom/omniture/ChurnMeasurement;

    invoke-direct {v1, p0}, Lcom/omniture/ChurnMeasurement;-><init>(Lcom/omniture/AppMeasurement;)V

    sput-object v1, Lcom/omniture/AppMeasurement;->churn:Lcom/omniture/ChurnMeasurement;

    .line 83
    :cond_1
    return-void
.end method

.method private getUUID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 165
    .local v2, visUUID:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 167
    .local v1, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 173
    if-nez v2, :cond_0

    .line 174
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 183
    .end local v1           #telephony:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 184
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 188
    :cond_2
    return-object v2

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static loadPref(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "c"

    .prologue
    .line 152
    const-string v1, "APP_MEASUREMENT_CACHE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 153
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "APP_MEASUREMENT_VISITOR_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static savePref(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "c"
    .parameter "uuid"

    .prologue
    .line 157
    const-string v1, "APP_MEASUREMENT_CACHE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 158
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "APP_MEASUREMENT_VISITOR_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return-void
.end method


# virtual methods
.method protected _doPlugins()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/omniture/AppMeasurement;->doPlugins:Lcom/omniture/AppMeasurement$DoPlugins;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/omniture/AppMeasurement;->doPlugins:Lcom/omniture/AppMeasurement$DoPlugins;

    invoke-interface {v0, p0}, Lcom/omniture/AppMeasurement$DoPlugins;->doPlugins(Lcom/omniture/AppMeasurement;)V

    .line 37
    :cond_0
    return-void
.end method

.method protected _doRequest(Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 1
    .parameter "url"
    .parameter "headers"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/omniture/AppMeasurement;->doRequest:Lcom/omniture/AppMeasurement$DoRequest;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/omniture/AppMeasurement;->doRequest:Lcom/omniture/AppMeasurement$DoRequest;

    invoke-interface {v0, p0, p1, p2}, Lcom/omniture/AppMeasurement$DoRequest;->doRequest(Lcom/omniture/AppMeasurement;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected _hasDoPlugins()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/omniture/AppMeasurement;->doPlugins:Lcom/omniture/AppMeasurement$DoPlugins;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _hasDoRequest()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/omniture/AppMeasurement;->doRequest:Lcom/omniture/AppMeasurement$DoRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getApplicationID()Ljava/lang/String;
    .locals 9

    .prologue
    .line 203
    move-object v5, p0

    .line 206
    .local v5, s:Lcom/omniture/AppMeasurement;
    :try_start_0
    iget-object v6, v5, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 207
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    iget-object v6, v5, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 208
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v5, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 210
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, applicationName:Ljava/lang/String;
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 213
    .local v2, applicationVersion:Ljava/lang/String;
    invoke-virtual {v5, v1}, Lcom/omniture/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v2}, Lcom/omniture/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 218
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #applicationName:Ljava/lang/String;
    .end local v2           #applicationVersion:Ljava/lang/String;
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    :goto_1
    return-object v6

    .line 214
    .restart local v0       #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #applicationName:Ljava/lang/String;
    .restart local v2       #applicationVersion:Ljava/lang/String;
    .restart local v3       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    const-string v6, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #applicationName:Ljava/lang/String;
    .end local v2           #applicationVersion:Ljava/lang/String;
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    .line 218
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected getDefaultAcceptLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    move-object v1, p0

    .line 195
    .local v1, s:Lcom/omniture/AppMeasurement;
    :try_start_0
    iget-object v2, v1, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 196
    .local v0, currentLocale:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 199
    .end local v0           #currentLocale:Ljava/util/Locale;
    :goto_0
    return-object v2

    .line 197
    :catch_0
    move-exception v2

    .line 199
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getDefaultUserAgent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 124
    move-object v2, p0

    .line 126
    .local v2, s:Lcom/omniture/AppMeasurement;
    invoke-virtual {v2}, Lcom/omniture/AppMeasurement;->getDefaultAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, acceptLanguage:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/omniture/AppMeasurement;->getApplicationID()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, applicationID:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mozilla/5.0 (Linux; U; Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/omniture/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v0           #acceptLanguage:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Build/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Lcom/omniture/AppMeasurement;->isSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .restart local v0       #acceptLanguage:Ljava/lang/String;
    :cond_0
    const-string v0, "en_US"

    goto :goto_0

    .end local v0           #acceptLanguage:Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method protected getDefaultVisitorID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/omniture/AppMeasurement;->visId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/omniture/AppMeasurement;->loadPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/omniture/AppMeasurement;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/omniture/AppMeasurement;->savePref(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/omniture/AppMeasurement;->loadPref(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/omniture/AppMeasurement;->visId:Ljava/lang/String;

    .line 145
    :cond_1
    sget-object v0, Lcom/omniture/AppMeasurement;->visId:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/omniture/AppMeasurement;->debugTracking:Z

    if-eqz v0, :cond_2

    .line 146
    const-string v0, "Unable to generate Visitor ID"

    invoke-virtual {p0, v0}, Lcom/omniture/AppMeasurement;->logDebug(Ljava/lang/String;)V

    .line 148
    :cond_2
    sget-object v0, Lcom/omniture/AppMeasurement;->visId:Ljava/lang/String;

    return-object v0
.end method

.method protected handleTechnology()V
    .locals 4

    .prologue
    .line 103
    move-object v1, p0

    .line 112
    .local v1, s:Lcom/omniture/AppMeasurement;
    :try_start_0
    iget-object v2, v1, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 113
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

    move-result-object v2

    iput-object v2, v1, Lcom/omniture/AppMeasurement;->resolution:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public logDebug(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 99
    const-string v0, "AppMeasurement"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method public startActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 87
    sget-object v0, Lcom/omniture/AppMeasurement;->churn:Lcom/omniture/ChurnMeasurement;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/omniture/ChurnMeasurement;

    invoke-direct {v0, p0}, Lcom/omniture/ChurnMeasurement;-><init>(Lcom/omniture/AppMeasurement;)V

    sput-object v0, Lcom/omniture/AppMeasurement;->churn:Lcom/omniture/ChurnMeasurement;

    .line 90
    :cond_0
    sget-object v0, Lcom/omniture/AppMeasurement;->churn:Lcom/omniture/ChurnMeasurement;

    iget-object v1, p0, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/omniture/ChurnMeasurement;->startActivity(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public stopActivity()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/omniture/AppMeasurement;->churn:Lcom/omniture/ChurnMeasurement;

    iget-object v1, p0, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/omniture/ChurnMeasurement;->stopActivity(Landroid/content/Context;)V

    .line 95
    return-void
.end method

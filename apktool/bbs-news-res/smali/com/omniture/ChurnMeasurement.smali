.class public Lcom/omniture/ChurnMeasurement;
.super Lcom/omniture/ChurnMeasurementBase;
.source "ChurnMeasurement.java"


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "APP_MEASUREMENT_CACHE"

.field private static currentContextString:Ljava/lang/String;


# instance fields
.field protected editor:Landroid/content/SharedPreferences$Editor;

.field private measurement:Lcom/omniture/AppMeasurement;

.field protected prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/omniture/ChurnMeasurement;->currentContextString:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/omniture/AppMeasurement;)V
    .locals 1
    .parameter "measurementObj"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/omniture/ChurnMeasurementBase;-><init>(Lcom/omniture/AppMeasurementBase;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/omniture/ChurnMeasurement;->measurement:Lcom/omniture/AppMeasurement;

    .line 31
    iput-object p1, p0, Lcom/omniture/ChurnMeasurement;->measurement:Lcom/omniture/AppMeasurement;

    .line 32
    return-void
.end method

.method private getAndroidVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 145
    .local v0, apiVersion:I
    const/4 v1, 0x0

    .line 146
    .local v1, retVal:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 192
    const-string v1, "Unknown"

    .line 195
    :goto_0
    return-object v1

    .line 148
    :pswitch_0
    const-string v1, "BASE"

    .line 149
    goto :goto_0

    .line 151
    :pswitch_1
    const-string v1, "1.0"

    .line 152
    goto :goto_0

    .line 154
    :pswitch_2
    const-string v1, "1.1"

    .line 155
    goto :goto_0

    .line 157
    :pswitch_3
    const-string v1, "1.5"

    .line 158
    goto :goto_0

    .line 160
    :pswitch_4
    const-string v1, "1.6"

    .line 161
    goto :goto_0

    .line 163
    :pswitch_5
    const-string v1, "2.0"

    .line 164
    goto :goto_0

    .line 166
    :pswitch_6
    const-string v1, "2.0.1"

    .line 167
    goto :goto_0

    .line 169
    :pswitch_7
    const-string v1, "2.1"

    .line 170
    goto :goto_0

    .line 172
    :pswitch_8
    const-string v1, "2.2"

    .line 173
    goto :goto_0

    .line 176
    :pswitch_9
    const-string v1, "2.3"

    .line 177
    goto :goto_0

    .line 179
    :pswitch_a
    const-string v1, "3.0"

    .line 180
    goto :goto_0

    .line 182
    :pswitch_b
    const-string v1, "3.1"

    .line 183
    goto :goto_0

    .line 185
    :pswitch_c
    const-string v1, "3.2"

    .line 186
    goto :goto_0

    .line 189
    :pswitch_d
    const-string v1, "4.0"

    .line 190
    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method protected static setCurrentContextString(Ljava/lang/String;)V
    .locals 0
    .parameter "contextString"

    .prologue
    .line 35
    sput-object p0, Lcom/omniture/ChurnMeasurement;->currentContextString:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method protected getApplicationName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 127
    :try_start_0
    iget-object v3, p0, Lcom/omniture/ChurnMeasurement;->measurement:Lcom/omniture/AppMeasurement;

    iget-object v3, v3, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 128
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/omniture/ChurnMeasurement;->measurement:Lcom/omniture/AppMeasurement;

    iget-object v3, v3, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 129
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 133
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getApplicationVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 116
    :try_start_0
    iget-object v3, p0, Lcom/omniture/ChurnMeasurement;->measurement:Lcom/omniture/AppMeasurement;

    iget-object v3, v3, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 117
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/omniture/ChurnMeasurement;->measurement:Lcom/omniture/AppMeasurement;

    iget-object v3, v3, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 118
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 122
    const-string v3, ""

    goto :goto_0
.end method

.method protected prefsContains(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected prefsGetBool(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected prefsGetInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected prefsGetLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected prefsGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prefsPutBool(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method

.method protected prefsPutInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method

.method protected prefsPutLong(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    return-void
.end method

.method protected prefsPutString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method protected removeObjectFromPrefsWithKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    iget-object v0, p0, Lcom/omniture/ChurnMeasurement;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void
.end method

.method protected setGenericVariables()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/omniture/ChurnMeasurementBase;->setGenericVariables()V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/omniture/ChurnMeasurement;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/omniture/ChurnMeasurement;->appEnvironmentEvar:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurement;->setVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected startActivity(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v1, p0, Lcom/omniture/ChurnMeasurement;->measurement:Lcom/omniture/AppMeasurement;

    iget-object v1, v1, Lcom/omniture/AppMeasurement;->context:Landroid/content/Context;

    const-string v2, "APP_MEASUREMENT_CACHE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/omniture/ChurnMeasurement;->prefs:Landroid/content/SharedPreferences;

    .line 40
    iget-object v1, p0, Lcom/omniture/ChurnMeasurement;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/omniture/ChurnMeasurement;->editor:Landroid/content/SharedPreferences$Editor;

    .line 42
    const-string v1, "currentContext"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurement;->prefsGetString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/omniture/ChurnMeasurement;->setCurrentContextString(Ljava/lang/String;)V

    .line 43
    const-string v1, "currentContext"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/omniture/ChurnMeasurement;->prefsPutString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, string:Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/omniture/ChurnMeasurement;->prefsGetBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/omniture/ChurnMeasurement;->currentContextString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const-string v1, "ADMS_SuccessfulClose"

    invoke-virtual {p0, v1, v3}, Lcom/omniture/ChurnMeasurement;->prefsPutBool(Ljava/lang/String;Z)V

    .line 52
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurement;->prefsPutBool(Ljava/lang/String;Z)V

    .line 54
    iget-object v1, p0, Lcom/omniture/ChurnMeasurement;->measurement:Lcom/omniture/AppMeasurement;

    iget-object v1, v1, Lcom/omniture/AppMeasurement;->account:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/omniture/ChurnMeasurement;->startSession(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected stopActivity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, string:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/omniture/ChurnMeasurement;->prefsPutBool(Ljava/lang/String;Z)V

    .line 61
    iget-object v1, p0, Lcom/omniture/ChurnMeasurement;->measurement:Lcom/omniture/AppMeasurement;

    iget-object v1, v1, Lcom/omniture/AppMeasurement;->account:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/omniture/ChurnMeasurement;->stopSession(Ljava/lang/String;)V

    .line 62
    return-void
.end method

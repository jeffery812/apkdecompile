.class public Lbbc/mobile/news/model/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# static fields
.field public static final EXPIRATION_TIME:I = 0x1b7740

.field public static final KILL_SWITCH:Ljava/lang/String; = "ksw"

.field public static final MIN_VERSION:I = 0x0

.field public static final MIN_VERSION_JSON:Ljava/lang/String; = "minver"

.field public static final NO_POLLING:Ljava/lang/String; = "nopoll"

.field public static final PERMISSION_UK:Ljava/lang/String; = "isuk"

.field public static final POLLING_DISABLED:I = 0x1

.field public static final POLLING_ENABLED:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field public static final UPDATE_BETA_EXPIRED:I = 0x3

.field public static final UPDATE_MANDATORY:I = 0x2

.field public static final UPDATE_NONE:I = 0x0

.field public static final UPDATE_OPTIONAL:I = 0x1

.field public static final UPDATE_POLICY:Ljava/lang/String; = "update"


# instance fields
.field private mCheckUpdateAvailable:I

.field private mDismissedOptionalUpdate:Z

.field private mIsInsideUK:Z

.field private mIsKillSwitch:Z

.field private mLastRefresh:J

.field private mMinVersion:I

.field private mPollingDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lbbc/mobile/news/model/Policy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/model/Policy;->TAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "content"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v2, p0, Lbbc/mobile/news/model/Policy;->mDismissedOptionalUpdate:Z

    .line 34
    iput-boolean v2, p0, Lbbc/mobile/news/model/Policy;->mPollingDisabled:Z

    .line 35
    iput-boolean v2, p0, Lbbc/mobile/news/model/Policy;->mIsKillSwitch:Z

    .line 36
    iput-boolean v1, p0, Lbbc/mobile/news/model/Policy;->mIsInsideUK:Z

    .line 38
    iput v2, p0, Lbbc/mobile/news/model/Policy;->mCheckUpdateAvailable:I

    .line 39
    iput v2, p0, Lbbc/mobile/news/model/Policy;->mMinVersion:I

    .line 40
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lbbc/mobile/news/model/Policy;->mLastRefresh:J

    .line 44
    const-string v0, "isuk"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lbbc/mobile/news/model/Policy;->setInsideUK(Z)V

    .line 45
    const-string v0, "update"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/model/Policy;->setCheckUpdateAvailable(I)V

    .line 46
    const-string v0, "ksw"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lbbc/mobile/news/model/Policy;->setKillSwitch(Z)V

    .line 47
    const-string v0, "minver"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/model/Policy;->setMinVersion(I)V

    .line 48
    const-string v0, "nopoll"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    invoke-virtual {p0, v1}, Lbbc/mobile/news/model/Policy;->setPollingDisabled(Z)V

    .line 53
    return-void

    :cond_0
    move v0, v2

    .line 44
    goto :goto_0

    :cond_1
    move v0, v2

    .line 46
    goto :goto_1

    :cond_2
    move v1, v2

    .line 48
    goto :goto_2
.end method


# virtual methods
.method public getCheckUpdateAvailable()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lbbc/mobile/news/model/Policy;->mCheckUpdateAvailable:I

    return v0
.end method

.method public hasDismissedOptionalUpdate()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lbbc/mobile/news/model/Policy;->mDismissedOptionalUpdate:Z

    return v0
.end method

.method public hasExpired()Z
    .locals 4

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbbc/mobile/news/model/Policy;->mLastRefresh:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtMinVersion(I)Z
    .locals 1
    .parameter "versionCode"

    .prologue
    .line 117
    iget v0, p0, Lbbc/mobile/news/model/Policy;->mMinVersion:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtMinVersion(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 104
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Lbbc/mobile/news/init/DI;->getApplicationPackage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 105
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 106
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0, v4}, Lbbc/mobile/news/model/Policy;->isAtMinVersion(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 112
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, nameNotFoundException:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lbbc/mobile/news/model/Policy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isAtMinVersion() error ... NameNotFoundException for name "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lbbc/mobile/news/init/DI;->getApplicationPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isInsideUK()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lbbc/mobile/news/model/Policy;->mIsInsideUK:Z

    return v0
.end method

.method public isKillSwitch()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lbbc/mobile/news/model/Policy;->mIsKillSwitch:Z

    return v0
.end method

.method public isPollingDisabled()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lbbc/mobile/news/model/Policy;->mPollingDisabled:Z

    return v0
.end method

.method public setCheckUpdateAvailable(I)V
    .locals 0
    .parameter "checkUpdateAvailable"

    .prologue
    .line 83
    iput p1, p0, Lbbc/mobile/news/model/Policy;->mCheckUpdateAvailable:I

    .line 84
    return-void
.end method

.method public setInsideUK(Z)V
    .locals 0
    .parameter "isInsideUK"

    .prologue
    .line 67
    iput-boolean p1, p0, Lbbc/mobile/news/model/Policy;->mIsInsideUK:Z

    .line 68
    return-void
.end method

.method public setKillSwitch(Z)V
    .locals 0
    .parameter "isKillSwitch"

    .prologue
    .line 75
    iput-boolean p1, p0, Lbbc/mobile/news/model/Policy;->mIsKillSwitch:Z

    .line 76
    return-void
.end method

.method public setLastRefreshed(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 87
    iput-wide p1, p0, Lbbc/mobile/news/model/Policy;->mLastRefresh:J

    .line 88
    return-void
.end method

.method public setMinVersion(I)V
    .locals 0
    .parameter "minVersion"

    .prologue
    .line 91
    iput p1, p0, Lbbc/mobile/news/model/Policy;->mMinVersion:I

    .line 92
    return-void
.end method

.method public setOptionalUpateDismissed(Z)V
    .locals 0
    .parameter "dismissed"

    .prologue
    .line 125
    iput-boolean p1, p0, Lbbc/mobile/news/model/Policy;->mDismissedOptionalUpdate:Z

    .line 126
    return-void
.end method

.method public setPollingDisabled(Z)V
    .locals 2
    .parameter "pollingDisabled"

    .prologue
    .line 144
    iput-boolean p1, p0, Lbbc/mobile/news/model/Policy;->mPollingDisabled:Z

    .line 146
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lbbc/mobile/news/model/Policy;->mPollingDisabled:Z

    invoke-static {v0, v1}, Lbbc/mobile/news/util/GlobalSettings;->setPollingDisabled(Landroid/content/Context;Z)V

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Policy [, isInsideUK="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    iget-boolean v1, p0, Lbbc/mobile/news/model/Policy;->mIsInsideUK:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isKillSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    iget-boolean v1, p0, Lbbc/mobile/news/model/Policy;->mIsKillSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkUpdateAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    iget v1, p0, Lbbc/mobile/news/model/Policy;->mCheckUpdateAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string v1, ", minVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lbbc/mobile/news/model/Policy;->mMinVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string v1, ", mPollingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbbc/mobile/news/model/Policy;->mPollingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

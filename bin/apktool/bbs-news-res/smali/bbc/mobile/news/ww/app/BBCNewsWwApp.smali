.class public Lbbc/mobile/news/ww/app/BBCNewsWwApp;
.super Lbbc/mobile/app/NewsApplication;
.source "BBCNewsWwApp.java"


# static fields
.field public static final PHONE_TEST_UNIT_STRING:Ljava/lang/String; = "Test_BBCNewsAppAndroid"

.field public static final PHONE_UNIT_STRING:Ljava/lang/String; = "BBCNewsAppAndroidPhone"

.field public static final TABLET_TEST_UNIT_STRING:Ljava/lang/String; = "Test_BBCNewsAppAndroidTablet"

.field public static final TABLET_UNIT_STRING:Ljava/lang/String; = "BBCNewsAppAndroidTablet"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdViewVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lbbc/mobile/news/ww/app/BBCNewsWwApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lbbc/mobile/app/NewsApplication;-><init>()V

    .line 34
    const/16 v0, 0x8

    iput v0, p0, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->mAdViewVisibility:I

    .line 40
    return-void
.end method


# virtual methods
.method public getAdViewVisibility()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->mAdViewVisibility:I

    return v0
.end method

.method public getAlarmReceiverClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 53
    const-class v0, Lbbc/mobile/news/ww/receiver/AlarmReceiverWw;

    return-object v0
.end method

.method public getPolicyUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushParameters()Lbbc/mobile/news/push/PushParameters;
    .locals 4

    .prologue
    .line 119
    new-instance v0, Lbbc/mobile/news/push/PushParameters;

    invoke-direct {v0}, Lbbc/mobile/news/push/PushParameters;-><init>()V

    .line 120
    .local v0, config:Lbbc/mobile/news/push/PushParameters;
    invoke-virtual {p0}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbc/mobile/news/push/PushParameters;->setScheme(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbc/mobile/news/push/PushParameters;->setHost(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lbbc/mobile/news/push/PushParameters;->setPort(I)V

    .line 123
    invoke-virtual {p0}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbc/mobile/news/push/PushParameters;->setKey(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbc/mobile/news/push/PushParameters;->setSecret(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbc/mobile/news/push/PushParameters;->setBaseUrl(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbc/mobile/news/push/PushParameters;->setSenderId(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbc/mobile/news/push/PushParameters;->setProdKey(Ljava/lang/String;)V

    .line 128
    const v1, 0x7f0b0005

    .line 130
    .local v1, tagResId:I
    invoke-virtual {p0}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbc/mobile/news/push/PushParameters;->setBreakingNewsTags(Ljava/util/List;)V

    .line 131
    return-object v0
.end method

.method public getUnitString(Z)Ljava/lang/String;
    .locals 1
    .parameter "isTablet"

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    const-string v0, "BBCNewsAppAndroidTablet"

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "BBCNewsAppAndroidPhone"

    goto :goto_0
.end method

.method protected initAdverts()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected initStats(Lbbc/mobile/news/stats/Stats;)V
    .locals 4
    .parameter "stats"

    .prologue
    .line 59
    const-string v0, "stats_"

    const-string v1, "initStats"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance p1, Lbbc/mobile/news/stats/Stats;

    .end local p1
    invoke-direct {p1, p0}, Lbbc/mobile/news/stats/Stats;-><init>(Landroid/content/Context;)V

    .line 65
    .restart local p1
    :cond_0
    new-instance v0, Lbbc/mobile/news/stats/Omniture3;

    invoke-direct {v0, p0}, Lbbc/mobile/news/stats/Omniture3;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lbbc/mobile/news/stats/Stats;->setOmniture(Lbbc/mobile/news/stats/Omniture3;)V

    .line 66
    new-instance v0, Lbbc/mobile/news/stats/Beacon;

    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    const v2, 0x7f080026

    invoke-virtual {p0, v2}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->getAppEdition()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lbbc/mobile/news/stats/Beacon;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, v0}, Lbbc/mobile/news/stats/Stats;->setBeacon(Lbbc/mobile/news/stats/Beacon;)Lbbc/mobile/news/stats/Stats;

    .line 69
    invoke-super {p0, p1}, Lbbc/mobile/app/NewsApplication;->initStats(Lbbc/mobile/news/stats/Stats;)V

    .line 70
    return-void
.end method

.method public isAdViewVisible()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->mAdViewVisibility:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUk()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isWorldWide()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->TAG:Ljava/lang/String;

    const-string v1, "Application created"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Lbbc/mobile/news/util/GlobalSettings;->setRegionId(I)V

    .line 47
    invoke-super {p0}, Lbbc/mobile/app/NewsApplication;->onCreate()V

    .line 48
    return-void
.end method

.method public setAdViewVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->mAdViewVisibility:I

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lbbc/mobile/news/ww/app/BBCNewsWwApp;->mAdViewVisibility:I

    goto :goto_0
.end method

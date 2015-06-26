.class public Lbbc/beacon/android/BBCBeaconFactory;
.super Ljava/lang/Object;
.source "BBCBeaconFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbbc/beacon/android/BBCBeaconFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/beacon/android/BBCBeaconFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    new-instance v0, Lbbc/beacon/android/DeviceIdentifierUUID;

    invoke-direct {v0, p0}, Lbbc/beacon/android/DeviceIdentifierUUID;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lbbc/beacon/android/DeviceIdentifierUUID;->getHashedDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLibraryVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    :try_start_0
    const-string v2, "bbc.beacon.android.config.bbcbeacon"

    invoke-static {v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 43
    .local v1, myResources:Ljava/util/ResourceBundle;
    const-string v2, "bbcbeacon.version"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 46
    .end local v1           #myResources:Ljava/util/ResourceBundle;
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/util/MissingResourceException;
    const-string v2, "0.74b"

    goto :goto_0
.end method

.method private getScreenSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 37
    sget v0, Lbbc/mobile/news/R$string;->stats_screen_size:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "unknown"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "applicationName"
    .parameter "applicationVersion"
    .parameter "libraryName"
    .parameter "libraryVersion"

    .prologue
    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, uaString:Ljava/lang/String;
    const-string v1, "istats-ua-string"

    invoke-static {v1, v0}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-object v0
.end method


# virtual methods
.method public makeBeacon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbbc/beacon/android/BBCBeacon2;
    .locals 11
    .parameter "context"
    .parameter "productName"
    .parameter "applicationName"
    .parameter "applicationVersion"
    .parameter "edition"

    .prologue
    .line 18
    invoke-direct {p0}, Lbbc/beacon/android/BBCBeaconFactory;->getLibraryVersion()Ljava/lang/String;

    move-result-object v5

    .line 19
    .local v5, libraryVersion:Ljava/lang/String;
    invoke-static {p1}, Lbbc/beacon/android/BBCBeaconFactory;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 20
    .local v6, hashedDeviceIdUUID:Ljava/lang/String;
    sget-object v1, Lbbc/beacon/android/BBCBeaconFactory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hashed Generated UUID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lbbc/beacon/android/BBCBeaconFactory;->getScreenSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 23
    .local v7, screenSize:Ljava/lang/String;
    new-instance v0, Lbbc/beacon/android/SitestatUrlMaker2;

    .line 24
    const-string v4, "bbcbeacon_android"

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    .line 23
    invoke-direct/range {v0 .. v7}, Lbbc/beacon/android/SitestatUrlMaker2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .local v0, maker:Lbbc/beacon/android/SitestatUrlMaker2;
    new-instance v8, Lbbc/beacon/android/IStatsAvUrlMaker;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v8, v1, v6}, Lbbc/beacon/android/IStatsAvUrlMaker;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v8, iStatsAvUrlMaker:Lbbc/beacon/android/IStatsAvUrlMaker;
    const-string v1, "BBCBeacon"

    invoke-direct {p0, p3, p4, v1, v5}, Lbbc/beacon/android/BBCBeaconFactory;->makeUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 30
    .local v10, userAgentString:Ljava/lang/String;
    new-instance v9, Lbbc/beacon/android/HttpRequestSender;

    invoke-direct {v9, v10}, Lbbc/beacon/android/HttpRequestSender;-><init>(Ljava/lang/String;)V

    .line 32
    .local v9, sender:Lbbc/beacon/android/HttpRequestSender;
    new-instance v1, Lbbc/beacon/android/BBCBeacon2;

    invoke-direct {v1, v0, v8, v9}, Lbbc/beacon/android/BBCBeacon2;-><init>(Lbbc/beacon/android/SitestatUrlMaker2;Lbbc/beacon/android/IStatsAvUrlMaker;Lbbc/beacon/android/HttpRequestSender;)V

    return-object v1
.end method

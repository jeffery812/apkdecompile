.class public Lbbc/mobile/news/helper/UserAgent;
.super Ljava/lang/Object;
.source "UserAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserAgent"

.field private static final USER_AGENT_FORMAT:Ljava/lang/String; = "%s (AndroidApp; %s; %s) %s (Android %s)"


# instance fields
.field private final packageInfoName:Ljava/lang/String;

.field private final productName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "productName"
    .parameter "packageInfoName"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lbbc/mobile/news/helper/UserAgent;->productName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lbbc/mobile/news/helper/UserAgent;->packageInfoName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public readAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "applicationContext"

    .prologue
    const/4 v11, 0x0

    .line 42
    const-string v5, "?"

    .line 43
    .local v5, public_version:Ljava/lang/String;
    const-string v2, "?"

    .line 45
    .local v2, build_version:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lbbc/mobile/news/helper/UserAgent;->packageInfoName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 46
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 52
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 53
    .local v0, android_device:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", SDK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, android_version:Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v8, "%s (AndroidApp; %s; %s) %s (Android %s)"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lbbc/mobile/news/helper/UserAgent;->productName:Ljava/lang/String;

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v5, v9, v10

    const/4 v10, 0x2

    aput-object v2, v9, v10

    const/4 v10, 0x3

    aput-object v0, v9, v10

    const/4 v10, 0x4

    aput-object v1, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, r:Ljava/lang/String;
    return-object v6

    .line 49
    .end local v0           #android_device:Ljava/lang/String;
    .end local v1           #android_version:Ljava/lang/String;
    .end local v6           #r:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 50
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "UserAgent"

    const-string v8, "getBuildUserAgent(): failed to retrieve PackageInfo"

    invoke-static {v7, v8, v3}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

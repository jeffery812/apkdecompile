.class public final Lbbc/mobile/news/helper/FlashUtilsNew;
.super Ljava/lang/Object;
.source "FlashUtilsNew.java"


# static fields
.field public static final FLASH_API_CEILING:I = 0xa

.field public static final FLASH_API_THRESHOLD:I = 0x8

.field private static final FLASH_CAPABLE:I = 0x1

.field private static final FLASH_NOT_DETERMINED:I = -0x1

.field private static final FLASH_NOT_INSTALLED:I = 0x0

.field private static final FLASH_PACKAGE_NAME:Ljava/lang/String; = "com.adobe.flashplayer"

.field private static final FLASH_VERION_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final MOBILE:I = 0x1

.field public static final NONE:I = -0x1

.field private static final SDK_INT:I

.field public static final TAG:Ljava/lang/String;

.field public static final WIFI:I

.field public static sFlashCapability:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "(\\d+)\\.(\\d+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/FlashUtilsNew;->FLASH_VERION_PATTERN:Ljava/util/regex/Pattern;

    .line 20
    const-class v0, Lbbc/mobile/news/helper/FlashUtilsNew;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/FlashUtilsNew;->TAG:Ljava/lang/String;

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lbbc/mobile/news/helper/FlashUtilsNew;->SDK_INT:I

    .line 38
    const/4 v0, -0x1

    sput v0, Lbbc/mobile/news/helper/FlashUtilsNew;->sFlashCapability:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFlashPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "context"

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 80
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.adobe.flashplayer"

    const/16 v3, 0x1040

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 84
    :goto_0
    return-object v2

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMoiraVideoDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 120
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbbc/mobile/news/R$string;->moira_nonflash_device_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isFlashCapable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    sget v3, Lbbc/mobile/news/helper/FlashUtilsNew;->sFlashCapability:I

    if-nez v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    sget v3, Lbbc/mobile/news/helper/FlashUtilsNew;->sFlashCapability:I

    if-ne v3, v2, :cond_2

    move v1, v2

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p0}, Lbbc/mobile/news/helper/FlashUtilsNew;->getFlashPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 54
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_3

    .line 55
    sput v1, Lbbc/mobile/news/helper/FlashUtilsNew;->sFlashCapability:I

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {v0}, Lbbc/mobile/news/helper/FlashUtilsNew;->isValidFlashVersion(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lbbc/mobile/news/helper/FlashUtilsNew;->isValidApiLevel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    sput v2, Lbbc/mobile/news/helper/FlashUtilsNew;->sFlashCapability:I

    move v1, v2

    .line 62
    goto :goto_0
.end method

.method public static final isNativeCapable()Z
    .locals 2

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isValidApiLevel()Z
    .locals 2

    .prologue
    .line 72
    sget v0, Lbbc/mobile/news/helper/FlashUtilsNew;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    sget v0, Lbbc/mobile/news/helper/FlashUtilsNew;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isValidFlashVersion(Landroid/content/pm/PackageInfo;)Z
    .locals 11
    .parameter "flashPackageInfo"

    .prologue
    const/16 v10, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    if-nez p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v6

    .line 94
    :cond_1
    sget-object v8, Lbbc/mobile/news/helper/FlashUtilsNew;->FLASH_VERION_PATTERN:Ljava/util/regex/Pattern;

    iget-object v9, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 96
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 98
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, majorString:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, minorString:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, major:I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 106
    .local v4, minor:I
    if-gt v1, v10, :cond_2

    if-ne v1, v10, :cond_0

    if-lt v4, v7, :cond_0

    :cond_2
    move v6, v7

    .line 107
    goto :goto_0

    .line 110
    .end local v1           #major:I
    .end local v4           #minor:I
    :catch_0
    move-exception v0

    .line 111
    .local v0, exception:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static networkType()I
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 127
    .local v0, mng:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 129
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 130
    const/4 v3, -0x1

    .line 138
    :goto_0
    return v3

    .line 132
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 134
    .local v2, type:I
    if-nez v2, :cond_1

    .line 135
    const/4 v3, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static resetFlashTest()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, -0x1

    sput v0, Lbbc/mobile/news/helper/FlashUtilsNew;->sFlashCapability:I

    .line 143
    return-void
.end method

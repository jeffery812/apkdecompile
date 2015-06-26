.class public Lbbc/mobile/news/helper/ConnectivityStatus;
.super Ljava/lang/Object;
.source "ConnectivityStatus.java"


# static fields
.field private static final CONNECTION_3G:I = 0x0

.field private static final CONNECTION_NONE:I = -0x1

.field private static final CONNECTION_ROAMING:I = -0x2

.field private static final CONNECTION_TYPES:[Ljava/lang/String; = null

.field private static final CONNECTION_WIFI:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "3g"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wifi"

    aput-object v2, v0, v1

    sput-object v0, Lbbc/mobile/news/helper/ConnectivityStatus;->CONNECTION_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getConnectionType(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 39
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 40
    .local v0, mgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 42
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v3

    .line 45
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    const/4 v3, -0x2

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 53
    .local v2, type:I
    if-nez v2, :cond_3

    .line 54
    const/4 v3, 0x0

    goto :goto_0

    .line 56
    :cond_3
    if-ne v2, v4, :cond_0

    move v3, v4

    .line 57
    goto :goto_0
.end method

.method public static final getConnectionTypeAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    invoke-static {p0}, Lbbc/mobile/news/helper/ConnectivityStatus;->getConnectionType(Landroid/content/Context;)I

    move-result v0

    .line 29
    .local v0, type:I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lbbc/mobile/news/helper/ConnectivityStatus;->CONNECTION_TYPES:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

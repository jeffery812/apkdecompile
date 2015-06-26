.class public final Lbbc/mobile/news/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 30
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 33
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 35
    const-string v2, "3g"

    .line 42
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return-object v2

    .line 37
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 38
    const-string v2, "wifi"

    goto :goto_0

    .line 42
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final isConnected(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 12
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 13
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 15
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 23
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

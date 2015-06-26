.class public Lbbc/beacon/android/DeviceIdentifierUUID;
.super Ljava/lang/Object;
.source "DeviceIdentifierUUID.java"


# static fields
.field private static final PREF_FILE_KEY:Ljava/lang/String; = "bbc.beacon.android"

.field private static final SAVED_ID_KEY:Ljava/lang/String; = "bbcDeviceId"


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "bbc.beacon.android"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lbbc/beacon/android/DeviceIdentifierUUID;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 27
    iget-object v0, p0, Lbbc/beacon/android/DeviceIdentifierUUID;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "bbcDeviceId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/beacon/android/DeviceIdentifierUUID;->mDeviceId:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static final clearDeviceId(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    const-string v0, "bbc.beacon.android"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method private static hashDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "deviceId"

    .prologue
    const/4 v6, 0x0

    .line 60
    const-string v4, "unknown"

    .line 61
    .local v4, hashedDeviceId:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 64
    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 65
    .local v5, md:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 67
    .local v1, digestBytes:[B
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .local v3, formatter:Ljava/util/Formatter;
    :try_start_1
    array-length v7, v1

    :goto_0
    if-lt v6, v7, :cond_1

    .line 72
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 76
    if-eqz v3, :cond_0

    .line 77
    :try_start_2
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V
    :try_end_2
    .catch Ljava/util/FormatterClosedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .end local v1           #digestBytes:[B
    .end local v3           #formatter:Ljava/util/Formatter;
    .end local v5           #md:Ljava/security/MessageDigest;
    :cond_0
    :goto_1
    return-object v4

    .line 69
    .restart local v1       #digestBytes:[B
    .restart local v3       #formatter:Ljava/util/Formatter;
    .restart local v5       #md:Ljava/security/MessageDigest;
    :cond_1
    :try_start_3
    aget-byte v0, v1, v6

    .line 70
    .local v0, b:B
    const-string v8, "%02x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    .end local v0           #b:B
    :catchall_0
    move-exception v6

    .line 76
    if-eqz v3, :cond_2

    .line 77
    :try_start_4
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V
    :try_end_4
    .catch Ljava/util/FormatterClosedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0

    .line 83
    :cond_2
    :goto_2
    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_0

    .line 85
    .end local v1           #digestBytes:[B
    .end local v3           #formatter:Ljava/util/Formatter;
    .end local v5           #md:Ljava/security/MessageDigest;
    :catch_0
    move-exception v2

    .line 86
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    const-string v4, "unableToHash"

    goto :goto_1

    .line 80
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v1       #digestBytes:[B
    .restart local v3       #formatter:Ljava/util/Formatter;
    .restart local v5       #md:Ljava/security/MessageDigest;
    :catch_1
    move-exception v7

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public clearDeviceIdentifier()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbbc/beacon/android/DeviceIdentifierUUID;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public getDeviceIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lbbc/beacon/android/DeviceIdentifierUUID;->mDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/beacon/android/DeviceIdentifierUUID;->mDeviceId:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lbbc/beacon/android/DeviceIdentifierUUID;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bbcDeviceId"

    iget-object v2, p0, Lbbc/beacon/android/DeviceIdentifierUUID;->mDeviceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    :cond_0
    iget-object v0, p0, Lbbc/beacon/android/DeviceIdentifierUUID;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getHashedDeviceIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lbbc/beacon/android/DeviceIdentifierUUID;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbbc/beacon/android/DeviceIdentifierUUID;->hashDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

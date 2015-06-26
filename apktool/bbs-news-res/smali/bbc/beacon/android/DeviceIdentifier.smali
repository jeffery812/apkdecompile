.class public Lbbc/beacon/android/DeviceIdentifier;
.super Ljava/lang/Object;
.source "DeviceIdentifier.java"


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lbbc/beacon/android/DeviceIdentifier;->contentResolver:Landroid/content/ContentResolver;

    .line 13
    return-void
.end method

.method public static getAndroidId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .parameter "contentResolver"

    .prologue
    .line 20
    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getDeviceIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lbbc/beacon/android/DeviceIdentifier;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lbbc/beacon/android/DeviceIdentifier;->getAndroidId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

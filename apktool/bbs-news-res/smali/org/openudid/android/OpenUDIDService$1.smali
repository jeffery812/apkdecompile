.class final Lorg/openudid/android/OpenUDIDService$1;
.super Landroid/os/Binder;
.source "OpenUDIDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openudid/android/OpenUDIDService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/openudid/android/OpenUDIDService;


# direct methods
.method constructor <init>(Lorg/openudid/android/OpenUDIDService;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lorg/openudid/android/OpenUDIDService$1;->a:Lorg/openudid/android/OpenUDIDService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    .line 29
    iget-object v1, p0, Lorg/openudid/android/OpenUDIDService$1;->a:Lorg/openudid/android/OpenUDIDService;

    const-string v2, "openudid_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/openudid/android/OpenUDIDService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    const-string v1, "openudid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x1

    return v1
.end method

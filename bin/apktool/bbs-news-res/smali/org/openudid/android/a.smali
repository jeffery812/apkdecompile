.class public final Lorg/openudid/android/a;
.super Ljava/lang/Object;
.source "OpenUDIDManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openudid/android/a$a;
    }
.end annotation


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/SharedPreferences;

.field private final e:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-object v0, Lorg/openudid/android/a;->f:Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    sput-boolean v0, Lorg/openudid/android/a;->g:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "openudid_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/openudid/android/a;->d:Landroid/content/SharedPreferences;

    .line 45
    iput-object p1, p0, Lorg/openudid/android/a;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/openudid/android/a;->e:Ljava/util/Random;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openudid/android/a;->c:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    sget-boolean v0, Lorg/openudid/android/a;->g:Z

    if-nez v0, :cond_0

    .line 161
    const-string v0, "OpenUDID"

    const-string v1, "Initialisation isn\'t done"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    sget-object v0, Lorg/openudid/android/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/openudid/android/a;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lorg/openudid/android/a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 182
    new-instance v0, Lorg/openudid/android/a;

    invoke-direct {v0, p0}, Lorg/openudid/android/a;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, manager:Lorg/openudid/android/a;
    iget-object v1, v0, Lorg/openudid/android/a;->d:Landroid/content/SharedPreferences;

    const-string v2, "openudid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    sput-object v1, Lorg/openudid/android/a;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.openudid.android.GETUDID"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openudid/android/a;->b:Ljava/util/List;

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/openudid/android/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " services matches OpenUDID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v1, v0, Lorg/openudid/android/a;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {v0}, Lorg/openudid/android/a;->c()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OpenUDID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/openudid/android/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const/4 v1, 0x1

    sput-boolean v1, Lorg/openudid/android/a;->g:Z

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 171
    sget-boolean v0, Lorg/openudid/android/a;->g:Z

    return v0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    iget-object v2, p0, Lorg/openudid/android/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v2, "Trying service "

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/openudid/android/a;->b:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lorg/openudid/android/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v2, p0, Lorg/openudid/android/a;->b:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 122
    .local v1, servInfo:Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v0, i:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lorg/openudid/android/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, p0, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 126
    iget-object v2, p0, Lorg/openudid/android/a;->b:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 139
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #servInfo:Landroid/content/pm/ServiceInfo;
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lorg/openudid/android/a;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/TreeMap;

    new-instance v3, Lorg/openudid/android/a$a;

    invoke-direct {v3, p0, v5}, Lorg/openudid/android/a$a;-><init>(Lorg/openudid/android/a;B)V

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iget-object v3, p0, Lorg/openudid/android/a;->c:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lorg/openudid/android/a;->f:Ljava/lang/String;

    .line 131
    :cond_1
    sget-object v2, Lorg/openudid/android/a;->f:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 132
    iget-object v2, p0, Lorg/openudid/android/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/openudid/android/a;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lorg/openudid/android/a;->f:Ljava/lang/String;

    const-string v3, "9774d56d682e549c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/openudid/android/a;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_3

    :cond_2
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0x40

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x10

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/openudid/android/a;->f:Ljava/lang/String;

    .line 134
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OpenUDID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/openudid/android/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v2, p0, Lorg/openudid/android/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "openudid"

    sget-object v4, Lorg/openudid/android/a;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    sput-boolean v6, Lorg/openudid/android/a;->g:Z

    goto :goto_0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "className"
    .parameter "service"

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 55
    .local v1, data:Landroid/os/Parcel;
    iget-object v4, p0, Lorg/openudid/android/a;->e:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 57
    .local v3, reply:Landroid/os/Parcel;
    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p2, v4, v5, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 58
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 61
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, _openUDID:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 64
    iget-object v4, p0, Lorg/openudid/android/a;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    iget-object v5, p0, Lorg/openudid/android/a;->c:Ljava/util/Map;

    iget-object v4, p0, Lorg/openudid/android/a;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0           #_openUDID:Ljava/lang/String;
    .end local v1           #data:Landroid/os/Parcel;
    .end local v3           #reply:Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/openudid/android/a;->a:Landroid/content/Context;

    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 80
    invoke-direct {p0}, Lorg/openudid/android/a;->c()V

    .line 81
    return-void

    .line 70
    .restart local v0       #_openUDID:Ljava/lang/String;
    .restart local v1       #data:Landroid/os/Parcel;
    .restart local v3       #reply:Landroid/os/Parcel;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/openudid/android/a;->c:Ljava/util/Map;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    .end local v0           #_openUDID:Ljava/lang/String;
    .end local v1           #data:Landroid/os/Parcel;
    .end local v3           #reply:Landroid/os/Parcel;
    :catch_0
    move-exception v2

    .line 76
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "OpenUDID"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RemoteException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 84
    return-void
.end method

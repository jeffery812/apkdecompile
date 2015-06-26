.class public Lcom/google/android/gms/internal/ly;
.super Lcom/google/android/gms/common/internal/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ly$1;,
        Lcom/google/android/gms/internal/ly$d;,
        Lcom/google/android/gms/internal/ly$a;,
        Lcom/google/android/gms/internal/ly$b;,
        Lcom/google/android/gms/internal/ly$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/d",
        "<",
        "Lcom/google/android/gms/internal/lw;",
        ">;"
    }
.end annotation


# instance fields
.field private final Dh:Lcom/google/android/gms/internal/md;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/md",
            "<",
            "Lcom/google/android/gms/internal/lw;",
            ">;"
        }
    .end annotation
.end field

.field private final aeL:Lcom/google/android/gms/internal/lx;

.field private final aeM:Lcom/google/android/gms/internal/mv;

.field private final aeN:Lcom/google/android/gms/internal/lo;

.field private final aeO:Lcom/google/android/gms/internal/ie;

.field private final aeP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ly;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ly;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ly$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ly$c;-><init>(Lcom/google/android/gms/internal/ly;Lcom/google/android/gms/internal/ly$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ly;->Dh:Lcom/google/android/gms/internal/md;

    new-instance v0, Lcom/google/android/gms/internal/lx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ly;->Dh:Lcom/google/android/gms/internal/md;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/lx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/md;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    iput-object p6, p0, Lcom/google/android/gms/internal/ly;->aeP:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/mv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ly;->Dh:Lcom/google/android/gms/internal/md;

    invoke-direct {v0, p3, v1, p7}, Lcom/google/android/gms/internal/mv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/md;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ly;->aeM:Lcom/google/android/gms/internal/mv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->Dh:Lcom/google/android/gms/internal/md;

    invoke-static {p1, p7, p8, v0}, Lcom/google/android/gms/internal/lo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/md;)Lcom/google/android/gms/internal/lo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ly;->aeN:Lcom/google/android/gms/internal/lo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->Dh:Lcom/google/android/gms/internal/md;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ie;->a(Landroid/content/Context;Lcom/google/android/gms/internal/md;)Lcom/google/android/gms/internal/ie;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ly;->aeO:Lcom/google/android/gms/internal/ie;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/internal/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ly$c;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/ly$c;-><init>(Lcom/google/android/gms/internal/ly;Lcom/google/android/gms/internal/ly$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ly;->Dh:Lcom/google/android/gms/internal/md;

    new-instance v0, Lcom/google/android/gms/internal/lx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ly;->Dh:Lcom/google/android/gms/internal/md;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/lx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/md;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ly;->aeP:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/mv;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ly;->Dh:Lcom/google/android/gms/internal/md;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/md;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ly;->aeM:Lcom/google/android/gms/internal/mv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->Dh:Lcom/google/android/gms/internal/md;

    invoke-static {p1, v3, v3, v0}, Lcom/google/android/gms/internal/lo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/md;)Lcom/google/android/gms/internal/lo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ly;->aeN:Lcom/google/android/gms/internal/lo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->Dh:Lcom/google/android/gms/internal/md;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ie;->a(Landroid/content/Context;Lcom/google/android/gms/internal/md;)Lcom/google/android/gms/internal/ie;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ly;->aeO:Lcom/google/android/gms/internal/ie;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ly;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->dK()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/internal/k;Lcom/google/android/gms/common/internal/d$e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/ly;->aeP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x5d3f18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/k;->e(Lcom/google/android/gms/common/internal/j;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/lz;Lcom/google/android/gms/location/LocationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/lz;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/lz;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/lx;->a(Lcom/google/android/gms/internal/lz;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected aL(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lw;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/lw$a;->aK(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lw;

    move-result-object v0

    return-object v0
.end method

.method public addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .locals 3
    .parameter
    .parameter "pendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/mb;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, geofences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/internal/mb;>;"
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->dK()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "At least one geofence must be specified."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    const-string v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OnAddGeofencesResultListener not provided."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/lw;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/lv;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ly$b;

    invoke-direct {v0, p3, p0}, Lcom/google/android/gms/internal/ly$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;Lcom/google/android/gms/internal/ly;)V

    move-object v1, v0

    goto :goto_1
.end method

.method public b(Lcom/google/android/gms/internal/lz;Landroid/app/PendingIntent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/lx;->b(Lcom/google/android/gms/internal/lz;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lx;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lx;->lW()V

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/d;->disconnect()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/lx;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected synthetic j(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ly;->aL(Landroid/os/IBinder;)Lcom/google/android/gms/internal/lw;

    move-result-object v0

    return-object v0
.end method

.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "callbackIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->dK()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lw;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .locals 3
    .parameter "pendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->dK()V

    const-string v0, "PendingIntent must be specified."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OnRemoveGeofencesResultListener not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/lw;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/lv;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ly$b;

    invoke-direct {v0, p2, p0}, Lcom/google/android/gms/internal/ly$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;Lcom/google/android/gms/internal/ly;)V

    move-object v1, v0

    goto :goto_0
.end method

.method public removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .locals 4
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, geofenceRequestIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->dK()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "geofenceRequestIds can\'t be null nor empty."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    const-string v0, "OnRemoveGeofencesResultListener not provided."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez p2, :cond_1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->gS()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/lw;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/lw;->a([Ljava/lang/String;Lcom/google/android/gms/internal/lv;Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ly$b;

    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/ly$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;Lcom/google/android/gms/internal/ly;)V

    move-object v2, v1

    goto :goto_1
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "callbackIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lx;->removeLocationUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lx;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    return-void
.end method

.method public requestActivityUpdates(JLandroid/app/PendingIntent;)V
    .locals 5
    .parameter "detectionIntervalMillis"
    .parameter "callbackIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->dK()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "detectionIntervalMillis must be >= 0"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/google/android/gms/internal/lw;->a(JZLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "request"
    .parameter "callbackIntent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/lx;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "request"
    .parameter "listener"
    .parameter "looper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/lx;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMockLocation(Landroid/location/Location;)V
    .locals 1
    .parameter "mockLocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lx;->setMockLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setMockMode(Z)V
    .locals 1
    .parameter "isMockMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ly;->aeL:Lcom/google/android/gms/internal/lx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/lx;->setMockMode(Z)V

    return-void
.end method

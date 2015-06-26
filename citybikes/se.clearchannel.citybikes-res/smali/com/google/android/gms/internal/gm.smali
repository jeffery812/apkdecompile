.class public Lcom/google/android/gms/internal/gm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gm$a;,
        Lcom/google/android/gms/internal/gm$b;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final xP:Lcom/google/android/gms/internal/gq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/gq",
            "<",
            "Lcom/google/android/gms/internal/gl;",
            ">;"
        }
    .end annotation
.end field

.field private xQ:Landroid/content/ContentProviderClient;

.field private xR:Z

.field private xS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            "Lcom/google/android/gms/internal/gm$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/gq",
            "<",
            "Lcom/google/android/gms/internal/gl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gm;->xQ:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gm;->xR:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gm;->xS:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/gm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    return-void
.end method


# virtual methods
.method public dI()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gm;->xR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gm;->setMockMode(Z)V

    :cond_0
    return-void
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bP()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gl;

    iget-object v1, p0, Lcom/google/android/gms/internal/gm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gl;->an(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeAllListeners()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gm;->xS:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gm$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/gq;->bQ()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/location/c;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "callbackIntent"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bP()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gl;->a(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bP()V

    const-string v0, "Invalid null listener"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/gm;->xS:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gm$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/gm;->xQ:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gm;->xS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/gm;->xQ:Landroid/content/ContentProviderClient;

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/gm;->xQ:Landroid/content/ContentProviderClient;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gm$b;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/gq;->bQ()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/location/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "request"
    .parameter "callbackIntent"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bP()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gl;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 4
    .parameter "request"
    .parameter "listener"
    .parameter "looper"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bP()V

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gm;->xS:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xS:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gm$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/gm$b;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/gm$b;-><init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xS:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gl;

    iget-object v3, p0, Lcom/google/android/gms/internal/gm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1, v3}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/c;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public setMockLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "mockLocation"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bP()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gl;->setMockLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMockMode(Z)V
    .locals 2
    .parameter "isMockMode"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bP()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gm;->xP:Lcom/google/android/gms/internal/gq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gq;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gl;->setMockMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gm;->xR:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

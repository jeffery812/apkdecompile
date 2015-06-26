.class public Lcom/google/android/gms/panorama/PanoramaClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;
    }
.end annotation


# instance fields
.field private final Di:Lcom/google/android/gms/internal/hm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "context"
    .parameter "connectionCallbacks"
    .parameter "connectionFailedListener"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/hm;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/hm;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hm;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hm;->disconnect()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hm;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hm;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hm;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hm;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public loadPanoramaInfo(Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;Landroid/net/Uri;)V
    .locals 3
    .parameter "listener"
    .parameter "uri"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    new-instance v1, Lcom/google/android/gms/panorama/PanoramaClient$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/panorama/PanoramaClient$1;-><init>(Lcom/google/android/gms/panorama/PanoramaClient;Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/hm;->a(Lcom/google/android/gms/common/api/a$c;Landroid/net/Uri;Z)V

    return-void
.end method

.method public loadPanoramaInfoAndGrantAccess(Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;Landroid/net/Uri;)V
    .locals 3
    .parameter "listener"
    .parameter "uri"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    new-instance v1, Lcom/google/android/gms/panorama/PanoramaClient$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/panorama/PanoramaClient$2;-><init>(Lcom/google/android/gms/panorama/PanoramaClient;Lcom/google/android/gms/panorama/PanoramaClient$OnPanoramaInfoLoadedListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/google/android/gms/internal/hm;->a(Lcom/google/android/gms/common/api/a$c;Landroid/net/Uri;Z)V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hm;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hm;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hm;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/panorama/PanoramaClient;->Di:Lcom/google/android/gms/internal/hm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hm;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

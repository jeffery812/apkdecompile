.class public Lcom/google/android/gms/location/ActivityRecognitionClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# instance fields
.field private final xl:Lcom/google/android/gms/internal/gn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 2
    .parameter "context"
    .parameter "connectedListener"
    .parameter "connectionFailedListener"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/gn;

    const-string v1, "activity_recognition"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/gn;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->disconnect()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gn;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gn;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gn;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gn;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gn;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
    .locals 1
    .parameter "callbackIntent"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gn;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestActivityUpdates(JLandroid/app/PendingIntent;)V
    .locals 1
    .parameter "detectionIntervalMillis"
    .parameter "callbackIntent"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gn;->requestActivityUpdates(JLandroid/app/PendingIntent;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gn;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->xl:Lcom/google/android/gms/internal/gn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gn;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

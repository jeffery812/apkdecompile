.class public Lcom/google/android/gms/wallet/WalletClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final Hj:Lcom/google/android/gms/internal/iu;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;ILcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 7
    .parameter "activity"
    .parameter "environment"
    .parameter "accountName"
    .parameter "theme"
    .parameter "connectionCallbacks"
    .parameter "connectionFailedListener"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/iu;

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/iu;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 7
    .parameter "activity"
    .parameter "environment"
    .parameter "accountName"
    .parameter "connectionCallbacks"
    .parameter "connectionFailedListener"

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/wallet/WalletClient;-><init>(Landroid/app/Activity;ILjava/lang/String;ILcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method public changeMaskedWallet(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "googleTransactionId"
    .parameter "merchantTransactionId"
    .parameter "requestCode"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/iu;->changeMaskedWallet(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public checkForPreAuthorization(I)V
    .locals 1
    .parameter "requestCode"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->checkForPreAuthorization(I)V

    return-void
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->disconnect()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/iu;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public loadFullWallet(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .locals 1
    .parameter "request"
    .parameter "requestCode"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/iu;->loadFullWallet(Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    return-void
.end method

.method public loadMaskedWallet(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .locals 1
    .parameter "request"
    .parameter "requestCode"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/iu;->loadMaskedWallet(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V

    return-void
.end method

.method public notifyTransactionStatus(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->notifyTransactionStatus(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/wallet/WalletClient;->Hj:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/iu;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

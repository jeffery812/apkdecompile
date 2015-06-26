.class Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/LifecycleDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/fragment/SupportWalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final atQ:Lcom/google/android/gms/internal/oq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/oq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/oq;Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;-><init>(Lcom/google/android/gms/internal/oq;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;Lcom/google/android/gms/wallet/MaskedWallet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->setEnabled(Z)V

    return-void
.end method

.method private getState()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/oq;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    .locals 2
    .parameter "startParams"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oq;->initialize(Lcom/google/android/gms/wallet/fragment/WalletFragmentInitParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/oq;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oq;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V
    .locals 2
    .parameter "maskedWallet"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oq;->updateMaskedWallet(Lcom/google/android/gms/wallet/MaskedWallet;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oq;->updateMaskedWalletRequest(Lcom/google/android/gms/wallet/MaskedWalletRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oq;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->k(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/e;->k(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v2

    invoke-interface {v0, v1, v2, p3}, Lcom/google/android/gms/internal/oq;->onCreateView(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/dynamic/d;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->f(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3
    .parameter "activity"
    .parameter "attrs"
    .parameter "savedInstanceState"

    .prologue
    const-string v0, "extraWalletFragmentOptions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->k(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v2

    invoke-interface {v1, v2, v0, p3}, Lcom/google/android/gms/internal/oq;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/oq;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onResume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/oq;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/oq;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onStart()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/oq;->onStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onStop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/SupportWalletFragment$b;->atQ:Lcom/google/android/gms/internal/oq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/oq;->onStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

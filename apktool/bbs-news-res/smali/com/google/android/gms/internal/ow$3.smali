.class Lcom/google/android/gms/internal/ow$3;
.super Lcom/google/android/gms/wallet/Wallet$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ow;->loadFullWallet(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ady:I

.field final synthetic auf:Lcom/google/android/gms/internal/ow;

.field final synthetic auh:Lcom/google/android/gms/wallet/FullWalletRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ow;Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ow$3;->auf:Lcom/google/android/gms/internal/ow;

    iput-object p2, p0, Lcom/google/android/gms/internal/ow$3;->auh:Lcom/google/android/gms/wallet/FullWalletRequest;

    iput p3, p0, Lcom/google/android/gms/internal/ow$3;->ady:I

    invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ox;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ow$3;->a(Lcom/google/android/gms/internal/ox;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ox;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ow$3;->auh:Lcom/google/android/gms/wallet/FullWalletRequest;

    iget v1, p0, Lcom/google/android/gms/internal/ow$3;->ady:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ox;->a(Lcom/google/android/gms/wallet/FullWalletRequest;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Jo:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ow$3;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.class final Lcom/google/android/gms/wallet/Wallet$6;
.super Lcom/google/android/gms/wallet/Wallet$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wallet/Wallet;->notifyTransactionStatus(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Hh:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wallet/Wallet$6;->Hh:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/iu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/Wallet$6;->a(Lcom/google/android/gms/internal/iu;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/iu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/Wallet$6;->Hh:Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/iu;->notifyTransactionStatus(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->nA:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wallet/Wallet$6;->a(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

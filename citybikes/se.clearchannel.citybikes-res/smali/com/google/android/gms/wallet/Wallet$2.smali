.class final Lcom/google/android/gms/wallet/Wallet$2;
.super Lcom/google/android/gms/wallet/Wallet$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wallet/Wallet;->checkForPreAuthorization(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Hc:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/wallet/Wallet$2;->Hc:I

    invoke-direct {p0}, Lcom/google/android/gms/wallet/Wallet$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/iu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/Wallet$2;->a(Lcom/google/android/gms/internal/iu;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/iu;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/Wallet$2;->Hc:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/iu;->checkForPreAuthorization(I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->nA:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wallet/Wallet$2;->a(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

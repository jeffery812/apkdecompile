.class final Lcom/google/android/gms/identity/intents/Address$2;
.super Lcom/google/android/gms/identity/intents/Address$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/identity/intents/Address;->requestUserAddress(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic adx:Lcom/google/android/gms/identity/intents/UserAddressRequest;

.field final synthetic ady:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/identity/intents/Address$2;->adx:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iput p2, p0, Lcom/google/android/gms/identity/intents/Address$2;->ady:I

    invoke-direct {p0}, Lcom/google/android/gms/identity/intents/Address$a;-><init>()V

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

    check-cast p1, Lcom/google/android/gms/internal/ll;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/identity/intents/Address$2;->a(Lcom/google/android/gms/internal/ll;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ll;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/Address$2;->adx:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget v1, p0, Lcom/google/android/gms/identity/intents/Address$2;->ady:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ll;->a(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->Jo:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/identity/intents/Address$2;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

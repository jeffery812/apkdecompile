.class Lcom/google/android/gms/internal/no$1;
.super Lcom/google/android/gms/internal/no$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/no;->revokeAccessAndDisconnect(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic alC:Lcom/google/android/gms/internal/no;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/no;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/no$1;->alC:Lcom/google/android/gms/internal/no;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/no$a;-><init>(Lcom/google/android/gms/internal/no$1;)V

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

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/no$1;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/plus/internal/e;->m(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    return-void
.end method

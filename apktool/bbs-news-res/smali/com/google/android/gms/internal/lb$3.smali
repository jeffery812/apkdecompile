.class Lcom/google/android/gms/internal/lb$3;
.super Lcom/google/android/gms/internal/lb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lb;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/p;Lcom/google/android/gms/fitness/request/DataSourceListener;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/lb$a",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic TI:Lcom/google/android/gms/internal/lb;

.field final synthetic TK:Lcom/google/android/gms/fitness/request/DataSourceListener;

.field final synthetic TL:Lcom/google/android/gms/fitness/request/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/fitness/request/DataSourceListener;Lcom/google/android/gms/fitness/request/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lb$3;->TI:Lcom/google/android/gms/internal/lb;

    iput-object p2, p0, Lcom/google/android/gms/internal/lb$3;->TK:Lcom/google/android/gms/fitness/request/DataSourceListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/lb$3;->TL:Lcom/google/android/gms/fitness/request/p;

    invoke-direct {p0}, Lcom/google/android/gms/internal/lb$a;-><init>()V

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

    check-cast p1, Lcom/google/android/gms/internal/kj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lb$3;->a(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/kj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/lb$c;

    iget-object v1, p0, Lcom/google/android/gms/internal/lb$3;->TK:Lcom/google/android/gms/fitness/request/DataSourceListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/lb$c;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;Lcom/google/android/gms/fitness/request/DataSourceListener;Lcom/google/android/gms/internal/lb$1;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/kj;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/kj;->iT()Lcom/google/android/gms/internal/ko;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/lb$3;->TL:Lcom/google/android/gms/fitness/request/p;

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ko;->a(Lcom/google/android/gms/fitness/request/p;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lb$3;->d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method protected d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    return-object p1
.end method

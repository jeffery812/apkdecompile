.class Lcom/google/android/gms/internal/lc$6;
.super Lcom/google/android/gms/internal/kj$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lc;->unregisterForSessions(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TO:Lcom/google/android/gms/internal/lc;

.field final synthetic TS:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lc;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lc$6;->TO:Lcom/google/android/gms/internal/lc;

    iput-object p2, p0, Lcom/google/android/gms/internal/lc$6;->TS:Landroid/app/PendingIntent;

    invoke-direct {p0}, Lcom/google/android/gms/internal/kj$c;-><init>()V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lc$6;->a(Lcom/google/android/gms/internal/kj;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/kj;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/kj$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kj$b;-><init>(Lcom/google/android/gms/common/api/BaseImplementation$b;)V

    new-instance v1, Lcom/google/android/gms/fitness/request/z;

    iget-object v2, p0, Lcom/google/android/gms/internal/lc$6;->TS:Landroid/app/PendingIntent;

    invoke-direct {v1, v2}, Lcom/google/android/gms/fitness/request/z;-><init>(Landroid/app/PendingIntent;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/kj;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/internal/kj;->iT()Lcom/google/android/gms/internal/ko;

    move-result-object v3

    invoke-interface {v3, v1, v0, v2}, Lcom/google/android/gms/internal/ko;->a(Lcom/google/android/gms/fitness/request/z;Lcom/google/android/gms/internal/ks;Ljava/lang/String;)V

    return-void
.end method

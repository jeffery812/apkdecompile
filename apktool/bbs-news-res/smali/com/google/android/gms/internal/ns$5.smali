.class Lcom/google/android/gms/internal/ns$5;
.super Lcom/google/android/gms/internal/ns$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ns;->load(Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic alM:Lcom/google/android/gms/internal/ns;

.field final synthetic alO:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ns;[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ns$5;->alM:Lcom/google/android/gms/internal/ns;

    iput-object p2, p0, Lcom/google/android/gms/internal/ns$5;->alO:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ns$a;-><init>(Lcom/google/android/gms/internal/ns$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ns$5;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ns$5;->alO:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/e;->d(Lcom/google/android/gms/common/api/BaseImplementation$b;[Ljava/lang/String;)V

    return-void
.end method

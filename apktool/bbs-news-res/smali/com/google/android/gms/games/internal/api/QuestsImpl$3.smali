.class Lcom/google/android/gms/games/internal/api/QuestsImpl$3;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;->load(Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XU:Z

.field final synthetic Yu:I

.field final synthetic Zg:Lcom/google/android/gms/games/internal/api/QuestsImpl;

.field final synthetic Zi:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;[IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Zg:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Zi:[I

    iput p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Yu:I

    iput-boolean p4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->XU:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

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

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Zi:[I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Yu:I

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->XU:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;[IIZ)V

    return-void
.end method

.class Lcom/google/android/gms/internal/hz$3;
.super Lcom/google/android/gms/internal/hz$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/hz;->write(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/plus/model/moments/Moment;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ec:Lcom/google/android/gms/internal/hz;

.field final synthetic Eh:Lcom/google/android/gms/plus/model/moments/Moment;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/plus/model/moments/Moment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hz$3;->Ec:Lcom/google/android/gms/internal/hz;

    iput-object p3, p0, Lcom/google/android/gms/internal/hz$3;->Eh:Lcom/google/android/gms/plus/model/moments/Moment;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/hz$c;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/hs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hz$3;->a(Lcom/google/android/gms/internal/hs;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/hs;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hz$3;->Eh:Lcom/google/android/gms/plus/model/moments/Moment;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/hs;->writeMoment(Lcom/google/android/gms/plus/model/moments/Moment;)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->nA:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hz$3;->a(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

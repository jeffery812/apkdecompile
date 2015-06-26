.class Lcom/google/android/gms/internal/fz$2;
.super Lcom/google/android/gms/internal/fz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fz;->loadInvitablePlayers(Lcom/google/android/gms/common/api/GoogleApiClient;IZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uN:Z

.field final synthetic vm:Lcom/google/android/gms/internal/fz;

.field final synthetic vn:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fz;IZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fz$2;->vm:Lcom/google/android/gms/internal/fz;

    iput p2, p0, Lcom/google/android/gms/internal/fz$2;->vn:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/fz$2;->uN:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fz$a;-><init>(Lcom/google/android/gms/internal/fz$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fz$2;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/fz$2;->vn:I

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/fz$2;->uN:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/api/a$c;IZZ)V

    return-void
.end method

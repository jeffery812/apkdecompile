.class Lcom/google/android/gms/internal/fw$3;
.super Lcom/google/android/gms/internal/fw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fw;->loadCurrentPlayerLeaderboardScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;II)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uY:Lcom/google/android/gms/internal/fw;

.field final synthetic uZ:Ljava/lang/String;

.field final synthetic va:I

.field final synthetic vb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;Ljava/lang/String;II)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fw$3;->uY:Lcom/google/android/gms/internal/fw;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw$3;->uZ:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/fw$3;->va:I

    iput p4, p0, Lcom/google/android/gms/internal/fw$3;->vb:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fw$b;-><init>(Lcom/google/android/gms/internal/fw$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fw$3;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/fw$3;->uZ:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/fw$3;->va:I

    iget v5, p0, Lcom/google/android/gms/internal/fw$3;->vb:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

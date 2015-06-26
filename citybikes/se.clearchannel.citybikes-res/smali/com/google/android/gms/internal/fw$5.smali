.class Lcom/google/android/gms/internal/fw$5;
.super Lcom/google/android/gms/internal/fw$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fw;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uN:Z

.field final synthetic uY:Lcom/google/android/gms/internal/fw;

.field final synthetic uZ:Ljava/lang/String;

.field final synthetic va:I

.field final synthetic vb:I

.field final synthetic vc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;Ljava/lang/String;IIIZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fw$5;->uY:Lcom/google/android/gms/internal/fw;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw$5;->uZ:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/fw$5;->va:I

    iput p4, p0, Lcom/google/android/gms/internal/fw$5;->vb:I

    iput p5, p0, Lcom/google/android/gms/internal/fw$5;->vc:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/fw$5;->uN:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fw$c;-><init>(Lcom/google/android/gms/internal/fw$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fw$5;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/internal/fw$5;->uZ:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/fw$5;->va:I

    iget v4, p0, Lcom/google/android/gms/internal/fw$5;->vb:I

    iget v5, p0, Lcom/google/android/gms/internal/fw$5;->vc:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/fw$5;->uN:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fl;->b(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;IIIZ)V

    return-void
.end method

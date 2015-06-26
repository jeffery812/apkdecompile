.class Lcom/google/android/gms/internal/fw$7;
.super Lcom/google/android/gms/internal/fw$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fw;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uY:Lcom/google/android/gms/internal/fw;

.field final synthetic uZ:Ljava/lang/String;

.field final synthetic vf:J

.field final synthetic vg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fw$7;->uY:Lcom/google/android/gms/internal/fw;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw$7;->uZ:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/fw$7;->vf:J

    iput-object p5, p0, Lcom/google/android/gms/internal/fw$7;->vg:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fw$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fw$7;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/fw$7;->uZ:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/fw$7;->vf:J

    iget-object v5, p0, Lcom/google/android/gms/internal/fw$7;->vg:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

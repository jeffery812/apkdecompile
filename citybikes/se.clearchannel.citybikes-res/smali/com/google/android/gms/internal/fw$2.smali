.class Lcom/google/android/gms/internal/fw$2;
.super Lcom/google/android/gms/internal/fw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fw;->loadLeaderboardMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uN:Z

.field final synthetic uY:Lcom/google/android/gms/internal/fw;

.field final synthetic uZ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fw$2;->uY:Lcom/google/android/gms/internal/fw;

    iput-object p2, p0, Lcom/google/android/gms/internal/fw$2;->uZ:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/fw$2;->uN:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fw$a;-><init>(Lcom/google/android/gms/internal/fw$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fw$2;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fw$2;->uZ:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/fw$2;->uN:Z

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;Z)V

    return-void
.end method

.class Lcom/google/android/gms/internal/gb$8;
.super Lcom/google/android/gms/internal/gb$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gb;->leaveMatchDuringTurn(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vq:Lcom/google/android/gms/internal/gb;

.field final synthetic vr:Ljava/lang/String;

.field final synthetic vu:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gb$8;->vq:Lcom/google/android/gms/internal/gb;

    iput-object p2, p0, Lcom/google/android/gms/internal/gb$8;->vr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gb$8;->vu:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gb$c;-><init>(Lcom/google/android/gms/internal/gb$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gb$8;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$8;->vr:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/gb$8;->vu:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

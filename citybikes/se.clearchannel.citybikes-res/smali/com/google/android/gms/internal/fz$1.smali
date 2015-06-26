.class Lcom/google/android/gms/internal/fz$1;
.super Lcom/google/android/gms/internal/fz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fz;->loadPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vl:Ljava/lang/String;

.field final synthetic vm:Lcom/google/android/gms/internal/fz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fz;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fz$1;->vm:Lcom/google/android/gms/internal/fz;

    iput-object p2, p0, Lcom/google/android/gms/internal/fz$1;->vl:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fz$a;-><init>(Lcom/google/android/gms/internal/fz$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fz$1;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fz$1;->vl:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V

    return-void
.end method

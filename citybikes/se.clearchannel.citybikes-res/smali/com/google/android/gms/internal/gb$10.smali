.class Lcom/google/android/gms/internal/gb$10;
.super Lcom/google/android/gms/internal/gb$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gb;->loadMatchesByStatus(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vq:Lcom/google/android/gms/internal/gb;

.field final synthetic vw:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gb;[I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gb$10;->vq:Lcom/google/android/gms/internal/gb;

    iput-object p2, p0, Lcom/google/android/gms/internal/gb$10;->vw:[I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gb$e;-><init>(Lcom/google/android/gms/internal/gb$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gb$10;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$10;->vw:[I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/api/a$c;[I)V

    return-void
.end method

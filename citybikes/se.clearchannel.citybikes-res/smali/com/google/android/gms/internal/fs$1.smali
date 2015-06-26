.class Lcom/google/android/gms/internal/fs$1;
.super Lcom/google/android/gms/internal/fs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fs;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uN:Z

.field final synthetic uO:Lcom/google/android/gms/internal/fs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fs;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fs$1;->uO:Lcom/google/android/gms/internal/fs;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/fs$1;->uN:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fs$a;-><init>(Lcom/google/android/gms/internal/fs$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fs$1;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/fl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fs$1;->uN:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fl;->b(Lcom/google/android/gms/common/api/a$c;Z)V

    return-void
.end method

.class Lcom/google/android/gms/internal/fs$2;
.super Lcom/google/android/gms/internal/fs$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fs;->reveal(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uO:Lcom/google/android/gms/internal/fs;

.field final synthetic uP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fs;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fs$2;->uO:Lcom/google/android/gms/internal/fs;

    iput-object p3, p0, Lcom/google/android/gms/internal/fs$2;->uP:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fs$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fs$2;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/fl;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/fs$2;->uP:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/fl;->b(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V

    return-void
.end method

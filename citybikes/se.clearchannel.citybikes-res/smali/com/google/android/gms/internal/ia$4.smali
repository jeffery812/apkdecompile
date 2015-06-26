.class Lcom/google/android/gms/internal/ia$4;
.super Lcom/google/android/gms/internal/ia$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ia;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic El:Lcom/google/android/gms/internal/ia;

.field final synthetic Em:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/common/api/Api$b;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ia$4;->El:Lcom/google/android/gms/internal/ia;

    iput-object p3, p0, Lcom/google/android/gms/internal/ia$4;->Em:Ljava/util/Collection;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ia$a;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/hs;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ia$4;->a(Lcom/google/android/gms/internal/hs;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/hs;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ia$4;->Em:Ljava/util/Collection;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/common/api/a$c;Ljava/util/Collection;)V

    return-void
.end method

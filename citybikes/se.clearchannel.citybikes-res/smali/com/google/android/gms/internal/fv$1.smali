.class Lcom/google/android/gms/internal/fv$1;
.super Lcom/google/android/gms/internal/fv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fv;->loadInvitations(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uW:Lcom/google/android/gms/internal/fv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fv;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/fv$1;->uW:Lcom/google/android/gms/internal/fv;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/fv$a;-><init>(Lcom/google/android/gms/internal/fv$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fv$1;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/fl;->h(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

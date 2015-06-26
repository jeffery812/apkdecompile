.class public Lcom/google/android/gms/internal/fq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fq$1;,
        Lcom/google/android/gms/internal/fq$a;,
        Lcom/google/android/gms/internal/fq$b;
    }
.end annotation


# instance fields
.field protected te:Lcom/google/android/gms/internal/fl;

.field protected uI:Lcom/google/android/gms/internal/fq$a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/fl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fq;->te:Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/fq;->aF(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/fl;ILcom/google/android/gms/internal/fq$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/fq;-><init>(Lcom/google/android/gms/internal/fl;I)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/fl;I)Lcom/google/android/gms/internal/fq;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/fg;->cE()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fq$b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fq$b;-><init>(Lcom/google/android/gms/internal/fl;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/fq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fq;-><init>(Lcom/google/android/gms/internal/fl;I)V

    goto :goto_0
.end method


# virtual methods
.method protected aF(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/fq$a;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/fq$a;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/internal/fq$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fq;->uI:Lcom/google/android/gms/internal/fq$a;

    return-void
.end method

.method public dl()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fq;->te:Lcom/google/android/gms/internal/fl;

    iget-object v1, p0, Lcom/google/android/gms/internal/fq;->uI:Lcom/google/android/gms/internal/fq$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/fq$a;->uJ:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/gms/internal/fq;->uI:Lcom/google/android/gms/internal/fq$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fq$a;->do()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fl;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public dm()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fq;->uI:Lcom/google/android/gms/internal/fq$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fq$a;->do()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public dn()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fq;->uI:Lcom/google/android/gms/internal/fq$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/fq$a;->uJ:Landroid/os/IBinder;

    return-object v0
.end method

.method public e(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/fq;->uI:Lcom/google/android/gms/internal/fq$a;

    iput p1, v0, Lcom/google/android/gms/internal/fq$a;->gravity:I

    return-void
.end method

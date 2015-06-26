.class public abstract Lcom/google/android/gms/internal/bx;
.super Lcom/google/android/gms/internal/cm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bx$b;,
        Lcom/google/android/gms/internal/bx$a;
    }
.end annotation


# instance fields
.field private final fw:Lcom/google/android/gms/internal/bz;

.field private final hn:Lcom/google/android/gms/internal/bw$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bw$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/cm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bx;->fw:Lcom/google/android/gms/internal/bz;

    iput-object p2, p0, Lcom/google/android/gms/internal/bx;->hn:Lcom/google/android/gms/internal/bw$a;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/bz;)Lcom/google/android/gms/internal/cb;
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/cd;->b(Lcom/google/android/gms/internal/bz;)Lcom/google/android/gms/internal/cb;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Could not fetch ad response from ad request service."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ct;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final ai()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bx;->al()Lcom/google/android/gms/internal/cd;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/cb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cb;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/bx;->ak()V

    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->hn:Lcom/google/android/gms/internal/bw$a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/bw$a;->a(Lcom/google/android/gms/internal/cb;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/bx;->fw:Lcom/google/android/gms/internal/bz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bx;->a(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/bz;)Lcom/google/android/gms/internal/cb;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/cb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cb;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bx;->ak()V

    throw v0
.end method

.method public abstract ak()V
.end method

.method public abstract al()Lcom/google/android/gms/internal/cd;
.end method

.method public final onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bx;->ak()V

    return-void
.end method

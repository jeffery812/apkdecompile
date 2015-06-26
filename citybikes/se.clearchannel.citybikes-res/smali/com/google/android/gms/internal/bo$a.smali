.class final Lcom/google/android/gms/internal/bo$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final ep:Ljava/lang/Runnable;

.field private volatile gV:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/bo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo$a;->gV:Z

    new-instance v0, Lcom/google/android/gms/internal/bo$a$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/bo$a$1;-><init>(Lcom/google/android/gms/internal/bo$a;Lcom/google/android/gms/internal/bo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bo$a;->ep:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bo$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/bo$a;->gV:Z

    return v0
.end method


# virtual methods
.method public ah()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/cs;->iI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo$a;->ep:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/bo$a;->gV:Z

    sget-object v0, Lcom/google/android/gms/internal/cs;->iI:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/bo$a;->ep:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

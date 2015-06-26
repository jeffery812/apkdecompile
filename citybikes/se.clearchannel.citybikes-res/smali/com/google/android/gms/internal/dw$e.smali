.class public final Lcom/google/android/gms/internal/dw$e;
.super Lcom/google/android/gms/internal/eb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private po:Lcom/google/android/gms/internal/dw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/eb$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dw$e;->po:Lcom/google/android/gms/internal/dw;

    return-void
.end method


# virtual methods
.method public b(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lcom/google/android/gms/internal/dw$e;->po:Lcom/google/android/gms/internal/dw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$e;->po:Lcom/google/android/gms/internal/dw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/dw;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/dw$e;->po:Lcom/google/android/gms/internal/dw;

    return-void
.end method

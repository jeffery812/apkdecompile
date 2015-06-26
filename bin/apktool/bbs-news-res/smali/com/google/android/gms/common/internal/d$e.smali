.class public final Lcom/google/android/gms/common/internal/d$e;
.super Lcom/google/android/gms/common/internal/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private LA:Lcom/google/android/gms/common/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/j$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d$e;->LA:Lcom/google/android/gms/common/internal/d;

    return-void
.end method


# virtual methods
.method public b(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lcom/google/android/gms/common/internal/d$e;->LA:Lcom/google/android/gms/common/internal/d;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/d$e;->LA:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/d;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/d$e;->LA:Lcom/google/android/gms/common/internal/d;

    return-void
.end method

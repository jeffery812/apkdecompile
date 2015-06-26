.class final Lcom/google/android/gms/internal/dw$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic pl:Lcom/google/android/gms/internal/dw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dw$f;->pl:Lcom/google/android/gms/internal/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "component"
    .parameter "binder"

    .prologue
    .local p0, this:Lcom/google/android/gms/internal/dw$f;,"Lcom/google/android/gms/internal/dw<TT;>.f;"
    iget-object v0, p0, Lcom/google/android/gms/internal/dw$f;->pl:Lcom/google/android/gms/internal/dw;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/dw;->w(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "component"

    .prologue
    .local p0, this:Lcom/google/android/gms/internal/dw$f;,"Lcom/google/android/gms/internal/dw<TT;>.f;"
    iget-object v0, p0, Lcom/google/android/gms/internal/dw$f;->pl:Lcom/google/android/gms/internal/dw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/dw;->a(Lcom/google/android/gms/internal/dw;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/dw$f;->pl:Lcom/google/android/gms/internal/dw;

    invoke-static {v0}, Lcom/google/android/gms/internal/dw;->a(Lcom/google/android/gms/internal/dw;)Lcom/google/android/gms/internal/dx;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dx;->J(I)V

    return-void
.end method

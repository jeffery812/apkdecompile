.class final Lcom/google/android/gms/internal/ly$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/md;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/md",
        "<",
        "Lcom/google/android/gms/internal/lw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aeR:Lcom/google/android/gms/internal/ly;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ly;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ly$c;->aeR:Lcom/google/android/gms/internal/ly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ly;Lcom/google/android/gms/internal/ly$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ly$c;-><init>(Lcom/google/android/gms/internal/ly;)V

    return-void
.end method


# virtual methods
.method public dK()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ly$c;->aeR:Lcom/google/android/gms/internal/ly;

    invoke-static {v0}, Lcom/google/android/gms/internal/ly;->b(Lcom/google/android/gms/internal/ly;)V

    return-void
.end method

.method public synthetic gS()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ly$c;->lX()Lcom/google/android/gms/internal/lw;

    move-result-object v0

    return-object v0
.end method

.method public lX()Lcom/google/android/gms/internal/lw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ly$c;->aeR:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ly;->gS()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/lw;

    return-object v0
.end method

.class final Lcom/google/android/gms/internal/gn$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/gq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/gq",
        "<",
        "Lcom/google/android/gms/internal/gl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic xZ:Lcom/google/android/gms/internal/gn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/gn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gn$c;->xZ:Lcom/google/android/gms/internal/gn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gn;Lcom/google/android/gms/internal/gn$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gn$c;-><init>(Lcom/google/android/gms/internal/gn;)V

    return-void
.end method


# virtual methods
.method public bP()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn$c;->xZ:Lcom/google/android/gms/internal/gn;

    invoke-static {v0}, Lcom/google/android/gms/internal/gn;->a(Lcom/google/android/gms/internal/gn;)V

    return-void
.end method

.method public synthetic bQ()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gn$c;->dJ()Lcom/google/android/gms/internal/gl;

    move-result-object v0

    return-object v0
.end method

.method public dJ()Lcom/google/android/gms/internal/gl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gn$c;->xZ:Lcom/google/android/gms/internal/gn;

    invoke-static {v0}, Lcom/google/android/gms/internal/gn;->b(Lcom/google/android/gms/internal/gn;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gl;

    return-object v0
.end method

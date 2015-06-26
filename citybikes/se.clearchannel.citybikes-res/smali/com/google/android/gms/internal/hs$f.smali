.class final Lcom/google/android/gms/internal/hs$f;
.super Lcom/google/android/gms/internal/dw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/hr;",
        ">.b<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic DM:Lcom/google/android/gms/internal/hs;

.field private final jY:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/hs$f;->DM:Lcom/google/android/gms/internal/hs;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dw$b;-><init>(Lcom/google/android/gms/internal/dw;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/hs$f;->jY:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method protected aL()V
    .locals 0

    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hs$f;->c(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method protected c(Lcom/google/android/gms/common/api/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/hs$f;->DM:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->disconnect()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/hs$f;->jY:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

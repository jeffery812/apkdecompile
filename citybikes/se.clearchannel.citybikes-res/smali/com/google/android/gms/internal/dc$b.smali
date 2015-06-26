.class final Lcom/google/android/gms/internal/dc$b;
.super Lcom/google/android/gms/internal/dw$b;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/de;",
        ">.b<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
        ">;>;",
        "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;"
    }
.end annotation


# instance fields
.field final synthetic jX:Lcom/google/android/gms/internal/dc;

.field private final jY:Lcom/google/android/gms/common/api/Status;

.field private final jZ:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/dc$b;->jX:Lcom/google/android/gms/internal/dc;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dw$b;-><init>(Lcom/google/android/gms/internal/dw;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/dc$b;->jY:Lcom/google/android/gms/common/api/Status;

    iput p4, p0, Lcom/google/android/gms/internal/dc$b;->jZ:I

    return-void
.end method


# virtual methods
.method protected aL()V
    .locals 0

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dc$b;->c(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/common/api/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public getStateKey()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/dc$b;->jZ:I

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dc$b;->jY:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

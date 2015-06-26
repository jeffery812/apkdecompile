.class abstract Lcom/google/android/gms/internal/fl$ao;
.super Lcom/google/android/gms/internal/dw$d;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ao"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/a$c",
        "<*>;>",
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/fp;",
        ">.d<TR;>;",
        "Lcom/google/android/gms/common/api/Releasable;",
        "Lcom/google/android/gms/common/api/Result;"
    }
.end annotation


# instance fields
.field final jY:Lcom/google/android/gms/common/api/Status;

.field final nE:Lcom/google/android/gms/common/data/DataHolder;

.field final synthetic tZ:Lcom/google/android/gms/internal/fl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$ao;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/dw$d;-><init>(Lcom/google/android/gms/internal/dw;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p3}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl$ao;->jY:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/internal/fl$ao;->nE:Lcom/google/android/gms/common/data/DataHolder;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$ao;->jY:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$ao;->nE:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$ao;->nE:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void
.end method

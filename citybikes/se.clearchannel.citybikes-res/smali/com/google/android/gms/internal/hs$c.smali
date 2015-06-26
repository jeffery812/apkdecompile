.class final Lcom/google/android/gms/internal/hs$c;
.super Lcom/google/android/gms/internal/hn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic DM:Lcom/google/android/gms/internal/hs;

.field private final Dp:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/common/api/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/hs$c;->DM:Lcom/google/android/gms/internal/hs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/hn;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/hs$c;->Dp:Lcom/google/android/gms/common/api/a$c;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_0
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v2

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    move-object v4, v1

    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/hs$c;->DM:Lcom/google/android/gms/internal/hs;

    new-instance v0, Lcom/google/android/gms/internal/hs$d;

    iget-object v1, p0, Lcom/google/android/gms/internal/hs$c;->DM:Lcom/google/android/gms/internal/hs;

    iget-object v2, p0, Lcom/google/android/gms/internal/hs$c;->Dp:Lcom/google/android/gms/common/api/a$c;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hs$d;-><init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void

    :cond_1
    move-object v4, p1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

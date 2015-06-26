.class final Lcom/google/android/gms/internal/hs$e;
.super Lcom/google/android/gms/internal/hn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final synthetic DM:Lcom/google/android/gms/internal/hs;

.field private final Dp:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
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
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/hs$e;->DM:Lcom/google/android/gms/internal/hs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/hn;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/hs$e;->Dp:Lcom/google/android/gms/common/api/a$c;

    return-void
.end method


# virtual methods
.method public b(ILandroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v0, "pendingIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_0
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hs$e;->DM:Lcom/google/android/gms/internal/hs;

    new-instance v1, Lcom/google/android/gms/internal/hs$f;

    iget-object v3, p0, Lcom/google/android/gms/internal/hs$e;->DM:Lcom/google/android/gms/internal/hs;

    iget-object v4, p0, Lcom/google/android/gms/internal/hs$e;->Dp:Lcom/google/android/gms/common/api/a$c;

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/gms/internal/hs$f;-><init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

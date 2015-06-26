.class final Lcom/google/android/gms/internal/hm$a;
.super Lcom/google/android/gms/internal/dw$b;

# interfaces
.implements Lcom/google/android/gms/panorama/Panorama$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/hl;",
        ">.b<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/panorama/Panorama$a;",
        ">;>;",
        "Lcom/google/android/gms/panorama/Panorama$a;"
    }
.end annotation


# instance fields
.field public final Dl:Lcom/google/android/gms/common/api/Status;

.field public final Dm:Landroid/content/Intent;

.field final synthetic Dn:Lcom/google/android/gms/internal/hm;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hm;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;ILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/panorama/Panorama$a;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/hm$a;->Dn:Lcom/google/android/gms/internal/hm;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dw$b;-><init>(Lcom/google/android/gms/internal/dw;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/hm$a;->Dl:Lcom/google/android/gms/common/api/Status;

    iput p4, p0, Lcom/google/android/gms/internal/hm$a;->type:I

    iput-object p5, p0, Lcom/google/android/gms/internal/hm$a;->Dm:Landroid/content/Intent;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hm$a;->c(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method protected c(Lcom/google/android/gms/common/api/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/panorama/Panorama$a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hm$a;->Dl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getViewerIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hm$a;->Dm:Landroid/content/Intent;

    return-object v0
.end method

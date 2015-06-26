.class final Lcom/google/android/gms/internal/hm$c;
.super Lcom/google/android/gms/internal/dw$b;

# interfaces
.implements Lcom/google/android/gms/panorama/Panorama$PanoramaResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/hl;",
        ">.b<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/panorama/Panorama$PanoramaResult;",
        ">;>;",
        "Lcom/google/android/gms/panorama/Panorama$PanoramaResult;"
    }
.end annotation


# instance fields
.field private final Dl:Lcom/google/android/gms/common/api/Status;

.field private final Dm:Landroid/content/Intent;

.field final synthetic Dn:Lcom/google/android/gms/internal/hm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hm;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/panorama/Panorama$PanoramaResult;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/hm$c;->Dn:Lcom/google/android/gms/internal/hm;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dw$b;-><init>(Lcom/google/android/gms/internal/dw;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/hm$c;->Dl:Lcom/google/android/gms/common/api/Status;

    iput-object p4, p0, Lcom/google/android/gms/internal/hm$c;->Dm:Landroid/content/Intent;

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hm$c;->c(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method protected c(Lcom/google/android/gms/common/api/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/panorama/Panorama$PanoramaResult;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hm$c;->Dl:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getViewerIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hm$c;->Dm:Landroid/content/Intent;

    return-object v0
.end method

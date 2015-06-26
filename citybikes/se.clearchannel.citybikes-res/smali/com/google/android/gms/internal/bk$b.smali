.class final Lcom/google/android/gms/internal/bk$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final gE:Landroid/view/ViewGroup$LayoutParams;

.field public final gF:Landroid/view/ViewGroup;

.field public final index:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/bk$a;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cw;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bk$b;->gE:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/cw;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gms/internal/bk$b;->gF:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/internal/bk$b;->gF:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bk$b;->index:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bk$b;->gF:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/cw;->l(Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/bk$a;

    const-string v1, "Could not get the parent of the WebView for an overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bk$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

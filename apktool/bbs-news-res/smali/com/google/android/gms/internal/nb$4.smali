.class final Lcom/google/android/gms/internal/nb$4;
.super Lcom/google/android/gms/internal/mz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/nb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/na;Lcom/google/android/gms/internal/mz;Landroid/net/Uri;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic akn:Landroid/net/Uri;

.field final synthetic akq:Lcom/google/android/gms/internal/mz;

.field final synthetic mV:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/mz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nb$4;->mV:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/nb$4;->akn:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/nb$4;->akq:Lcom/google/android/gms/internal/mz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mz$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nb$4;->mV:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/nb$4;->akn:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/nb;->b(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nb$4;->akq:Lcom/google/android/gms/internal/mz;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/mz;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    return-void
.end method

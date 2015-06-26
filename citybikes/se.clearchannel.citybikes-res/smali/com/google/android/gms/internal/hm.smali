.class public Lcom/google/android/gms/internal/hm;
.super Lcom/google/android/gms/internal/dw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hm$b;,
        Lcom/google/android/gms/internal/hm$c;,
        Lcom/google/android/gms/internal/hm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/hl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/dw$c;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/dw$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    new-instance v1, Lcom/google/android/gms/internal/dw$g;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/dw$g;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/hm;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/dw;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/a$c;Landroid/net/Uri;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/panorama/Panorama$PanoramaResult;",
            ">;",
            "Landroid/net/Uri;",
            "Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/hm$b;

    if-eqz p3, :cond_0

    move-object v0, p2

    :goto_0
    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/hm$b;-><init>(Lcom/google/android/gms/internal/hm;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/a$c;Landroid/net/Uri;)V

    invoke-virtual {p0, v2, p2, v1, p3}, Lcom/google/android/gms/internal/hm;->a(Lcom/google/android/gms/internal/hm$b;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected a(Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/dw$e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x40ba50

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/ec;->a(Lcom/google/android/gms/internal/eb;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/hm$b;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hm;->bP()V

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hm;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hm;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hl;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/hl;->a(Lcom/google/android/gms/internal/hk;Landroid/net/Uri;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v3, v1, v3}, Lcom/google/android/gms/internal/hm$b;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected am()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.panorama.service.START"

    return-object v0
.end method

.method protected an()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.panorama.internal.IPanoramaService"

    return-object v0
.end method

.method public at(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hl;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/hl$a;->as(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hl;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hm;->at(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hl;

    move-result-object v0

    return-object v0
.end method

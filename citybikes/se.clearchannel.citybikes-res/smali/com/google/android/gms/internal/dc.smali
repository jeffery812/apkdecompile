.class public final Lcom/google/android/gms/internal/dc;
.super Lcom/google/android/gms/internal/dw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dc$h;,
        Lcom/google/android/gms/internal/dc$b;,
        Lcom/google/android/gms/internal/dc$d;,
        Lcom/google/android/gms/internal/dc$f;,
        Lcom/google/android/gms/internal/dc$g;,
        Lcom/google/android/gms/internal/dc$a;,
        Lcom/google/android/gms/internal/dc$c;,
        Lcom/google/android/gms/internal/dc$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/de;",
        ">;"
    }
.end annotation


# instance fields
.field private final jG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Lcom/google/android/gms/internal/dw$c;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/dw$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    new-instance v3, Lcom/google/android/gms/internal/dw$g;

    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/dw$g;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/dw;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    invoke-static {p4}, Lcom/google/android/gms/internal/eg;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/dc;->jG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dc;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/de;

    new-instance v1, Lcom/google/android/gms/internal/dc$c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dc$c;-><init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/dd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dc;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/de;

    new-instance v1, Lcom/google/android/gms/internal/dc$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dc$a;-><init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/de;->b(Lcom/google/android/gms/internal/dd;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dc;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/de;

    new-instance v1, Lcom/google/android/gms/internal/dc$e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dc$e;-><init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/dd;ILjava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I[B)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dc;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/de;

    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/dd;I[B)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/dc$e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/dc$e;-><init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/common/api/a$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected a(Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/dw$e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v2, 0x40ba50

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/dc;->jG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dc;->bO()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ec;->a(Lcom/google/android/gms/internal/eb;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    aget-object v4, p1, v0

    const-string v5, "https://www.googleapis.com/auth/appstate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "App State APIs requires %s to function."

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "https://www.googleapis.com/auth/appstate"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    return-void
.end method

.method protected am()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appstate.service.START"

    return-object v0
.end method

.method protected an()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.appstate.internal.IAppStateService"

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/a$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dc;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/de;

    new-instance v1, Lcom/google/android/gms/internal/dc$g;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dc$g;-><init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/de;->b(Lcom/google/android/gms/internal/dd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/common/api/a$c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dc;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/de;

    new-instance v1, Lcom/google/android/gms/internal/dc$e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/dc$e;-><init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/common/api/a$c;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/de;->a(Lcom/google/android/gms/internal/dd;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMaxNumKeys()I
    .locals 3

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dc;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/de;

    invoke-interface {v0}, Lcom/google/android/gms/internal/de;->getMaxNumKeys()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v2, "service died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public getMaxStateSize()I
    .locals 3

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dc;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/de;

    invoke-interface {v0}, Lcom/google/android/gms/internal/de;->getMaxStateSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "AppStateClient"

    const-string v2, "service died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method protected synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dc;->r(Landroid/os/IBinder;)Lcom/google/android/gms/internal/de;

    move-result-object v0

    return-object v0
.end method

.method protected r(Landroid/os/IBinder;)Lcom/google/android/gms/internal/de;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/de$a;->t(Landroid/os/IBinder;)Lcom/google/android/gms/internal/de;

    move-result-object v0

    return-object v0
.end method

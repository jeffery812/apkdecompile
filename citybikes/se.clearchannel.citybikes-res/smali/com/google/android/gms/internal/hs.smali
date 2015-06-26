.class public Lcom/google/android/gms/internal/hs;
.super Lcom/google/android/gms/internal/dw;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hs$e;,
        Lcom/google/android/gms/internal/hs$c;,
        Lcom/google/android/gms/internal/hs$a;,
        Lcom/google/android/gms/internal/hs$f;,
        Lcom/google/android/gms/internal/hs$d;,
        Lcom/google/android/gms/internal/hs$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/hr;",
        ">;",
        "Lcom/google/android/gms/common/GooglePlayServicesClient;"
    }
.end annotation


# instance fields
.field private DK:Lcom/google/android/gms/plus/model/people/Person;

.field private DL:Lcom/google/android/gms/internal/hu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Lcom/google/android/gms/internal/hu;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/dw$c;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/dw$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    new-instance v1, Lcom/google/android/gms/internal/dw$g;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/dw$g;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/google/android/gms/internal/hs;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/internal/hu;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/internal/hu;)V
    .locals 1

    invoke-virtual {p4}, Lcom/google/android/gms/internal/hu;->eR()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/dw;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/hs;->DL:Lcom/google/android/gms/internal/hu;

    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->g([B)Lcom/google/android/gms/internal/ig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hs;->DK:Lcom/google/android/gms/plus/model/people/Person;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/dw;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bP()V

    new-instance v1, Lcom/google/android/gms/internal/hs$c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/hs$c;-><init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/common/api/a$c;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hr;

    const/4 v2, 0x1

    const/4 v4, -0x1

    move v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hr;->a(Lcom/google/android/gms/internal/ho;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->empty(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/hs$c;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bP()V

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/hs$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/hs$a;-><init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/common/api/a$c;)V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hr;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/hr;->a(Lcom/google/android/gms/internal/ho;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    move-object v1, v7

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->empty(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/gms/internal/hs$a;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bP()V

    new-instance v1, Lcom/google/android/gms/internal/hs$c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/hs$c;-><init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/common/api/a$c;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hr;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/hr;->a(Lcom/google/android/gms/internal/ho;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->empty(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/hs$c;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/api/a$c;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/common/api/a$c;Ljava/util/Collection;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ec;Lcom/google/android/gms/internal/dw$e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "request_visible_actions"

    iget-object v1, p0, Lcom/google/android/gms/internal/hs;->DL:Lcom/google/android/gms/internal/hu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hu;->eS()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const v2, 0x40ba50

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->DL:Lcom/google/android/gms/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hu;->eV()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->DL:Lcom/google/android/gms/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hu;->eU()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bO()[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->DL:Lcom/google/android/gms/internal/hu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hu;->getAccountName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/ec;->a(Lcom/google/android/gms/internal/eb;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected am()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.service.START"

    return-object v0
.end method

.method protected an()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    return-object v0
.end method

.method protected ay(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hr;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/hr$a;->ax(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hr;

    move-result-object v0

    return-object v0
.end method

.method public az(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bO()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clearDefaultAccount()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bP()V

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/gms/internal/hs;->DK:Lcom/google/android/gms/plus/model/people/Person;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hr;->clearDefaultAccount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bP()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/hr;->getAccountName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bP()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hs;->DK:Lcom/google/android/gms/plus/model/people/Person;

    return-object v0
.end method

.method public i(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;)V

    return-void
.end method

.method public j(Lcom/google/android/gms/common/api/a$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v2, 0x14

    const-string v6, "me"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k(Lcom/google/android/gms/common/api/a$c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bP()V

    new-instance v1, Lcom/google/android/gms/internal/hs$c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/hs$c;-><init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/common/api/a$c;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hr;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hr;->a(Lcom/google/android/gms/internal/ho;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->empty(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/internal/hs$c;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public l(Lcom/google/android/gms/common/api/a$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bP()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->clearDefaultAccount()V

    new-instance v1, Lcom/google/android/gms/internal/hs$e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/hs$e;-><init>(Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/common/api/a$c;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hr;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hr;->b(Lcom/google/android/gms/internal/ho;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/hs$e;->b(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hs;->ay(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hr;

    move-result-object v0

    return-object v0
.end method

.method public removeMoment(Ljava/lang/String;)V
    .locals 2
    .parameter "momentId"

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bP()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/hr;->removeMoment(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeMoment(Lcom/google/android/gms/plus/model/moments/Moment;)V
    .locals 2
    .parameter "moment"

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bP()V

    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/id;

    .end local p1
    invoke-static {p1}, Lcom/google/android/gms/internal/ey;->a(Lcom/google/android/gms/internal/es;)Lcom/google/android/gms/internal/ey;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hs;->bQ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hr;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/hr;->a(Lcom/google/android/gms/internal/ey;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

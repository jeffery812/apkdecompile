.class public Lcom/google/android/gms/plus/PlusClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusClient$Builder;,
        Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;,
        Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;,
        Lcom/google/android/gms/plus/PlusClient$OrderBy;,
        Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final Du:Lcom/google/android/gms/internal/hs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hs;)V
    .locals 0
    .parameter "plusClientImpl"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    return-void
.end method


# virtual methods
.method public clearDefaultAccount()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->clearDefaultAccount()V

    return-void
.end method

.method public connect()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->disconnect()V

    return-void
.end method

.method eK()Lcom/google/android/gms/internal/hs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hs;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hs;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
    .locals 2
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    new-instance v1, Lcom/google/android/gms/plus/PlusClient$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$1;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hs;->j(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "listener"
    .parameter "maxResults"
    .parameter "pageToken"
    .parameter "targetUrl"
    .parameter "type"
    .parameter "userId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    new-instance v1, Lcom/google/android/gms/plus/PlusClient$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$2;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/util/Collection;)V
    .locals 2
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p2, personIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    new-instance v1, Lcom/google/android/gms/plus/PlusClient$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$5;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/common/api/a$c;Ljava/util/Collection;)V

    return-void
.end method

.method public varargs loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;[Ljava/lang/String;)V
    .locals 2
    .parameter "listener"
    .parameter "personIds"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    new-instance v1, Lcom/google/android/gms/plus/PlusClient$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$6;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/common/api/a$c;[Ljava/lang/String;)V

    return-void
.end method

.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;ILjava/lang/String;)V
    .locals 2
    .parameter "listener"
    .parameter "orderBy"
    .parameter "pageToken"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    new-instance v1, Lcom/google/android/gms/plus/PlusClient$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$3;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;)V

    return-void
.end method

.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/lang/String;)V
    .locals 2
    .parameter "listener"
    .parameter "pageToken"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    new-instance v1, Lcom/google/android/gms/plus/PlusClient$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$4;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/hs;->i(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hs;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hs;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public removeMoment(Ljava/lang/String;)V
    .locals 1
    .parameter "momentId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hs;->removeMoment(Ljava/lang/String;)V

    return-void
.end method

.method public revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
    .locals 2
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    new-instance v1, Lcom/google/android/gms/plus/PlusClient$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$7;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hs;->l(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hs;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hs;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public writeMoment(Lcom/google/android/gms/plus/model/moments/Moment;)V
    .locals 1
    .parameter "moment"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->Du:Lcom/google/android/gms/internal/hs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hs;->writeMoment(Lcom/google/android/gms/plus/model/moments/Moment;)V

    return-void
.end method

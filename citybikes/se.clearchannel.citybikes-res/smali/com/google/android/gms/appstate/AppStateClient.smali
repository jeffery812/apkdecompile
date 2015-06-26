.class public final Lcom/google/android/gms/appstate/AppStateClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/appstate/AppStateClient$a;,
        Lcom/google/android/gms/appstate/AppStateClient$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final STATUS_CLIENT_RECONNECT_REQUIRED:I = 0x2

.field public static final STATUS_DEVELOPER_ERROR:I = 0x7

.field public static final STATUS_INTERNAL_ERROR:I = 0x1

.field public static final STATUS_NETWORK_ERROR_NO_DATA:I = 0x4

.field public static final STATUS_NETWORK_ERROR_OPERATION_DEFERRED:I = 0x5

.field public static final STATUS_NETWORK_ERROR_OPERATION_FAILED:I = 0x6

.field public static final STATUS_NETWORK_ERROR_STALE_DATA:I = 0x3

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_STATE_KEY_LIMIT_EXCEEDED:I = 0x7d3

.field public static final STATUS_STATE_KEY_NOT_FOUND:I = 0x7d2

.field public static final STATUS_WRITE_OUT_OF_DATE_VERSION:I = 0x7d0

.field public static final STATUS_WRITE_SIZE_EXCEEDED:I = 0x7d1


# instance fields
.field private final jx:Lcom/google/android/gms/internal/dc;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "connectedListener"
    .parameter "connectionFailedListener"
    .parameter "accountName"
    .parameter "scopes"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/dc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/appstate/AppStateClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/appstate/AppStateClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dc;->connect()V

    return-void
.end method

.method public deleteState(Lcom/google/android/gms/appstate/OnStateDeletedListener;I)V
    .locals 2
    .parameter "listener"
    .parameter "stateKey"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    new-instance v1, Lcom/google/android/gms/appstate/AppStateClient$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/appstate/AppStateClient$1;-><init>(Lcom/google/android/gms/appstate/AppStateClient;Lcom/google/android/gms/appstate/OnStateDeletedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/dc;->a(Lcom/google/android/gms/common/api/a$c;I)V

    return-void
.end method

.method public disconnect()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dc;->disconnect()V

    return-void
.end method

.method public getMaxNumKeys()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dc;->getMaxNumKeys()I

    move-result v0

    return v0
.end method

.method public getMaxStateSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dc;->getMaxStateSize()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dc;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dc;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dc;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dc;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public listStates(Lcom/google/android/gms/appstate/OnStateListLoadedListener;)V
    .locals 2
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    new-instance v1, Lcom/google/android/gms/appstate/AppStateClient$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/appstate/AppStateClient$2;-><init>(Lcom/google/android/gms/appstate/AppStateClient;Lcom/google/android/gms/appstate/OnStateListLoadedListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dc;->a(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method public loadState(Lcom/google/android/gms/appstate/OnStateLoadedListener;I)V
    .locals 2
    .parameter "listener"
    .parameter "stateKey"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    new-instance v1, Lcom/google/android/gms/appstate/AppStateClient$a;

    invoke-direct {v1, p1}, Lcom/google/android/gms/appstate/AppStateClient$a;-><init>(Lcom/google/android/gms/appstate/OnStateLoadedListener;)V

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/dc;->b(Lcom/google/android/gms/common/api/a$c;I)V

    return-void
.end method

.method public reconnect()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dc;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dc;->connect()V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dc;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dc;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public resolveState(Lcom/google/android/gms/appstate/OnStateLoadedListener;ILjava/lang/String;[B)V
    .locals 2
    .parameter "listener"
    .parameter "stateKey"
    .parameter "resolvedVersion"
    .parameter "resolvedData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    new-instance v1, Lcom/google/android/gms/appstate/AppStateClient$a;

    invoke-direct {v1, p1}, Lcom/google/android/gms/appstate/AppStateClient$a;-><init>(Lcom/google/android/gms/appstate/OnStateLoadedListener;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/dc;->a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;[B)V

    return-void
.end method

.method public signOut()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    new-instance v1, Lcom/google/android/gms/appstate/AppStateClient$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/appstate/AppStateClient$3;-><init>(Lcom/google/android/gms/appstate/AppStateClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dc;->b(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method public signOut(Lcom/google/android/gms/appstate/OnSignOutCompleteListener;)V
    .locals 2
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v0, "Must provide a valid listener"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    new-instance v1, Lcom/google/android/gms/appstate/AppStateClient$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/appstate/AppStateClient$4;-><init>(Lcom/google/android/gms/appstate/AppStateClient;Lcom/google/android/gms/appstate/OnSignOutCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dc;->b(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dc;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dc;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public updateState(I[B)V
    .locals 3
    .parameter "stateKey"
    .parameter "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    new-instance v1, Lcom/google/android/gms/appstate/AppStateClient$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/appstate/AppStateClient$a;-><init>(Lcom/google/android/gms/appstate/OnStateLoadedListener;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/dc;->a(Lcom/google/android/gms/common/api/a$c;I[B)V

    return-void
.end method

.method public updateStateImmediate(Lcom/google/android/gms/appstate/OnStateLoadedListener;I[B)V
    .locals 2
    .parameter "listener"
    .parameter "stateKey"
    .parameter "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-string v0, "Must provide a valid listener"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient;->jx:Lcom/google/android/gms/internal/dc;

    new-instance v1, Lcom/google/android/gms/appstate/AppStateClient$a;

    invoke-direct {v1, p1}, Lcom/google/android/gms/appstate/AppStateClient$a;-><init>(Lcom/google/android/gms/appstate/OnStateLoadedListener;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/dc;->a(Lcom/google/android/gms/common/api/a$c;I[B)V

    return-void
.end method

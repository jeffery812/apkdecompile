.class final Lcom/google/android/gms/appstate/AppStateClient$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appstate/AppStateClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final jH:Lcom/google/android/gms/appstate/OnStateLoadedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appstate/OnStateLoadedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateClient$a;->jH:Lcom/google/android/gms/appstate/OnStateLoadedListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appstate/AppStateManager$StateResult;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient$a;->jH:Lcom/google/android/gms/appstate/OnStateLoadedListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateResult;->getConflictResult()Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ds;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/appstate/AppStateClient$a;->jH:Lcom/google/android/gms/appstate/OnStateLoadedListener;

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getStateKey()I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getResolvedVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getLocalData()[B

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;->getServerData()[B

    move-result-object v0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/gms/appstate/OnStateLoadedListener;->onStateConflict(ILjava/lang/String;[B[B)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateResult;->getLoadedResult()Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ds;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/appstate/AppStateClient$a;->jH:Lcom/google/android/gms/appstate/OnStateLoadedListener;

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getStateKey()I

    move-result v3

    invoke-interface {v0}, Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;->getLocalData()[B

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/appstate/OnStateLoadedListener;->onStateLoaded(II[B)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/appstate/AppStateManager$StateResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateClient$a;->a(Lcom/google/android/gms/appstate/AppStateManager$StateResult;)V

    return-void
.end method

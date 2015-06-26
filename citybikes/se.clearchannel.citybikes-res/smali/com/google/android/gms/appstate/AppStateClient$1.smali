.class Lcom/google/android/gms/appstate/AppStateClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateClient;->deleteState(Lcom/google/android/gms/appstate/OnStateDeletedListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic jy:Lcom/google/android/gms/appstate/OnStateDeletedListener;

.field final synthetic jz:Lcom/google/android/gms/appstate/AppStateClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appstate/AppStateClient;Lcom/google/android/gms/appstate/OnStateDeletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateClient$1;->jz:Lcom/google/android/gms/appstate/AppStateClient;

    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateClient$1;->jy:Lcom/google/android/gms/appstate/OnStateDeletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateClient$1;->jy:Lcom/google/android/gms/appstate/OnStateDeletedListener;

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;->getStateKey()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/appstate/OnStateDeletedListener;->onStateDeleted(II)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateClient$1;->a(Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;)V

    return-void
.end method

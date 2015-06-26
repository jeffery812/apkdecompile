.class public final Lcom/google/android/gms/internal/fv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/Invitations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fv$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInvitationInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .locals 1
    .parameter "apiClient"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fl;->getInvitationInboxIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public loadInvitations(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fv$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fv$1;-><init>(Lcom/google/android/gms/internal/fv;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public registerInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
    .locals 1
    .parameter "apiClient"
    .parameter "listener"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fl;->registerInvitationListener(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    return-void
.end method

.method public unregisterInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1
    .parameter "apiClient"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fl;->unregisterInvitationListener()V

    return-void
.end method

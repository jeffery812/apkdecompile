.class final Lcom/google/android/gms/internal/fl$m;
.super Lcom/google/android/gms/internal/dw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/fp;",
        ">.b<",
        "Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic tZ:Lcom/google/android/gms/internal/fl;

.field private final ue:Lcom/google/android/gms/games/multiplayer/Invitation;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;Lcom/google/android/gms/games/multiplayer/Invitation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$m;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dw$b;-><init>(Lcom/google/android/gms/internal/dw;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/fl$m;->ue:Lcom/google/android/gms/games/multiplayer/Invitation;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$m;->ue:Lcom/google/android/gms/games/multiplayer/Invitation;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;->onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V

    return-void
.end method

.method protected aL()V
    .locals 0

    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fl$m;->a(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    return-void
.end method

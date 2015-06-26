.class Lcom/google/android/gms/games/GamesClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/GamesClient;->loadPlayer(Lcom/google/android/gms/games/OnPlayersLoadedListener;Ljava/lang/String;)V
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
        "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic tf:Lcom/google/android/gms/games/OnPlayersLoadedListener;

.field final synthetic tg:Lcom/google/android/gms/games/GamesClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/GamesClient;Lcom/google/android/gms/games/OnPlayersLoadedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/GamesClient$1;->tg:Lcom/google/android/gms/games/GamesClient;

    iput-object p2, p0, Lcom/google/android/gms/games/GamesClient$1;->tf:Lcom/google/android/gms/games/OnPlayersLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient$1;->tf:Lcom/google/android/gms/games/OnPlayersLoadedListener;

    invoke-interface {p1}, Lcom/google/android/gms/games/Players$LoadPlayersResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v1

    invoke-interface {p1}, Lcom/google/android/gms/games/Players$LoadPlayersResult;->getPlayers()Lcom/google/android/gms/games/PlayerBuffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/OnPlayersLoadedListener;->onPlayersLoaded(ILcom/google/android/gms/games/PlayerBuffer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/Players$LoadPlayersResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GamesClient$1;->a(Lcom/google/android/gms/games/Players$LoadPlayersResult;)V

    return-void
.end method

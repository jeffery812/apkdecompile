.class final Lcom/google/android/gms/internal/fl$k;
.super Lcom/google/android/gms/internal/fl$ao;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/fl$ao",
        "<",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
        ">;>;",
        "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;"
    }
.end annotation


# instance fields
.field final synthetic tZ:Lcom/google/android/gms/internal/fl;

.field private final uc:Lcom/google/android/gms/games/GameBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$k;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fl$ao;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Lcom/google/android/gms/games/GameBuffer;

    invoke-direct {v0, p3}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fl$k;->uc:Lcom/google/android/gms/games/GameBuffer;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/a$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fl$k;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public getGames()Lcom/google/android/gms/games/GameBuffer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$k;->uc:Lcom/google/android/gms/games/GameBuffer;

    return-object v0
.end method

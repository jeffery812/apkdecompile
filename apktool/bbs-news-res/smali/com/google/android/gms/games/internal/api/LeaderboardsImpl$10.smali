.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadScoresImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XU:Z

.field final synthetic XX:Ljava/lang/String;

.field final synthetic YA:I

.field final synthetic YB:I

.field final synthetic YC:I

.field final synthetic Yz:Ljava/lang/String;


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 8

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->XX:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->Yz:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->YA:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->YB:I

    iget v6, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->YC:I

    iget-boolean v7, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$10;->XU:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method

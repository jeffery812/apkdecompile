.class Lcom/google/android/gms/games/internal/api/RequestsImpl$7;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/RequestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XX:Ljava/lang/String;

.field final synthetic Yu:I

.field final synthetic Zk:Ljava/lang/String;

.field final synthetic Zq:I

.field final synthetic Zr:I


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->XX:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->Zk:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->Zq:I

    iget v5, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->Zr:I

    iget v6, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$7;->Yu:I

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/fl$v;
.super Lcom/google/android/gms/internal/dw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/fp;",
        ">.b<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mC:I

.field final synthetic tZ:Lcom/google/android/gms/internal/fl;

.field private final uk:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$v;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dw$b;-><init>(Lcom/google/android/gms/internal/dw;Ljava/lang/Object;)V

    iput p3, p0, Lcom/google/android/gms/internal/fl$v;->mC:I

    iput-object p4, p0, Lcom/google/android/gms/internal/fl$v;->uk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/fl$v;->mC:I

    iget-object v1, p0, Lcom/google/android/gms/internal/fl$v;->uk:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;->onLeftRoom(ILjava/lang/String;)V

    return-void
.end method

.method protected aL()V
    .locals 0

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fl$v;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V

    return-void
.end method

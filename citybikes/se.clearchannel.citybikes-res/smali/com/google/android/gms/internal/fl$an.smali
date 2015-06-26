.class final Lcom/google/android/gms/internal/fl$an;
.super Lcom/google/android/gms/internal/fk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "an"
.end annotation


# instance fields
.field final synthetic tZ:Lcom/google/android/gms/internal/fl;

.field final uu:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$an;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fk;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/fl$an;->uu:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    return-void
.end method


# virtual methods
.method public b(IILjava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/internal/fl$an;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v0, Lcom/google/android/gms/internal/fl$am;

    iget-object v1, p0, Lcom/google/android/gms/internal/fl$an;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$an;->uu:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fl$am;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

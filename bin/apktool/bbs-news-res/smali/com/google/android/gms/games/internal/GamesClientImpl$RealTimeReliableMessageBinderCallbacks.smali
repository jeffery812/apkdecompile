.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RealTimeReliableMessageBinderCallbacks"
.end annotation


# instance fields
.field final synthetic Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field final Xo:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V
    .locals 0
    .parameter
    .parameter "messageSentCallbacks"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->Xo:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    return-void
.end method


# virtual methods
.method public b(IILjava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentCallback;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;->Xo:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;IILjava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/internal/d$b;)V

    return-void
.end method

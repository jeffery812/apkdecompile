.class Lcom/google/android/gms/games/GamesClient$29;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/GamesClient;->sendReliableRealTimeMessage(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeReliableMessageSentListener;[BLjava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tg:Lcom/google/android/gms/games/GamesClient;

.field final synthetic tr:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeReliableMessageSentListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/GamesClient;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeReliableMessageSentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/GamesClient$29;->tg:Lcom/google/android/gms/games/GamesClient;

    iput-object p2, p0, Lcom/google/android/gms/games/GamesClient$29;->tr:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeReliableMessageSentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRealTimeMessageSent(IILjava/lang/String;)V
    .locals 1
    .parameter "statusCode"
    .parameter "tokenId"
    .parameter "recipientParticipantId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient$29;->tr:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeReliableMessageSentListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeReliableMessageSentListener;->onRealTimeMessageSent(IILjava/lang/String;)V

    return-void
.end method

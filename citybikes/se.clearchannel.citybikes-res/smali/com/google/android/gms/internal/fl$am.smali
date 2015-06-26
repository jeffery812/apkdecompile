.class final Lcom/google/android/gms/internal/fl$am;
.super Lcom/google/android/gms/internal/dw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "am"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/dw",
        "<",
        "Lcom/google/android/gms/internal/fp;",
        ">.b<",
        "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mC:I

.field final synthetic tZ:Lcom/google/android/gms/internal/fl;

.field private final us:Ljava/lang/String;

.field private final ut:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$am;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dw$b;-><init>(Lcom/google/android/gms/internal/dw;Ljava/lang/Object;)V

    iput p3, p0, Lcom/google/android/gms/internal/fl$am;->mC:I

    iput p4, p0, Lcom/google/android/gms/internal/fl$am;->ut:I

    iput-object p5, p0, Lcom/google/android/gms/internal/fl$am;->us:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/fl$am;->mC:I

    iget v1, p0, Lcom/google/android/gms/internal/fl$am;->ut:I

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$am;->us:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;->onRealTimeMessageSent(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected aL()V
    .locals 0

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fl$am;->a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V

    return-void
.end method

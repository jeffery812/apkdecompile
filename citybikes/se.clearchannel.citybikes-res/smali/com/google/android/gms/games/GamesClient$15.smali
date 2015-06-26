.class Lcom/google/android/gms/games/GamesClient$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/GamesClient;->signOut(Lcom/google/android/gms/games/OnSignOutCompleteListener;)V
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
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic tg:Lcom/google/android/gms/games/GamesClient;

.field final synthetic tm:Lcom/google/android/gms/games/OnSignOutCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/GamesClient;Lcom/google/android/gms/games/OnSignOutCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/GamesClient$15;->tg:Lcom/google/android/gms/games/GamesClient;

    iput-object p2, p0, Lcom/google/android/gms/games/GamesClient$15;->tm:Lcom/google/android/gms/games/OnSignOutCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/GamesClient$15;->tm:Lcom/google/android/gms/games/OnSignOutCompleteListener;

    invoke-interface {v0}, Lcom/google/android/gms/games/OnSignOutCompleteListener;->onSignOutComplete()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GamesClient$15;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.class Lcom/google/android/gms/internal/gb$6;
.super Lcom/google/android/gms/internal/gb$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gb;->finishMatch(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vq:Lcom/google/android/gms/internal/gb;

.field final synthetic vr:Ljava/lang/String;

.field final synthetic vt:[B

.field final synthetic vv:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gb;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gb$6;->vq:Lcom/google/android/gms/internal/gb;

    iput-object p2, p0, Lcom/google/android/gms/internal/gb$6;->vr:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gb$6;->vt:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/gb$6;->vv:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gb$f;-><init>(Lcom/google/android/gms/internal/gb$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gb$6;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gb$6;->vr:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/gb$6;->vt:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/gb$6;->vv:[Lcom/google/android/gms/games/multiplayer/ParticipantResult;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V

    return-void
.end method

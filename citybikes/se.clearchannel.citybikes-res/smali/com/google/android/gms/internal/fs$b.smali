.class abstract Lcom/google/android/gms/internal/fs$b;
.super Lcom/google/android/gms/games/Games$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$a",
        "<",
        "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final uS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fs$b;->uS:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fs$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs$b;->uS:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public synthetic e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fs$b;->u(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;

    move-result-object v0

    return-object v0
.end method

.method public u(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fs$b$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/fs$b$1;-><init>(Lcom/google/android/gms/internal/fs$b;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

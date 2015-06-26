.class final Lcom/google/android/gms/internal/fl$d;
.super Lcom/google/android/gms/internal/fk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field private final jW:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic tZ:Lcom/google/android/gms/internal/fl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$d;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fk;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    iput-object v0, p0, Lcom/google/android/gms/internal/fl$d;->jW:Lcom/google/android/gms/common/api/a$c;

    return-void
.end method


# virtual methods
.method public onAchievementUpdated(ILjava/lang/String;)V
    .locals 4
    .parameter "statusCode"
    .parameter "achievementId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/fl$d;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$e;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$d;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$d;->jW:Lcom/google/android/gms/common/api/a$c;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/fl$e;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

.class final Lcom/google/android/gms/internal/fl$f;
.super Lcom/google/android/gms/internal/fk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field private final jW:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
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
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/fl$f;->tZ:Lcom/google/android/gms/internal/fl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fk;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    iput-object v0, p0, Lcom/google/android/gms/internal/fl$f;->jW:Lcom/google/android/gms/common/api/a$c;

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fl$f;->tZ:Lcom/google/android/gms/internal/fl;

    new-instance v1, Lcom/google/android/gms/internal/fl$g;

    iget-object v2, p0, Lcom/google/android/gms/internal/fl$f;->tZ:Lcom/google/android/gms/internal/fl;

    iget-object v3, p0, Lcom/google/android/gms/internal/fl$f;->jW:Lcom/google/android/gms/common/api/a$c;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fl$g;-><init>(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/dw$b;)V

    return-void
.end method

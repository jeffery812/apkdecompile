.class Lcom/google/android/gms/internal/fs$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fs$b;->u(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jP:Lcom/google/android/gms/common/api/Status;

.field final synthetic uT:Lcom/google/android/gms/internal/fs$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fs$b;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fs$b$1;->uT:Lcom/google/android/gms/internal/fs$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/fs$b$1;->jP:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAchievementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs$b$1;->uT:Lcom/google/android/gms/internal/fs$b;

    invoke-static {v0}, Lcom/google/android/gms/internal/fs$b;->a(Lcom/google/android/gms/internal/fs$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fs$b$1;->jP:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

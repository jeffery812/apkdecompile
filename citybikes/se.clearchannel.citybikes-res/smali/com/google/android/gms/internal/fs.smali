.class public final Lcom/google/android/gms/internal/fs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fs$b;,
        Lcom/google/android/gms/internal/fs$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .locals 1
    .parameter "apiClient"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fl;->getAchievementsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 1
    .parameter "apiClient"
    .parameter "id"
    .parameter "numSteps"

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fs$6;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/internal/fs$6;-><init>(Lcom/google/android/gms/internal/fs;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public incrementImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "id"
    .parameter "numSteps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fs$7;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/internal/fs$7;-><init>(Lcom/google/android/gms/internal/fs;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "forceReload"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fs$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/fs$1;-><init>(Lcom/google/android/gms/internal/fs;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public reveal(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1
    .parameter "apiClient"
    .parameter "id"

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fs$2;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/internal/fs$2;-><init>(Lcom/google/android/gms/internal/fs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public revealImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fs$3;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/internal/fs$3;-><init>(Lcom/google/android/gms/internal/fs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public setSteps(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    .locals 1
    .parameter "apiClient"
    .parameter "id"
    .parameter "numSteps"

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fs$8;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/internal/fs$8;-><init>(Lcom/google/android/gms/internal/fs;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public setStepsImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "id"
    .parameter "numSteps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fs$9;

    invoke-direct {v0, p0, p2, p2, p3}, Lcom/google/android/gms/internal/fs$9;-><init>(Lcom/google/android/gms/internal/fs;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 1
    .parameter "apiClient"
    .parameter "id"

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fs$4;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/internal/fs$4;-><init>(Lcom/google/android/gms/internal/fs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public unlockImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "apiClient"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fs$5;

    invoke-direct {v0, p0, p2, p2}, Lcom/google/android/gms/internal/fs$5;-><init>(Lcom/google/android/gms/internal/fs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

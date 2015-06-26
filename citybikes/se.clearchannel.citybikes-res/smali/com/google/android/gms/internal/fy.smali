.class public final Lcom/google/android/gms/internal/fy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Notifications;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 1
    .parameter "apiClient"
    .parameter "notificationTypes"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->j(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fl;->clearNotifications(I)V

    return-void
.end method

.method public clearAll(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1
    .parameter "apiClient"

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fy;->clear(Lcom/google/android/gms/common/api/GoogleApiClient;I)V

    return-void
.end method

.class Lcom/google/android/gms/internal/lu$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/lu$2;->a(Lcom/google/android/gms/internal/ly;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aeD:Lcom/google/android/gms/internal/lu$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/lu$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lu$2$1;->aeD:Lcom/google/android/gms/internal/lu$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
    .locals 2
    .parameter "statusCode"
    .parameter "pendingIntent"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/lu$2$1;->aeD:Lcom/google/android/gms/internal/lu$2;

    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->ef(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/lu$2;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
    .locals 2
    .parameter "statusCode"
    .parameter "geofenceRequestIds"

    .prologue
    const-string v0, "GeofencingImpl"

    const-string v1, "Request ID callback shouldn\'t have been called"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

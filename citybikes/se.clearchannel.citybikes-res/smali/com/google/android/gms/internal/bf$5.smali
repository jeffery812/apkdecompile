.class Lcom/google/android/gms/internal/bf$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bf;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gj:Lcom/google/android/gms/internal/bf;

.field final synthetic gk:Lcom/google/ads/AdRequest$ErrorCode;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bf;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bf$5;->gj:Lcom/google/android/gms/internal/bf;

    iput-object p2, p0, Lcom/google/android/gms/internal/bf$5;->gk:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bf$5;->gj:Lcom/google/android/gms/internal/bf;

    invoke-static {v0}, Lcom/google/android/gms/internal/bf;->a(Lcom/google/android/gms/internal/bf;)Lcom/google/android/gms/internal/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/bf$5;->gk:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-static {v1}, Lcom/google/android/gms/internal/bg;->a(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bd;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdFailedToLoad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ct;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

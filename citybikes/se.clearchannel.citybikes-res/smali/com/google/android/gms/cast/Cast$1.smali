.class final Lcom/google/android/gms/cast/Cast$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$b",
        "<",
        "Lcom/google/android/gms/internal/dg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/cast/Cast$1;->c(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/dg;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/dg;
    .locals 8

    const-string v0, "Setting the API options is required."

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p3, Lcom/google/android/gms/cast/Cast$CastOptions;

    const-string v1, "Must provide valid CastOptions!"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->b(ZLjava/lang/Object;)V

    check-cast p3, Lcom/google/android/gms/cast/Cast$CastOptions;

    new-instance v0, Lcom/google/android/gms/internal/dg;

    iget-object v2, p3, Lcom/google/android/gms/cast/Cast$CastOptions;->ks:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {p3}, Lcom/google/android/gms/cast/Cast$CastOptions;->a(Lcom/google/android/gms/cast/Cast$CastOptions;)I

    move-result v1

    int-to-long v3, v1

    iget-object v5, p3, Lcom/google/android/gms/cast/Cast$CastOptions;->kt:Lcom/google/android/gms/cast/Cast$Listener;

    move-object v1, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/dg;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

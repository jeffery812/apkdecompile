.class final Lcom/google/android/gms/plus/Plus$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/Plus;
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
        "Lcom/google/android/gms/internal/hs;",
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

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/plus/Plus$1;->g(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/hs;
    .locals 9

    const/4 v7, 0x0

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/gms/plus/Plus$PlusOptions;

    invoke-direct {v0, v7}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$1;)V

    if-eqz p3, :cond_0

    instance-of v0, p3, Lcom/google/android/gms/plus/Plus$PlusOptions;

    const-string v1, "Must provide valid PlusOptions!"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eg;->b(ZLjava/lang/Object;)V

    check-cast p3, Lcom/google/android/gms/plus/Plus$PlusOptions;

    :goto_0
    new-instance v8, Lcom/google/android/gms/internal/hs;

    new-instance v0, Lcom/google/android/gms/internal/hu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/dt;->bF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/dt;->bI()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p3, Lcom/google/android/gms/plus/Plus$PlusOptions;->Dt:Ljava/util/Set;

    new-array v4, v5, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/hu;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, p1, p4, p5, v0}, Lcom/google/android/gms/internal/hs;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/internal/hu;)V

    return-object v8

    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

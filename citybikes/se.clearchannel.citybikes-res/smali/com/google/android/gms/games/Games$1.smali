.class final Lcom/google/android/gms/games/Games$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
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
        "Lcom/google/android/gms/internal/fl;",
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

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/games/Games$1;->e(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/fl;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/fl;
    .locals 14

    new-instance v1, Lcom/google/android/gms/games/Games$GamesOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$1;)V

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    instance-of v1, v0, Lcom/google/android/gms/games/Games$GamesOptions;

    const-string v2, "Must provide valid GamesOptions!"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/eg;->b(ZLjava/lang/Object;)V

    check-cast p3, Lcom/google/android/gms/games/Games$GamesOptions;

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/fl;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/dt;->bJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/dt;->bF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/dt;->bI()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/dt;->bG()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/dt;->bK()Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p3

    iget-boolean v10, v0, Lcom/google/android/gms/games/Games$GamesOptions;->ta:Z

    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/google/android/gms/games/Games$GamesOptions;->tb:Z

    move-object/from16 v0, p3

    iget v12, v0, Lcom/google/android/gms/games/Games$GamesOptions;->tc:I

    move-object/from16 v0, p3

    iget v13, v0, Lcom/google/android/gms/games/Games$GamesOptions;->td:I

    move-object v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/fl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;ZZII)V

    return-object v1

    :cond_0
    move-object/from16 p3, v1

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

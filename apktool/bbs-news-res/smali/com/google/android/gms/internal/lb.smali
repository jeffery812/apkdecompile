.class public Lcom/google/android/gms/internal/lb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/fitness/SensorsApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lb$c;,
        Lcom/google/android/gms/internal/lb$b;,
        Lcom/google/android/gms/internal/lb$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/n;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/n;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/lb$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/lb$2;-><init>(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/fitness/request/n;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/p;Lcom/google/android/gms/fitness/request/DataSourceListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/p;",
            "Lcom/google/android/gms/fitness/request/DataSourceListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/lb$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/android/gms/internal/lb$3;-><init>(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/fitness/request/DataSourceListener;Lcom/google/android/gms/fitness/request/p;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public findDataSources(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataSourcesRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/DataSourcesRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/fitness/result/DataSourcesResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/lb$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/lb$1;-><init>(Lcom/google/android/gms/internal/lb;Lcom/google/android/gms/fitness/request/DataSourcesRequest;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public register(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SensorRequest;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "client"
    .parameter "request"
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/SensorRequest;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/n;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p3}, Lcom/google/android/gms/fitness/request/n;-><init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/k;Landroid/app/PendingIntent;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/lb;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/n;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public register(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/request/DataSourceListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .parameter "client"
    .parameter "request"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/SensorRequest;",
            "Lcom/google/android/gms/fitness/request/DataSourceListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/fitness/data/l$a;->iO()Lcom/google/android/gms/fitness/data/l$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/fitness/data/l$a;->a(Lcom/google/android/gms/fitness/request/DataSourceListener;)Lcom/google/android/gms/fitness/data/l;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/fitness/request/n;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v0, v2}, Lcom/google/android/gms/fitness/request/n;-><init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/k;Landroid/app/PendingIntent;)V

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/lb;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/n;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "client"
    .parameter "pendingIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/app/PendingIntent;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/fitness/request/p;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/fitness/request/p;-><init>(Lcom/google/android/gms/fitness/data/k;Landroid/app/PendingIntent;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/lb;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/p;Lcom/google/android/gms/fitness/request/DataSourceListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataSourceListener;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .parameter "client"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/DataSourceListener;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/fitness/data/l$a;->iO()Lcom/google/android/gms/fitness/data/l$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/data/l$a;->b(Lcom/google/android/gms/fitness/request/DataSourceListener;)Lcom/google/android/gms/fitness/data/l;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/kt;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->Jo:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/kt;-><init>(Lcom/google/android/gms/common/api/Result;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/fitness/request/p;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/fitness/request/p;-><init>(Lcom/google/android/gms/fitness/data/k;Landroid/app/PendingIntent;)V

    invoke-direct {p0, p1, v1, p2}, Lcom/google/android/gms/internal/lb;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/p;Lcom/google/android/gms/fitness/request/DataSourceListener;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0
.end method

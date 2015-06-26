.class public Lcom/google/android/gms/internal/la;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/fitness/RecordingApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/la$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/ae;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/ae;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/la$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/la$2;-><init>(Lcom/google/android/gms/internal/la;Lcom/google/android/gms/fitness/request/ae;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/ah;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/ah;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/la$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/la$3;-><init>(Lcom/google/android/gms/internal/la;Lcom/google/android/gms/fitness/request/ah;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/l;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/l;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/la$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/la$1;-><init>(Lcom/google/android/gms/internal/la;Lcom/google/android/gms/fitness/request/l;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "client"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/l$a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/l$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/l$a;->jk()Lcom/google/android/gms/fitness/request/l;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/la;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/l;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public listSubscriptions(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "client"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/fitness/result/ListSubscriptionsResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/l$a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/l$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/request/l$a;->c(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/l$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/l$a;->jk()Lcom/google/android/gms/fitness/request/l;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/la;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/l;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "client"
    .parameter "dataSource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/ae$a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/ae$a;-><init>()V

    new-instance v1, Lcom/google/android/gms/fitness/data/Subscription$a;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/data/Subscription$a;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/fitness/data/Subscription$a;->b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/Subscription$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription$a;->iR()Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/request/ae$a;->b(Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/fitness/request/ae$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/ae$a;->jD()Lcom/google/android/gms/fitness/request/ae;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/la;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/ae;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "client"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/ae$a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/ae$a;-><init>()V

    new-instance v1, Lcom/google/android/gms/fitness/data/Subscription$a;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/data/Subscription$a;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/fitness/data/Subscription$a;->b(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/Subscription$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription$a;->iR()Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/request/ae$a;->b(Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/fitness/request/ae$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/ae$a;->jD()Lcom/google/android/gms/fitness/request/ae;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/la;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/ae;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "client"
    .parameter "dataSource"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/ah$a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/ah$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/request/ah$a;->d(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/request/ah$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/ah$a;->jE()Lcom/google/android/gms/fitness/request/ah;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/la;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/ah;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "client"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/ah$a;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/ah$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/request/ah$a;->d(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/request/ah$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/ah$a;->jE()Lcom/google/android/gms/fitness/request/ah;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/la;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/ah;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/Subscription;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "client"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/Subscription;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/Subscription;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/Subscription;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/la;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/fitness/data/Subscription;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/la;->unsubscribe(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    goto :goto_0
.end method

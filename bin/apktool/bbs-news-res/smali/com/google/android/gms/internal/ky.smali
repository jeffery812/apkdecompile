.class public Lcom/google/android/gms/internal/ky;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/fitness/HistoryApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ky$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataDeleteRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/DataDeleteRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/ky$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ky$2;-><init>(Lcom/google/android/gms/internal/ky;Lcom/google/android/gms/fitness/request/DataDeleteRequest;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataInsertRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/DataInsertRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/ky$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ky$1;-><init>(Lcom/google/android/gms/internal/ky;Lcom/google/android/gms/fitness/request/DataInsertRequest;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public insertData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "client"
    .parameter "dataSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/data/DataSet;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/fitness/request/DataInsertRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/DataInsertRequest$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/fitness/request/DataInsertRequest$Builder;->setDataSet(Lcom/google/android/gms/fitness/data/DataSet;)Lcom/google/android/gms/fitness/request/DataInsertRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/request/DataInsertRequest$Builder;->build()Lcom/google/android/gms/fitness/request/DataInsertRequest;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ky;->insert(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataInsertRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public readData(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/fitness/request/DataReadRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/fitness/request/DataReadRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/fitness/result/DataReadResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/ky$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ky$3;-><init>(Lcom/google/android/gms/internal/ky;Lcom/google/android/gms/fitness/request/DataReadRequest;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

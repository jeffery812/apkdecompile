.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestSummariesLoadedBinderCallbacks"
.end annotation


# instance fields
.field final synthetic Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final Xt:Lcom/google/android/gms/common/api/BaseImplementation$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/BaseImplementation$b;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/BaseImplementation$b",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, resultHolder:Lcom/google/android/gms/common/api/BaseImplementation$b;,"Lcom/google/android/gms/common/api/BaseImplementation$b<Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;>;"
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;->Wr:Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    const-string v0, "Holder must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/BaseImplementation$b;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;->Xt:Lcom/google/android/gms/common/api/BaseImplementation$b;

    return-void
.end method


# virtual methods
.method public H(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;->Xt:Lcom/google/android/gms/common/api/BaseImplementation$b;

    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestSummariesResultImpl;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestSummariesResultImpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/BaseImplementation$b;->b(Ljava/lang/Object;)V

    return-void
.end method
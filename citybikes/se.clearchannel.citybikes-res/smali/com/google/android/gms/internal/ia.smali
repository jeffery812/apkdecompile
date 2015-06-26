.class public final Lcom/google/android/gms/internal/ia;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/People;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ia$a;
    }
.end annotation


# instance fields
.field private final Ea:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/hs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/hs;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ia;->Ea:Lcom/google/android/gms/common/api/Api$b;

    return-void
.end method


# virtual methods
.method public getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;
    .locals 1
    .parameter "googleApiClient"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->Ea:Lcom/google/android/gms/common/api/Api$b;

    invoke-static {p1, v0}, Lcom/google/android/gms/plus/Plus;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hs;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "googleApiClient"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, personIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/gms/internal/ia$4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ia;->Ea:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/ia$4;-><init>(Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/common/api/Api$b;Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public varargs load(Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "googleApiClient"
    .parameter "personIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/ia$5;

    iget-object v1, p0, Lcom/google/android/gms/internal/ia;->Ea:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/ia$5;-><init>(Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/common/api/Api$b;[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public loadConnected(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "googleApiClient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/ia$3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ia;->Ea:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ia$3;-><init>(Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/common/api/Api$b;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "googleApiClient"
    .parameter "orderBy"
    .parameter "pageToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/ia$1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ia;->Ea:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/google/android/gms/internal/ia$1;-><init>(Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/common/api/Api$b;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "googleApiClient"
    .parameter "pageToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/ia$2;

    iget-object v1, p0, Lcom/google/android/gms/internal/ia;->Ea:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/ia$2;-><init>(Lcom/google/android/gms/internal/ia;Lcom/google/android/gms/common/api/Api$b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

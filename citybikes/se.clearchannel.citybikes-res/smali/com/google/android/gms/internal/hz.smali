.class public final Lcom/google/android/gms/internal/hz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/Moments;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hz$b;,
        Lcom/google/android/gms/internal/hz$c;,
        Lcom/google/android/gms/internal/hz$a;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/hz;->Ea:Lcom/google/android/gms/common/api/Api$b;

    return-void
.end method


# virtual methods
.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "googleApiClient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/hz$1;

    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->Ea:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/hz$1;-><init>(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/common/api/Api$b;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 8
    .parameter "googleApiClient"
    .parameter "maxResults"
    .parameter "pageToken"
    .parameter "targetUrl"
    .parameter "type"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/hz$2;

    iget-object v2, p0, Lcom/google/android/gms/internal/hz;->Ea:Lcom/google/android/gms/common/api/Api$b;

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/hz$2;-><init>(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/common/api/Api$b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "googleApiClient"
    .parameter "momentId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/hz$4;

    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->Ea:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/hz$4;-><init>(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/common/api/Api$b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/plus/model/moments/Moment;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .parameter "googleApiClient"
    .parameter "moment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/plus/model/moments/Moment;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/hz$3;

    iget-object v1, p0, Lcom/google/android/gms/internal/hz;->Ea:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/hz$3;-><init>(Lcom/google/android/gms/internal/hz;Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/plus/model/moments/Moment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

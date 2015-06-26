.class public final Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private jG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final ns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nt:I

.field private nu:Landroid/view/View;

.field private nv:Ljava/lang/String;

.field private final nw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;",
            ">;"
        }
    .end annotation
.end field

.field private final nx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final ny:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->ns:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nw:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nx:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->ny:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nv:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "context"
    .parameter "connectedListener"
    .parameter "connectionFailedListener"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Must provide a connected listener"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nx:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "Must provide a connection failed listener"

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/eg;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->ny:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1
    .parameter "api"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 5
    .parameter "api"
    .parameter "options"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nw:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->bk()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->ns:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Scope;->br()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nx:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->ny:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 2
    .parameter "scope"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->ns:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Scope;->br()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bq()Lcom/google/android/gms/internal/dt;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/dt;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->jG:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->ns:Ljava/util/Set;

    iget v3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nt:I

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nu:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nv:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dt;-><init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V

    return-object v0
.end method

.method public build()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 7

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->bq()Lcom/google/android/gms/internal/dt;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nw:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nx:Ljava/util/Set;

    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->ny:Ljava/util/Set;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/dt;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/common/api/GoogleApiClient$1;)V

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 0
    .parameter "accountName"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->jG:Ljava/lang/String;

    return-object p0
.end method

.method public setGravityForPopups(I)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 0
    .parameter "gravityForPopups"

    .prologue
    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nt:I

    return-object p0
.end method

.method public setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 0
    .parameter "viewForPopups"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->nu:Landroid/view/View;

    return-object p0
.end method

.method public useDefaultAccount()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .locals 1

    const-string v0, "<<default account>>"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/android/gms/plus/PlusClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final DA:Lcom/google/android/gms/internal/hv;

.field private final Dz:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

.field private final jE:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 2
    .parameter "context"
    .parameter "connectionCallbacks"
    .parameter "connectionFailedListener"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->Dz:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iput-object p3, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->jE:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    new-instance v0, Lcom/google/android/gms/internal/hv;

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->DA:Lcom/google/android/gms/internal/hv;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/PlusClient;
    .locals 6

    new-instance v0, Lcom/google/android/gms/plus/PlusClient;

    new-instance v1, Lcom/google/android/gms/internal/hs;

    iget-object v2, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->Dz:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iget-object v4, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->jE:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->DA:Lcom/google/android/gms/internal/hv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/hv;->eZ()Lcom/google/android/gms/internal/hu;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/hs;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Lcom/google/android/gms/internal/hu;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/PlusClient;-><init>(Lcom/google/android/gms/internal/hs;)V

    return-object v0
.end method

.method public clearScopes()Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->DA:Lcom/google/android/gms/internal/hv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hv;->eY()Lcom/google/android/gms/internal/hv;

    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1
    .parameter "accountName"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->DA:Lcom/google/android/gms/internal/hv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hv;->aA(Ljava/lang/String;)Lcom/google/android/gms/internal/hv;

    return-object p0
.end method

.method public varargs setActions([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1
    .parameter "actions"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->DA:Lcom/google/android/gms/internal/hv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hv;->e([Ljava/lang/String;)Lcom/google/android/gms/internal/hv;

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/android/gms/plus/PlusClient$Builder;
    .locals 1
    .parameter "scopes"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$Builder;->DA:Lcom/google/android/gms/internal/hv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hv;->d([Ljava/lang/String;)Lcom/google/android/gms/internal/hv;

    return-object p0
.end method

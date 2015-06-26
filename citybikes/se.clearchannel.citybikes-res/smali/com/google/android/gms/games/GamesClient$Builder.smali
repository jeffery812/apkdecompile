.class public final Lcom/google/android/gms/games/GamesClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GamesClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final jD:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

.field private final jE:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

.field private jF:[Ljava/lang/String;

.field private jG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private tA:Z

.field private tB:I

.field private tx:Ljava/lang/String;

.field private ty:I

.field private tz:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 4
    .parameter "context"
    .parameter "connectedListener"
    .parameter "connectionFailedListener"

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "<<default account>>"

    iput-object v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->jG:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://www.googleapis.com/auth/games"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->jF:[Ljava/lang/String;

    const/16 v0, 0x31

    iput v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->ty:I

    iput-boolean v3, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tA:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tB:I

    iput-object p1, p0, Lcom/google/android/gms/games/GamesClient$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tx:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/GamesClient$Builder;->jD:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iput-object p3, p0, Lcom/google/android/gms/games/GamesClient$Builder;->jE:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    return-void
.end method


# virtual methods
.method public create()Lcom/google/android/gms/games/GamesClient;
    .locals 12

    new-instance v0, Lcom/google/android/gms/games/GamesClient;

    iget-object v1, p0, Lcom/google/android/gms/games/GamesClient$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tx:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/GamesClient$Builder;->jG:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/games/GamesClient$Builder;->jD:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    iget-object v5, p0, Lcom/google/android/gms/games/GamesClient$Builder;->jE:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    iget-object v6, p0, Lcom/google/android/gms/games/GamesClient$Builder;->jF:[Ljava/lang/String;

    iget v7, p0, Lcom/google/android/gms/games/GamesClient$Builder;->ty:I

    iget-object v8, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tz:Landroid/view/View;

    iget-boolean v9, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tA:Z

    iget v10, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tB:I

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/games/GamesClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;ZILcom/google/android/gms/games/GamesClient$1;)V

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 1
    .parameter "accountName"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/internal/eg;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->jG:Ljava/lang/String;

    return-object p0
.end method

.method public setGravityForPopups(I)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 0
    .parameter "gravity"

    .prologue
    iput p1, p0, Lcom/google/android/gms/games/GamesClient$Builder;->ty:I

    return-object p0
.end method

.method public varargs setScopes([Ljava/lang/String;)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 0
    .parameter "scopes"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/GamesClient$Builder;->jF:[Ljava/lang/String;

    return-object p0
.end method

.method public setShowConnectingPopup(Z)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 1
    .parameter "showConnectingPopup"

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tA:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tB:I

    return-object p0
.end method

.method public setShowConnectingPopup(ZI)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 0
    .parameter "showConnectingPopup"
    .parameter "gravity"

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tA:Z

    iput p2, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tB:I

    return-object p0
.end method

.method public setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/games/GamesClient$Builder;
    .locals 1
    .parameter "gamesContentView"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/internal/eg;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/games/GamesClient$Builder;->tz:Landroid/view/View;

    return-object p0
.end method

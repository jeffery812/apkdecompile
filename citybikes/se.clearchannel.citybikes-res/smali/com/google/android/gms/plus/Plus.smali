.class public final Lcom/google/android/gms/plus/Plus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/Plus$a;,
        Lcom/google/android/gms/plus/Plus$PlusOptions;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field public static final AccountApi:Lcom/google/android/gms/plus/Account;

.field public static final Dr:Lcom/google/android/gms/plus/a;

.field public static final MomentsApi:Lcom/google/android/gms/plus/Moments;

.field public static final PeopleApi:Lcom/google/android/gms/plus/People;

.field public static final SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

.field public static final SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

.field static final jO:Lcom/google/android/gms/common/api/Api$b;
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
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/plus/Plus$1;

    invoke-direct {v0}, Lcom/google/android/gms/plus/Plus$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->jO:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/plus/Plus;->jO:Lcom/google/android/gms/common/api/Api$b;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "https://www.googleapis.com/auth/plus.me"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/internal/hz;

    sget-object v1, Lcom/google/android/gms/plus/Plus;->jO:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hz;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->MomentsApi:Lcom/google/android/gms/plus/Moments;

    new-instance v0, Lcom/google/android/gms/internal/ia;

    sget-object v1, Lcom/google/android/gms/plus/Plus;->jO:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ia;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    new-instance v0, Lcom/google/android/gms/internal/hx;

    sget-object v1, Lcom/google/android/gms/plus/Plus;->jO:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hx;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    new-instance v0, Lcom/google/android/gms/internal/hy;

    sget-object v1, Lcom/google/android/gms/plus/Plus;->jO:Lcom/google/android/gms/common/api/Api$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hy;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

    sput-object v0, Lcom/google/android/gms/plus/Plus;->Dr:Lcom/google/android/gms/plus/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/internal/hs;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/hs;",
            ">;)",
            "Lcom/google/android/gms/internal/hs;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "GoogleApiClient parameter is required."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/eg;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v3, "GoogleApiClient must be connected."

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hs;

    if-eqz v0, :cond_1

    :goto_1
    const-string v2, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/eg;->a(ZLjava/lang/Object;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

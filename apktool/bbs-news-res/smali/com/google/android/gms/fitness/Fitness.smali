.class public Lcom/google/android/gms/fitness/Fitness;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final BleApi:Lcom/google/android/gms/fitness/BleApi;

.field public static final CU:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/kj;",
            ">;"
        }
    .end annotation
.end field

.field private static final CV:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/kj;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final ConfigApi:Lcom/google/android/gms/fitness/ConfigApi;

.field public static final HistoryApi:Lcom/google/android/gms/fitness/HistoryApi;

.field public static final RecordingApi:Lcom/google/android/gms/fitness/RecordingApi;

.field public static final SensorsApi:Lcom/google/android/gms/fitness/SensorsApi;

.field public static final SessionsApi:Lcom/google/android/gms/fitness/SessionsApi;

.field public static final Sf:Lcom/google/android/gms/internal/ku;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->CU:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/fitness/Fitness$1;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/Fitness$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->CV:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/fitness/Fitness;->CV:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/fitness/Fitness;->CU:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/lb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lb;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SensorsApi:Lcom/google/android/gms/fitness/SensorsApi;

    new-instance v0, Lcom/google/android/gms/internal/la;

    invoke-direct {v0}, Lcom/google/android/gms/internal/la;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->RecordingApi:Lcom/google/android/gms/fitness/RecordingApi;

    new-instance v0, Lcom/google/android/gms/internal/lc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lc;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->SessionsApi:Lcom/google/android/gms/fitness/SessionsApi;

    new-instance v0, Lcom/google/android/gms/internal/ky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ky;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->HistoryApi:Lcom/google/android/gms/fitness/HistoryApi;

    new-instance v0, Lcom/google/android/gms/internal/kx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kx;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->ConfigApi:Lcom/google/android/gms/fitness/ConfigApi;

    invoke-static {}, Lcom/google/android/gms/fitness/Fitness;->iy()Lcom/google/android/gms/fitness/BleApi;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->BleApi:Lcom/google/android/gms/fitness/BleApi;

    new-instance v0, Lcom/google/android/gms/internal/kz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kz;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/Fitness;->Sf:Lcom/google/android/gms/internal/ku;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static iy()Lcom/google/android/gms/fitness/BleApi;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/kw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kw;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ld;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ld;-><init>()V

    goto :goto_0
.end method

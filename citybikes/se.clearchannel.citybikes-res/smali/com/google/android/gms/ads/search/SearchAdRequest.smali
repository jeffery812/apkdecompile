.class public final Lcom/google/android/gms/ads/search/SearchAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/search/SearchAdRequest$1;,
        Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    }
.end annotation


# static fields
.field public static final BORDER_TYPE_DASHED:I = 0x1

.field public static final BORDER_TYPE_DOTTED:I = 0x2

.field public static final BORDER_TYPE_NONE:I = 0x0

.field public static final BORDER_TYPE_SOLID:I = 0x3

.field public static final CALL_BUTTON_COLOR_DARK:I = 0x2

.field public static final CALL_BUTTON_COLOR_LIGHT:I = 0x0

.field public static final CALL_BUTTON_COLOR_MEDIUM:I = 0x1

.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = null

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3


# instance fields
.field private final dW:Lcom/google/android/gms/internal/af;

.field private final jj:I

.field private final jk:I

.field private final jl:I

.field private final jm:I

.field private final jn:I

.field private final jo:I

.field private final jp:I

.field private final jq:I

.field private final jr:Ljava/lang/String;

.field private final js:I

.field private final jt:Ljava/lang/String;

.field private final ju:I

.field private final jv:I

.field private final jw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/af;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/search/SearchAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->a(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jj:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->b(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jk:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->c(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jl:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->d(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jm:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->e(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jn:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->f(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jo:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->g(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jp:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->h(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jq:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->i(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jr:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->j(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->js:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->k(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jt:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->l(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ju:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->m(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jv:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->n(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jw:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/af;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->o(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/af$a;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/af;-><init>(Lcom/google/android/gms/internal/af$a;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->dW:Lcom/google/android/gms/internal/af;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getAnchorTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jj:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jk:I

    return v0
.end method

.method public getBackgroundGradientBottom()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jl:I

    return v0
.end method

.method public getBackgroundGradientTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jm:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jn:I

    return v0
.end method

.method public getBorderThickness()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jo:I

    return v0
.end method

.method public getBorderType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jp:I

    return v0
.end method

.method public getCallButtonColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jq:I

    return v0
.end method

.method public getCustomChannels()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jr:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->js:I

    return v0
.end method

.method public getFontFace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jt:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->ju:I

    return v0
.end method

.method public getHeaderTextSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jv:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->dW:Lcom/google/android/gms/internal/af;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/af;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, networkExtrasClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->dW:Lcom/google/android/gms/internal/af;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->jw:Ljava/lang/String;

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->dW:Lcom/google/android/gms/internal/af;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method v()Lcom/google/android/gms/internal/af;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->dW:Lcom/google/android/gms/internal/af;

    return-object v0
.end method

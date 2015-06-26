.class public final Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/search/SearchAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final dX:Lcom/google/android/gms/internal/af$a;

.field private jj:I

.field private jk:I

.field private jl:I

.field private jm:I

.field private jn:I

.field private jo:I

.field private jp:I

.field private jq:I

.field private jr:Ljava/lang/String;

.field private js:I

.field private jt:Ljava/lang/String;

.field private ju:I

.field private jv:I

.field private jw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/af$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/af$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jp:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jj:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jk:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jl:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jm:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jn:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jo:I

    return v0
.end method

.method static synthetic g(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jp:I

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jq:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->js:I

    return v0
.end method

.method static synthetic k(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->ju:I

    return v0
.end method

.method static synthetic m(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jv:I

    return v0
.end method

.method static synthetic n(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/af$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    return-object v0
.end method


# virtual methods
.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 1
    .parameter "networkExtras"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 1
    .parameter "deviceId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->h(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/search/SearchAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V

    return-object v0
.end method

.method public setAnchorTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 0
    .parameter "anchorTextColor"

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jj:I

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 2
    .parameter "backgroundColor"

    .prologue
    const/4 v1, 0x0

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jk:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jl:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jm:I

    return-object p0
.end method

.method public setBackgroundGradient(II)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 1
    .parameter "top"
    .parameter "bottom"

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jk:I

    iput p2, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jl:I

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jm:I

    return-object p0
.end method

.method public setBorderColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 0
    .parameter "borderColor"

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jn:I

    return-object p0
.end method

.method public setBorderThickness(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 0
    .parameter "borderThickness"

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jo:I

    return-object p0
.end method

.method public setBorderType(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 0
    .parameter "borderType"

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jp:I

    return-object p0
.end method

.method public setCallButtonColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 0
    .parameter "callButtonColor"

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jq:I

    return-object p0
.end method

.method public setCustomChannels(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 0
    .parameter "channelIds"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jr:Ljava/lang/String;

    return-object p0
.end method

.method public setDescriptionTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 0
    .parameter "descriptionTextColor"

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->js:I

    return-object p0
.end method

.method public setFontFace(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 0
    .parameter "fontFace"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jt:Ljava/lang/String;

    return-object p0
.end method

.method public setHeaderTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 0
    .parameter "headerTextColor"

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->ju:I

    return-object p0
.end method

.method public setHeaderTextSize(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 0
    .parameter "headerTextSize"

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jv:I

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 1
    .parameter "location"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->a(Landroid/location/Location;)V

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 0
    .parameter "query"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->jw:Ljava/lang/String;

    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .locals 1
    .parameter "tagForChildDirectedTreatment"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->e(Z)V

    return-object p0
.end method

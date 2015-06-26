.class public final Lcom/google/android/gms/internal/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/aj;


# instance fields
.field public final backgroundColor:I

.field public final eZ:I

.field public final fa:I

.field public final fb:I

.field public final fc:I

.field public final fd:I

.field public final fe:I

.field public final ff:I

.field public final fg:Ljava/lang/String;

.field public final fh:I

.field public final fi:Ljava/lang/String;

.field public final fj:I

.field public final fk:I

.field public final fl:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ai;->CREATOR:Lcom/google/android/gms/internal/aj;

    return-void
.end method

.method constructor <init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ai;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/ai;->eZ:I

    iput p3, p0, Lcom/google/android/gms/internal/ai;->backgroundColor:I

    iput p4, p0, Lcom/google/android/gms/internal/ai;->fa:I

    iput p5, p0, Lcom/google/android/gms/internal/ai;->fb:I

    iput p6, p0, Lcom/google/android/gms/internal/ai;->fc:I

    iput p7, p0, Lcom/google/android/gms/internal/ai;->fd:I

    iput p8, p0, Lcom/google/android/gms/internal/ai;->fe:I

    iput p9, p0, Lcom/google/android/gms/internal/ai;->ff:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ai;->fg:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/ai;->fh:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ai;->fi:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/internal/ai;->fj:I

    iput p14, p0, Lcom/google/android/gms/internal/ai;->fk:I

    iput-object p15, p0, Lcom/google/android/gms/internal/ai;->fl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ai;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getAnchorTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ai;->eZ:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ai;->backgroundColor:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundGradientBottom()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ai;->fa:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBackgroundGradientTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ai;->fb:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ai;->fc:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderThickness()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ai;->fd:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getBorderType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ai;->fe:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getCallButtonColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ai;->ff:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getCustomChannels()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ai;->fg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getDescriptionTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ai;->fh:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getFontFace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ai;->fi:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getHeaderTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ai;->fj:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getHeaderTextSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ai;->fk:I

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ai;->fl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/aj;->a(Lcom/google/android/gms/internal/ai;Landroid/os/Parcel;I)V

    return-void
.end method

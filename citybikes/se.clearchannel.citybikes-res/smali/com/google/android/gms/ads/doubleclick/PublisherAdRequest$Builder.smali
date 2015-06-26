.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final dX:Lcom/google/android/gms/internal/af$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/af$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/af$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)Lcom/google/android/gms/internal/af$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    return-object v0
.end method


# virtual methods
.method public addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .parameter "keyword"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->g(Ljava/lang/String;)V

    return-object p0
.end method

.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .parameter "networkExtras"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .parameter "deviceId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->h(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;-><init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$1;)V

    return-object v0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .parameter "birthday"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->a(Ljava/util/Date;)V

    return-object p0
.end method

.method public setGender(I)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .parameter "gender"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->d(I)V

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .parameter "location"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->a(Landroid/location/Location;)V

    return-object p0
.end method

.method public setManualImpressionsEnabled(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .parameter "manualImpressionsEnabled"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->d(Z)V

    return-object p0
.end method

.method public setPublisherProvidedId(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .parameter "publisherProvidedId"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .locals 1
    .parameter "tagForChildDirectedTreatment"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->dX:Lcom/google/android/gms/internal/af$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/af$a;->e(Z)V

    return-object p0
.end method

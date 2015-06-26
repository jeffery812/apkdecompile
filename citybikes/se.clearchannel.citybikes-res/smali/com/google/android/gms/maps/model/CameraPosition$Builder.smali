.class public final Lcom/google/android/gms/maps/model/CameraPosition$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/CameraPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private Cm:Lcom/google/android/gms/maps/model/LatLng;

.field private Cn:F

.field private Co:F

.field private Cp:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1
    .parameter "previous"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Cm:Lcom/google/android/gms/maps/model/LatLng;

    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Cn:F

    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Co:F

    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    iput v0, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Cp:F

    return-void
.end method


# virtual methods
.method public bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0
    .parameter "bearing"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Cp:F

    return-object p0
.end method

.method public build()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 5

    new-instance v0, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Cm:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Cn:F

    iget v3, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Co:F

    iget v4, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Cp:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    return-object v0
.end method

.method public target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0
    .parameter "location"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Cm:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0
    .parameter "tilt"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Co:F

    return-object p0
.end method

.method public zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;
    .locals 0
    .parameter "zoom"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->Cn:F

    return-object p0
.end method

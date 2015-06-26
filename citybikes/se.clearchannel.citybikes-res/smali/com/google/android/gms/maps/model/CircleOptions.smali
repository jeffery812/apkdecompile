.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/CircleOptionsCreator;


# instance fields
.field private Cr:Lcom/google/android/gms/maps/model/LatLng;

.field private Cs:D

.field private Ct:F

.field private Cu:I

.field private Cv:I

.field private Cw:F

.field private Cx:Z

.field private final kg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptionsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptionsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Lcom/google/android/gms/maps/model/CircleOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cr:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cs:D

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Ct:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cu:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cv:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cw:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cx:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->kg:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;DFIIFZ)V
    .locals 2
    .parameter "versionCode"
    .parameter "center"
    .parameter "radius"
    .parameter "strokeWidth"
    .parameter "strokeColor"
    .parameter "fillColor"
    .parameter "zIndex"
    .parameter "visible"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cr:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cs:D

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Ct:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cu:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cv:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cw:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cx:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cr:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide p3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cs:D

    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Ct:F

    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cu:I

    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cv:I

    iput p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cw:F

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cx:Z

    return-void
.end method


# virtual methods
.method public center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .parameter "center"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cr:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .parameter "color"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cv:I

    return-object p0
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cr:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getFillColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cv:I

    return v0
.end method

.method public getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cs:D

    return-wide v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cu:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Ct:F

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->kg:I

    return v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cw:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cx:Z

    return v0
.end method

.method public radius(D)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .parameter "radius"

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cs:D

    return-object p0
.end method

.method public strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .parameter "color"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cu:I

    return-object p0
.end method

.method public strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .parameter "width"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Ct:F

    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .parameter "visible"

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cx:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    invoke-static {}, Lcom/google/android/gms/maps/internal/r;->eD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/b;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/CircleOptionsCreator;->a(Lcom/google/android/gms/maps/model/CircleOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .parameter "zIndex"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->Cw:F

    return-object p0
.end method

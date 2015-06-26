.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/MarkerOptionsCreator;


# instance fields
.field private CF:F

.field private CG:F

.field private CM:Lcom/google/android/gms/maps/model/LatLng;

.field private CN:Ljava/lang/String;

.field private CO:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private CP:Z

.field private CQ:Z

.field private CR:F

.field private CS:F

.field private CT:F

.field private Cx:Z

.field private final kg:I

.field private mAlpha:F

.field private qL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Lcom/google/android/gms/maps/model/MarkerOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/high16 v2, 0x3f00

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CF:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CG:F

    iput-boolean v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Cx:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CQ:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CR:F

    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CS:F

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CT:F

    iput v3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput v4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->kg:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFF)V
    .locals 3
    .parameter "versionCode"
    .parameter "position"
    .parameter "title"
    .parameter "snippet"
    .parameter "wrappedIcon"
    .parameter "anchorU"
    .parameter "anchorV"
    .parameter "draggable"
    .parameter "visible"
    .parameter "flat"
    .parameter "rotation"
    .parameter "infoWindowAnchorU"
    .parameter "infoWindowAnchorV"
    .parameter "alpha"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CF:F

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CG:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Cx:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CQ:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CR:F

    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CS:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CT:F

    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CM:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->qL:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CN:Ljava/lang/String;

    if-nez p5, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CO:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iput p6, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CF:F

    iput p7, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CG:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CP:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Cx:Z

    iput-boolean p10, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CQ:Z

    iput p11, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CR:F

    iput p12, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CS:F

    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CT:F

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/b$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/b;)V

    goto :goto_0
.end method


# virtual methods
.method public alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .parameter "alpha"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return-object p0
.end method

.method public anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .parameter "u"
    .parameter "v"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CF:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CG:F

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .parameter "draggable"

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CP:Z

    return-object p0
.end method

.method eG()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CO:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CO:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->el()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .parameter "flat"

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CQ:Z

    return-object p0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->mAlpha:F

    return v0
.end method

.method public getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CF:F

    return v0
.end method

.method public getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CG:F

    return v0
.end method

.method public getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CO:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public getInfoWindowAnchorU()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CS:F

    return v0
.end method

.method public getInfoWindowAnchorV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CT:F

    return v0
.end method

.method public getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CM:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CR:F

    return v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CN:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->qL:Ljava/lang/String;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->kg:I

    return v0
.end method

.method public icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .parameter "icon"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CO:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .parameter "u"
    .parameter "v"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CS:F

    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CT:F

    return-object p0
.end method

.method public isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CP:Z

    return v0
.end method

.method public isFlat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CQ:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Cx:Z

    return v0
.end method

.method public position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .parameter "position"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CM:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .parameter "rotation"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CR:F

    return-object p0
.end method

.method public snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .parameter "snippet"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->CN:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .parameter "title"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->qL:Ljava/lang/String;

    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0
    .parameter "visible"

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->Cx:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/f;->a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptionsCreator;->a(Lcom/google/android/gms/maps/model/MarkerOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

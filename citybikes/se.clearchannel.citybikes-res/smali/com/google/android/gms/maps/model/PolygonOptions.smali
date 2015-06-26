.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/PolygonOptionsCreator;


# instance fields
.field private final CV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private final CW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private CX:Z

.field private Ct:F

.field private Cu:I

.field private Cv:I

.field private Cw:F

.field private Cx:Z

.field private final kg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lcom/google/android/gms/maps/model/PolygonOptionsCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Ct:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cu:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cv:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cw:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CX:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->kg:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CV:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CW:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;FIIFZZ)V
    .locals 2
    .parameter "versionCode"
    .parameter
    .parameter "holes"
    .parameter "strokeWidth"
    .parameter "strokeColor"
    .parameter "fillColor"
    .parameter "zIndex"
    .parameter "visible"
    .parameter "geodesic"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/util/List;",
            "FIIFZZ)V"
        }
    .end annotation

    .prologue
    .local p2, points:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x4120

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Ct:F

    const/high16 v0, -0x100

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cu:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cv:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cw:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CX:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->kg:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CV:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CW:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Ct:F

    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cu:I

    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cv:I

    iput p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cw:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cx:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CX:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 1
    .parameter "point"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CV:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 2
    .parameter "points"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CV:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
        }
    .end annotation

    .prologue
    .local p1, points:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CV:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addHole(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
        }
    .end annotation

    .prologue
    .local p1, points:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/android/gms/maps/model/LatLng;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CW:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method eH()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CW:Ljava/util/List;

    return-object v0
.end method

.method public fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0
    .parameter "color"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cv:I

    return-object p0
.end method

.method public geodesic(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0
    .parameter "geodesic"

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CX:Z

    return-object p0
.end method

.method public getFillColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cv:I

    return v0
.end method

.method public getHoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CW:Ljava/util/List;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CV:Ljava/util/List;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cu:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Ct:F

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->kg:I

    return v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cw:F

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->CX:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cx:Z

    return v0
.end method

.method public strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0
    .parameter "color"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cu:I

    return-object p0
.end method

.method public strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0
    .parameter "width"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Ct:F

    return-object p0
.end method

.method public visible(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0
    .parameter "visible"

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cx:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/g;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/PolygonOptionsCreator;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method

.method public zIndex(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0
    .parameter "zIndex"

    .prologue
    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->Cw:F

    return-object p0
.end method

.class public Lse/clearchannel/citybikes/locations/BikeLocation;
.super Ljava/lang/Object;
.source "BikeLocation.java"


# instance fields
.field private data:Lse/clearchannel/citybikes/locations/BikeLocationData;

.field private distanceToMyLocation:Ljava/lang/Float;

.field private id:Ljava/lang/Long;

.field private location:Lcom/google/android/gms/maps/model/LatLng;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "location"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->id:Ljava/lang/Long;

    .line 17
    iput-object p2, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->name:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->location:Lcom/google/android/gms/maps/model/LatLng;

    .line 19
    return-void
.end method


# virtual methods
.method public getDistanceToMyLocation()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->distanceToMyLocation:Ljava/lang/Float;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->location:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getLocationData()Lse/clearchannel/citybikes/locations/BikeLocationData;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->data:Lse/clearchannel/citybikes/locations/BikeLocationData;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDistanceToMyLocation(Ljava/lang/Float;)V
    .locals 0
    .parameter "dist"

    .prologue
    .line 49
    iput-object p1, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->distanceToMyLocation:Ljava/lang/Float;

    .line 50
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 24
    iput-object p1, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->id:Ljava/lang/Long;

    .line 25
    return-void
.end method

.method public setLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 36
    iput-object p1, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->location:Lcom/google/android/gms/maps/model/LatLng;

    .line 37
    return-void
.end method

.method public setLocationData(Lse/clearchannel/citybikes/locations/BikeLocationData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 43
    iput-object p1, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->data:Lse/clearchannel/citybikes/locations/BikeLocationData;

    .line 44
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 30
    iput-object p1, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lse/clearchannel/citybikes/locations/BikeLocation;->name:Ljava/lang/String;

    return-object v0
.end method

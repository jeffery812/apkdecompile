.class public Lse/clearchannel/citybikes/locations/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# static fields
.field private static instance:Lse/clearchannel/citybikes/locations/LocationProvider;


# instance fields
.field private apiClient:Lse/clearchannel/citybikes/api/RestApiClient;

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lse/clearchannel/citybikes/locations/BikeLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lse/clearchannel/citybikes/locations/LocationProvider;

    invoke-direct {v0}, Lse/clearchannel/citybikes/locations/LocationProvider;-><init>()V

    sput-object v0, Lse/clearchannel/citybikes/locations/LocationProvider;->instance:Lse/clearchannel/citybikes/locations/LocationProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lse/clearchannel/citybikes/api/RestApiClient;

    invoke-direct {v0}, Lse/clearchannel/citybikes/api/RestApiClient;-><init>()V

    iput-object v0, p0, Lse/clearchannel/citybikes/locations/LocationProvider;->apiClient:Lse/clearchannel/citybikes/api/RestApiClient;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/clearchannel/citybikes/locations/LocationProvider;->locations:Ljava/util/List;

    .line 19
    return-void
.end method

.method private convertToLocations(Lse/clearchannel/citybikes/api/domain/RackList;)Ljava/util/List;
    .locals 14
    .parameter "racks"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lse/clearchannel/citybikes/api/domain/RackList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lse/clearchannel/citybikes/locations/BikeLocation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-wide/16 v12, 0x0

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v3, locations:Ljava/util/List;,"Ljava/util/List<Lse/clearchannel/citybikes/locations/BikeLocation;>;"
    invoke-virtual {p1}, Lse/clearchannel/citybikes/api/domain/RackList;->getRacks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lse/clearchannel/citybikes/api/domain/BikeRack;

    .line 48
    .local v5, rack:Lse/clearchannel/citybikes/api/domain/BikeRack;
    invoke-virtual {v5}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getLatitude()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v6, v8, v12

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getLongitude()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v6, v8, v12

    if-eqz v6, :cond_0

    .line 51
    :cond_1
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v5}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getLatitude()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getLongitude()Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 52
    .local v4, point:Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lse/clearchannel/citybikes/locations/BikeLocation;

    invoke-virtual {v5}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v6, v8, v4}, Lse/clearchannel/citybikes/locations/BikeLocation;-><init>(Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 53
    .local v2, location:Lse/clearchannel/citybikes/locations/BikeLocation;
    new-instance v1, Lse/clearchannel/citybikes/locations/BikeLocationData;

    invoke-direct {v1}, Lse/clearchannel/citybikes/locations/BikeLocationData;-><init>()V

    .line 54
    .local v1, locData:Lse/clearchannel/citybikes/locations/BikeLocationData;
    invoke-virtual {v5}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getReady_bikes()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lse/clearchannel/citybikes/locations/BikeLocationData;->setAvailableBikes(I)V

    .line 55
    invoke-virtual {v5}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getEmpty_locks()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Lse/clearchannel/citybikes/locations/BikeLocationData;->setFreeSlots(I)V

    .line 56
    invoke-virtual {v5}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lse/clearchannel/citybikes/locations/BikeLocationData;->setId(Ljava/lang/Long;)V

    .line 57
    invoke-virtual {v5}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getOnline()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v1, v6}, Lse/clearchannel/citybikes/locations/BikeLocationData;->setOnline(Z)V

    .line 58
    invoke-virtual {v2, v1}, Lse/clearchannel/citybikes/locations/BikeLocation;->setLocationData(Lse/clearchannel/citybikes/locations/BikeLocationData;)V

    .line 59
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 61
    .end local v1           #locData:Lse/clearchannel/citybikes/locations/BikeLocationData;
    .end local v2           #location:Lse/clearchannel/citybikes/locations/BikeLocation;
    .end local v4           #point:Lcom/google/android/gms/maps/model/LatLng;
    .end local v5           #rack:Lse/clearchannel/citybikes/api/domain/BikeRack;
    :cond_3
    return-object v3
.end method

.method public static getInstance()Lse/clearchannel/citybikes/locations/LocationProvider;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lse/clearchannel/citybikes/locations/LocationProvider;->instance:Lse/clearchannel/citybikes/locations/LocationProvider;

    return-object v0
.end method


# virtual methods
.method public getLocationData(Ljava/lang/Long;)Lse/clearchannel/citybikes/locations/BikeLocationData;
    .locals 3
    .parameter "id"

    .prologue
    .line 65
    iget-object v2, p0, Lse/clearchannel/citybikes/locations/LocationProvider;->locations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lse/clearchannel/citybikes/locations/BikeLocation;

    .line 66
    .local v1, location:Lse/clearchannel/citybikes/locations/BikeLocation;
    invoke-virtual {v1}, Lse/clearchannel/citybikes/locations/BikeLocation;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v1}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocationData()Lse/clearchannel/citybikes/locations/BikeLocationData;

    move-result-object v2

    .line 70
    .end local v1           #location:Lse/clearchannel/citybikes/locations/BikeLocation;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLocationDataFromServer(Ljava/lang/Long;)Lse/clearchannel/citybikes/locations/BikeLocationData;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v2, p0, Lse/clearchannel/citybikes/locations/LocationProvider;->apiClient:Lse/clearchannel/citybikes/api/RestApiClient;

    invoke-virtual {v2, p1}, Lse/clearchannel/citybikes/api/RestApiClient;->getBikeRack(Ljava/lang/Long;)Lse/clearchannel/citybikes/api/domain/BikeRack;

    move-result-object v1

    .line 76
    .local v1, rack:Lse/clearchannel/citybikes/api/domain/BikeRack;
    new-instance v0, Lse/clearchannel/citybikes/locations/BikeLocationData;

    invoke-direct {v0}, Lse/clearchannel/citybikes/locations/BikeLocationData;-><init>()V

    .line 77
    .local v0, locationData:Lse/clearchannel/citybikes/locations/BikeLocationData;
    invoke-virtual {v0, p1}, Lse/clearchannel/citybikes/locations/BikeLocationData;->setId(Ljava/lang/Long;)V

    .line 78
    invoke-virtual {v1}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getOnline()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 79
    invoke-virtual {v1}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getReady_bikes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lse/clearchannel/citybikes/locations/BikeLocationData;->setAvailableBikes(I)V

    .line 80
    invoke-virtual {v1}, Lse/clearchannel/citybikes/api/domain/BikeRack;->getEmpty_locks()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lse/clearchannel/citybikes/locations/BikeLocationData;->setFreeSlots(I)V

    .line 85
    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-virtual {v0, v3}, Lse/clearchannel/citybikes/locations/BikeLocationData;->setAvailableBikes(I)V

    .line 83
    invoke-virtual {v0, v3}, Lse/clearchannel/citybikes/locations/BikeLocationData;->setFreeSlots(I)V

    goto :goto_0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lse/clearchannel/citybikes/locations/BikeLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lse/clearchannel/citybikes/locations/LocationProvider;->locations:Ljava/util/List;

    return-object v0
.end method

.method public getLocationsFromServer()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lse/clearchannel/citybikes/locations/BikeLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Lse/clearchannel/citybikes/locations/LocationProvider;->apiClient:Lse/clearchannel/citybikes/api/RestApiClient;

    invoke-virtual {v1}, Lse/clearchannel/citybikes/api/RestApiClient;->getRackList()Lse/clearchannel/citybikes/api/domain/RackList;

    move-result-object v0

    .line 35
    .local v0, rackList:Lse/clearchannel/citybikes/api/domain/RackList;
    invoke-direct {p0, v0}, Lse/clearchannel/citybikes/locations/LocationProvider;->convertToLocations(Lse/clearchannel/citybikes/api/domain/RackList;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lse/clearchannel/citybikes/locations/LocationProvider;->locations:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0           #rackList:Lse/clearchannel/citybikes/api/domain/RackList;
    :goto_0
    iget-object v1, p0, Lse/clearchannel/citybikes/locations/LocationProvider;->locations:Ljava/util/List;

    iput-object v1, p0, Lse/clearchannel/citybikes/locations/LocationProvider;->locations:Ljava/util/List;

    .line 41
    iget-object v1, p0, Lse/clearchannel/citybikes/locations/LocationProvider;->locations:Ljava/util/List;

    return-object v1

    .line 36
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public resetLocations()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/clearchannel/citybikes/locations/LocationProvider;->locations:Ljava/util/List;

    .line 90
    return-void
.end method

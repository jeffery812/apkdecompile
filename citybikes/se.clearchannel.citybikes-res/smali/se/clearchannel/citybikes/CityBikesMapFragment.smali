.class public Lse/clearchannel/citybikes/CityBikesMapFragment;
.super Landroid/support/v4/app/Fragment;
.source "CityBikesMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lse/clearchannel/citybikes/RefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/clearchannel/citybikes/CityBikesMapFragment$6;,
        Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;,
        Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;
    }
.end annotation


# static fields
.field private static final FASTEST_INTERVAL:J = 0x3e8L

.field private static final FASTEST_INTERVAL_IN_SECONDS:I = 0x1

.field private static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field private static final UPDATE_INTERVAL:J = 0x1388L

.field public static final UPDATE_INTERVAL_IN_SECONDS:I = 0x5

.field private static latitude:Ljava/lang/Double;

.field private static longitude:Ljava/lang/Double;

.field private static mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private static view:Landroid/view/View;


# instance fields
.field private final GROUP_DEFAULT:I

.field private final GROUP_MAP_LAYERS:I

.field private final GROUP_OFFLINE_MAP:I

.field public final ID_DIALOG_PROGRESS:I

.field private final MENU_MAP_LAYERS:I

.field private final MENU_MY_LOC:I

.field private final MENU_OFFLINE_MAP:I

.field private final MENU_REFRESH_MAP:I

.field private final SUB_MENU_LAYERS_MAP:I

.field private final SUB_MENU_LAYERS_SAT:I

.field private final SUB_MENU_OFFLINE_STOCKHOLM:I

.field private final SUB_MENU_OFFLINE_UPPSALA:I

.field dialog:Landroid/app/ProgressDialog;

.field locationManager:Landroid/location/LocationManager;

.field private locationProvider:Lse/clearchannel/citybikes/locations/LocationProvider;

.field private locationsUpToDate:Z

.field private mCities:[Ljava/lang/CharSequence;

.field mLocationClient:Lcom/google/android/gms/location/LocationClient;

.field mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field private myLocationEnabled:Z

.field private stationMarkerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lse/clearchannel/citybikes/locations/BikeLocation;",
            ">;"
        }
    .end annotation
.end field

.field updateTask:Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 65
    iput-boolean v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->myLocationEnabled:Z

    .line 67
    iput-boolean v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->locationsUpToDate:Z

    .line 71
    iput v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->GROUP_DEFAULT:I

    iput v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->GROUP_MAP_LAYERS:I

    iput v2, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->GROUP_OFFLINE_MAP:I

    .line 72
    iput v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->MENU_MY_LOC:I

    iput v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->MENU_MAP_LAYERS:I

    const/4 v0, 0x2

    iput v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->MENU_REFRESH_MAP:I

    iput v2, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->MENU_OFFLINE_MAP:I

    .line 73
    const/16 v0, 0x65

    iput v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->SUB_MENU_LAYERS_MAP:I

    const/16 v0, 0x66

    iput v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->SUB_MENU_LAYERS_SAT:I

    .line 74
    const/16 v0, 0x12d

    iput v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->SUB_MENU_OFFLINE_UPPSALA:I

    const/16 v0, 0x12e

    iput v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->SUB_MENU_OFFLINE_STOCKHOLM:I

    .line 77
    const/16 v0, 0x3e9

    iput v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->ID_DIALOG_PROGRESS:I

    .line 649
    return-void
.end method

.method static synthetic access$100(Lse/clearchannel/citybikes/CityBikesMapFragment;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->stationMarkerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lse/clearchannel/citybikes/CityBikesMapFragment;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mCities:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$400(Lse/clearchannel/citybikes/CityBikesMapFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->updateAllLocations()V

    return-void
.end method

.method static synthetic access$500(Lse/clearchannel/citybikes/CityBikesMapFragment;)Lse/clearchannel/citybikes/locations/LocationProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->locationProvider:Lse/clearchannel/citybikes/locations/LocationProvider;

    return-object v0
.end method

.method private connected()Z
    .locals 4

    .prologue
    .line 701
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 704
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 705
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private goTo(Lse/clearchannel/citybikes/locations/BikeLocation;)V
    .locals 4
    .parameter "bl"

    .prologue
    .line 544
    if-eqz p1, :cond_0

    .line 546
    sget-object v1, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    const/high16 v3, 0x4150

    invoke-static {v2, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 548
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {p1}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    const/high16 v2, 0x4188

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    const/high16 v2, 0x4220

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 554
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    sget-object v1, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 557
    .end local v0           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    return-void
.end method

.method private requestAllUpdates()V
    .locals 3

    .prologue
    .line 587
    iget-object v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 588
    .local v0, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    iget-object v2, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/location/LocationClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V

    .line 589
    return-void
.end method

.method private updateAllLocations()V
    .locals 13

    .prologue
    const v12, 0x7f020096

    const v11, 0x7f020093

    const v10, 0x7f020095

    const v9, 0x7f020094

    .line 497
    invoke-static {}, Lse/clearchannel/citybikes/locations/LocationProvider;->getInstance()Lse/clearchannel/citybikes/locations/LocationProvider;

    move-result-object v6

    iput-object v6, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->locationProvider:Lse/clearchannel/citybikes/locations/LocationProvider;

    .line 498
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 499
    .local v3, mapMarker:Landroid/graphics/drawable/Drawable;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 500
    .local v5, markers:Ljava/util/Map;,"Ljava/util/Map<Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;Landroid/graphics/drawable/Drawable;>;"
    sget-object v6, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_OK:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v6, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_FULL:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v6, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_EMPTY:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v6, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->OFFLINE:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v6, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 506
    iget-object v6, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->locationProvider:Lse/clearchannel/citybikes/locations/LocationProvider;

    invoke-virtual {v6}, Lse/clearchannel/citybikes/locations/LocationProvider;->getLocations()Ljava/util/List;

    move-result-object v0

    .line 508
    .local v0, bikeLocations:Ljava/util/List;,"Ljava/util/List<Lse/clearchannel/citybikes/locations/BikeLocation;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 511
    sget-object v7, Lse/clearchannel/citybikes/CityBikesMapFragment$6;->$SwitchMap$se$clearchannel$citybikes$locations$BikeLocationData$RackStatus:[I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lse/clearchannel/citybikes/locations/BikeLocation;

    invoke-virtual {v6}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocationData()Lse/clearchannel/citybikes/locations/BikeLocationData;

    move-result-object v6

    invoke-virtual {v6}, Lse/clearchannel/citybikes/locations/BikeLocationData;->getStatus()Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    move-result-object v6

    invoke-virtual {v6}, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 526
    invoke-static {v10}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    .line 529
    .local v1, bitmapMarker:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :goto_1
    sget-object v7, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v8}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lse/clearchannel/citybikes/locations/BikeLocation;

    invoke-virtual {v6}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lse/clearchannel/citybikes/locations/BikeLocation;

    invoke-virtual {v6}, Lse/clearchannel/citybikes/locations/BikeLocation;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    .line 531
    .local v4, marker:Lcom/google/android/gms/maps/model/Marker;
    iget-object v6, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->stationMarkerMap:Ljava/util/HashMap;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    .end local v1           #bitmapMarker:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .end local v4           #marker:Lcom/google/android/gms/maps/model/Marker;
    :pswitch_0
    invoke-static {v9}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    .line 515
    .restart local v1       #bitmapMarker:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    goto :goto_1

    .line 517
    .end local v1           #bitmapMarker:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :pswitch_1
    invoke-static {v12}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    .line 518
    .restart local v1       #bitmapMarker:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    goto :goto_1

    .line 520
    .end local v1           #bitmapMarker:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :pswitch_2
    invoke-static {v11}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    .line 521
    .restart local v1       #bitmapMarker:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    goto :goto_1

    .line 523
    .end local v1           #bitmapMarker:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :pswitch_3
    invoke-static {v10}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    .line 524
    .restart local v1       #bitmapMarker:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    goto :goto_1

    .line 537
    .end local v1           #bitmapMarker:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    :cond_0
    return-void

    .line 511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private zoomToMyLocation()V
    .locals 11

    .prologue
    const/high16 v10, 0x4150

    .line 435
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    .line 436
    .local v3, locationManager:Landroid/location/LocationManager;
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 438
    .local v1, criteria:Landroid/location/Criteria;
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 439
    .local v2, location:Landroid/location/Location;
    if-eqz v2, :cond_0

    .line 441
    sget-object v4, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v5, v10}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 444
    new-instance v4, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v4

    const/high16 v5, 0x4220

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 450
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    sget-object v4, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 457
    .end local v0           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    return-void
.end method

.method private zoomToMyLocation(Landroid/location/Location;)V
    .locals 10
    .parameter "location"

    .prologue
    const/high16 v9, 0x4150

    .line 459
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 460
    .local v2, locationManager:Landroid/location/LocationManager;
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 463
    .local v1, criteria:Landroid/location/Criteria;
    if-eqz p1, :cond_0

    .line 465
    sget-object v3, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v4, v9}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 468
    new-instance v3, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    const/high16 v4, 0x4220

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 474
    .local v0, cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    sget-object v3, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 481
    .end local v0           #cameraPosition:Lcom/google/android/gms/maps/model/CameraPosition;
    :cond_0
    return-void
.end method


# virtual methods
.method public createUpdateTask()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 483
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    const v2, 0x7f0b0041

    invoke-virtual {p0, v2}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lse/clearchannel/citybikes/CityBikesMapFragment$5;

    invoke-direct {v5, p0}, Lse/clearchannel/citybikes/CityBikesMapFragment$5;-><init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    .line 492
    new-instance v0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;-><init>(Lse/clearchannel/citybikes/CityBikesMapFragment;Lse/clearchannel/citybikes/CityBikesMapFragment$1;)V

    iput-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->updateTask:Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;

    .line 493
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->updateTask:Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 494
    return-void
.end method

.method public destroyView()V
    .locals 3

    .prologue
    .line 400
    sget-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 401
    sget-object v0, Lse/clearchannel/citybikes/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget-object v1, Lse/clearchannel/citybikes/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    const v2, 0x7f080055

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 403
    const/4 v0, 0x0

    sput-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 405
    :cond_0
    return-void
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 217
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->locationManager:Landroid/location/LocationManager;

    .line 218
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 596
    invoke-direct {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->requestAllUpdates()V

    .line 597
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .parameter "connectionResult"

    .prologue
    .line 607
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v9, 0x7f02007a

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 274
    const v3, 0x7f0b0043

    invoke-interface {p1, v4, v4, v5, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    .line 275
    .local v0, mapviewMenu:Landroid/view/SubMenu;
    invoke-interface {v0, v9}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 276
    const/16 v3, 0x65

    const v6, 0x7f0b003f

    invoke-interface {v0, v4, v3, v5, v6}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    sget-object v3, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v3

    if-eq v3, v8, :cond_1

    move v3, v4

    :goto_0
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 277
    const/16 v3, 0x66

    const v6, 0x7f0b0040

    invoke-interface {v0, v4, v3, v4, v6}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    sget-object v3, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getMapType()I

    move-result v3

    if-ne v3, v8, :cond_2

    move v3, v4

    :goto_1
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 278
    invoke-interface {v0, v4, v4, v4}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 279
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 280
    const v3, 0x7f0b004c

    invoke-interface {p1, v5, v8, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 282
    .local v2, refreshMap:Landroid/view/MenuItem;
    const v3, 0x7f02007b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 283
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v6, "Uppsala"

    invoke-static {v3, v6}, Lse/clearchannel/citybikes/api/FileHandler;->offLineMapExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v6, "Stockholm"

    invoke-static {v3, v6}, Lse/clearchannel/citybikes/api/FileHandler;->offLineMapExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    const v3, 0x7f0b0046

    invoke-interface {p1, v7, v7, v5, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v1

    .line 286
    .local v1, offlineMapMenu:Landroid/view/SubMenu;
    invoke-interface {v1, v9}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 287
    const/16 v3, 0x12d

    const-string v6, "Uppsala"

    invoke-interface {v1, v7, v3, v5, v6}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 288
    const/16 v3, 0x12e

    const-string v5, "Stockholm"

    invoke-interface {v1, v7, v3, v4, v5}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 290
    .end local v1           #offlineMapMenu:Landroid/view/SubMenu;
    :cond_0
    invoke-static {v2, v4}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 292
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 293
    return-void

    .end local v2           #refreshMap:Landroid/view/MenuItem;
    :cond_1
    move v3, v5

    .line 276
    goto :goto_0

    :cond_2
    move v3, v5

    .line 277
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 107
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 108
    if-nez p2, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const v0, 0x7f030020

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->view:Landroid/view/View;

    .line 112
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    iput-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 113
    new-instance v0, Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    .line 114
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 117
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 119
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 120
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->setUpMapIfNeeded()V

    .line 121
    invoke-virtual {p0, v3}, Lse/clearchannel/citybikes/CityBikesMapFragment;->setHasOptionsMenu(Z)V

    .line 124
    sget-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 125
    sget-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->isMyLocationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->myLocationEnabled:Z

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->stationMarkerMap:Ljava/util/HashMap;

    .line 128
    sget-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lse/clearchannel/citybikes/CityBikesMapFragment$1;

    invoke-direct {v1, p0}, Lse/clearchannel/citybikes/CityBikesMapFragment$1;-><init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 137
    sget-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lse/clearchannel/citybikes/CityBikesMapFragment$2;

    invoke-direct {v1, p0}, Lse/clearchannel/citybikes/CityBikesMapFragment$2;-><init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 186
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->showCurrentLocation()V

    .line 188
    invoke-static {}, Lse/clearchannel/citybikes/api/FileHandler;->getCities()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mCities:[Ljava/lang/CharSequence;

    .line 190
    sget-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->view:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 394
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 398
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 410
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 411
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 571
    if-eqz p1, :cond_0

    .line 573
    invoke-direct {p0, p1}, Lse/clearchannel/citybikes/CityBikesMapFragment;->zoomToMyLocation(Landroid/location/Location;)V

    .line 574
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    .line 585
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-nez v4, :cond_1

    .line 300
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->showCurrentLocation()V

    .line 301
    iget-boolean v4, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->myLocationEnabled:Z

    if-eqz v4, :cond_0

    const v2, 0x7f0b0033

    .line 302
    .local v2, locButtonText:I
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 362
    .end local v2           #locButtonText:I
    :goto_1
    return v3

    .line 301
    :cond_0
    const v2, 0x7f0b0044

    goto :goto_0

    .line 305
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/16 v5, 0x65

    if-ne v4, v5, :cond_2

    .line 307
    sget-object v4, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 308
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 311
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/16 v5, 0x66

    if-ne v4, v5, :cond_3

    .line 313
    sget-object v4, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    .line 314
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 317
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 319
    invoke-direct {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->connected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 321
    new-instance v1, Lse/clearchannel/citybikes/CityBikesMapFragment$4;

    invoke-direct {v1, p0}, Lse/clearchannel/citybikes/CityBikesMapFragment$4;-><init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V

    .line 343
    .local v1, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 346
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0047

    invoke-virtual {p0, v3}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Yes"

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "No"

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 362
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_1

    .line 351
    :cond_5
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->createUpdateTask()V

    goto :goto_2

    .line 354
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/16 v4, 0x12e

    if-ne v3, v4, :cond_4

    .line 357
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lse/clearchannel/citybikes/CityBikesMapFragment;->openPDF(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 197
    sget-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 198
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->disconnect()V

    .line 212
    return-void
.end method

.method public onRefresh(Lse/clearchannel/citybikes/MainActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 567
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 223
    iget-object v2, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v2}, Lcom/google/android/gms/location/LocationClient;->connect()V

    .line 224
    iget-object v2, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 227
    const/4 v2, 0x0

    iput-object v2, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    .line 229
    :cond_0
    iget-boolean v2, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->myLocationEnabled:Z

    if-eqz v2, :cond_1

    .line 230
    sget-object v2, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 232
    :cond_1
    iget-boolean v2, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->locationsUpToDate:Z

    if-nez v2, :cond_2

    .line 233
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->createUpdateTask()V

    .line 235
    :cond_2
    invoke-direct {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->connected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 237
    new-instance v1, Lse/clearchannel/citybikes/CityBikesMapFragment$3;

    invoke-direct {v1, p0}, Lse/clearchannel/citybikes/CityBikesMapFragment$3;-><init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V

    .line 259
    .local v1, dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0047

    invoke-virtual {p0, v2}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 267
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialogClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 380
    sget-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    sput-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 387
    :cond_0
    return-void
.end method

.method public openPDF(Ljava/lang/String;)V
    .locals 5
    .parameter "city"

    .prologue
    .line 711
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, p1}, Lse/clearchannel/citybikes/api/FileHandler;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 712
    .local v0, file:Ljava/io/File;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v2, target:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/pdf"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const/high16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 716
    const-string v3, "Open File"

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 718
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lse/clearchannel/citybikes/CityBikesMapFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setUpMapIfNeeded()V
    .locals 2

    .prologue
    .line 368
    sget-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    sput-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 374
    :cond_0
    return-void
.end method

.method public showCurrentLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 415
    iget-boolean v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->myLocationEnabled:Z

    if-nez v0, :cond_0

    .line 417
    sget-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 418
    iput-boolean v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->myLocationEnabled:Z

    .line 426
    :goto_0
    invoke-direct {p0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->zoomToMyLocation()V

    .line 427
    return-void

    .line 422
    :cond_0
    sget-object v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 424
    iput-boolean v2, p0, Lse/clearchannel/citybikes/CityBikesMapFragment;->myLocationEnabled:Z

    goto :goto_0
.end method

.method public zoomToBikelocation(Lse/clearchannel/citybikes/locations/BikeLocation;)V
    .locals 0
    .parameter "bl"

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lse/clearchannel/citybikes/CityBikesMapFragment;->goTo(Lse/clearchannel/citybikes/locations/BikeLocation;)V

    .line 562
    return-void
.end method

.class public Lse/clearchannel/citybikes/StationListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "StationListFragment.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lse/clearchannel/citybikes/RefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/clearchannel/citybikes/StationListFragment$SortableByDistance;,
        Lse/clearchannel/citybikes/StationListFragment$RackAdapter;
    }
.end annotation


# static fields
.field private static final FASTEST_INTERVAL:J = 0x3e8L

.field private static final FASTEST_INTERVAL_IN_SECONDS:I = 0x1

.field private static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field private static final UPDATE_INTERVAL:J = 0x1388L

.field public static final UPDATE_INTERVAL_IN_SECONDS:I = 0x5


# instance fields
.field private adapter:Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

.field locationManager:Landroid/location/LocationManager;

.field locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lse/clearchannel/citybikes/locations/BikeLocation;",
            ">;"
        }
    .end annotation
.end field

.field mLocationClient:Lcom/google/android/gms/location/LocationClient;

.field mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field myLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->locations:Ljava/util/List;

    .line 284
    return-void
.end method

.method static synthetic access$000(Lse/clearchannel/citybikes/StationListFragment;F)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lse/clearchannel/citybikes/StationListFragment;->distanceToString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private distanceToString(F)Ljava/lang/String;
    .locals 5
    .parameter "distance"

    .prologue
    .line 191
    const/high16 v1, 0x447a

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 193
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    .line 198
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    float-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 199
    .restart local v0       #s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "km"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private requestAllUpdates()V
    .locals 5

    .prologue
    .line 101
    iget-object v3, p0, Lse/clearchannel/citybikes/StationListFragment;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v2

    .line 102
    .local v2, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, prov:Ljava/lang/String;
    iget-object v3, p0, Lse/clearchannel/citybikes/StationListFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    iget-object v4, p0, Lse/clearchannel/citybikes/StationListFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v3, v4, p0}, Lcom/google/android/gms/location/LocationClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V

    goto :goto_0

    .line 106
    .end local v1           #prov:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lse/clearchannel/citybikes/StationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->locationManager:Landroid/location/LocationManager;

    .line 80
    invoke-static {}, Lse/clearchannel/citybikes/locations/LocationProvider;->getInstance()Lse/clearchannel/citybikes/locations/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lse/clearchannel/citybikes/locations/LocationProvider;->getLocations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->locations:Ljava/util/List;

    .line 81
    new-instance v0, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/StationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03001c

    iget-object v3, p0, Lse/clearchannel/citybikes/StationListFragment;->locations:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;-><init>(Lse/clearchannel/citybikes/StationListFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->adapter:Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    .line 82
    iget-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->adapter:Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    invoke-virtual {p0, v0}, Lse/clearchannel/citybikes/StationListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    invoke-virtual {p0}, Lse/clearchannel/citybikes/StationListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lse/clearchannel/citybikes/StationListFragment$1;

    invoke-direct {v1, p0}, Lse/clearchannel/citybikes/StationListFragment$1;-><init>(Lse/clearchannel/citybikes/StationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 122
    invoke-direct {p0}, Lse/clearchannel/citybikes/StationListFragment;->requestAllUpdates()V

    .line 123
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .parameter "connectionResult"

    .prologue
    .line 133
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 60
    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, mainView:Landroid/view/View;
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    iput-object v1, p0, Lse/clearchannel/citybikes/StationListFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    .line 63
    new-instance v1, Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/StationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p0, p0}, Lcom/google/android/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v1, p0, Lse/clearchannel/citybikes/StationListFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    .line 64
    iget-object v1, p0, Lse/clearchannel/citybikes/StationListFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 67
    iget-object v1, p0, Lse/clearchannel/citybikes/StationListFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 69
    iget-object v1, p0, Lse/clearchannel/citybikes/StationListFragment;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 70
    return-object v0
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8
    .parameter "location"

    .prologue
    .line 204
    if-eqz p1, :cond_1

    .line 206
    iput-object p1, p0, Lse/clearchannel/citybikes/StationListFragment;->myLocation:Landroid/location/Location;

    .line 208
    new-instance v2, Landroid/location/Location;

    iget-object v5, p0, Lse/clearchannel/citybikes/StationListFragment;->myLocation:Landroid/location/Location;

    invoke-direct {v2, v5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 210
    .local v2, dummyLocation:Landroid/location/Location;
    iget-object v5, p0, Lse/clearchannel/citybikes/StationListFragment;->locations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/clearchannel/citybikes/locations/BikeLocation;

    .line 212
    .local v0, bl:Lse/clearchannel/citybikes/locations/BikeLocation;
    invoke-virtual {v0}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    .line 213
    .local v4, point:Lcom/google/android/gms/maps/model/LatLng;
    iget-wide v5, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 214
    iget-wide v5, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 215
    iget-object v5, p0, Lse/clearchannel/citybikes/StationListFragment;->myLocation:Landroid/location/Location;

    invoke-virtual {v5, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    .line 216
    .local v1, dist:F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v5}, Lse/clearchannel/citybikes/locations/BikeLocation;->setDistanceToMyLocation(Ljava/lang/Float;)V

    goto :goto_0

    .line 218
    .end local v0           #bl:Lse/clearchannel/citybikes/locations/BikeLocation;
    .end local v1           #dist:F
    .end local v4           #point:Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    iget-object v5, p0, Lse/clearchannel/citybikes/StationListFragment;->locations:Ljava/util/List;

    new-instance v6, Lse/clearchannel/citybikes/StationListFragment$SortableByDistance;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lse/clearchannel/citybikes/StationListFragment$SortableByDistance;-><init>(Lse/clearchannel/citybikes/StationListFragment;Lse/clearchannel/citybikes/StationListFragment$1;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    iget-object v5, p0, Lse/clearchannel/citybikes/StationListFragment;->adapter:Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    invoke-virtual {v5}, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;->notifyDataSetChanged()V

    .line 221
    .end local v2           #dummyLocation:Landroid/location/Location;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 243
    iget-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/location/LocationClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->disconnect()V

    .line 257
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 226
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 232
    return-void
.end method

.method public onRefresh(Lse/clearchannel/citybikes/MainActivity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 110
    invoke-static {}, Lse/clearchannel/citybikes/locations/LocationProvider;->getInstance()Lse/clearchannel/citybikes/locations/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lse/clearchannel/citybikes/locations/LocationProvider;->getLocations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->locations:Ljava/util/List;

    .line 112
    new-instance v0, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/StationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03001c

    iget-object v3, p0, Lse/clearchannel/citybikes/StationListFragment;->locations:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;-><init>(Lse/clearchannel/citybikes/StationListFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->adapter:Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    .line 113
    iget-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->adapter:Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    invoke-virtual {p0, v0}, Lse/clearchannel/citybikes/StationListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->adapter:Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    invoke-virtual {v0}, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;->notifyDataSetChanged()V

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 261
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 262
    iget-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->connect()V

    .line 263
    invoke-static {}, Lse/clearchannel/citybikes/locations/LocationProvider;->getInstance()Lse/clearchannel/citybikes/locations/LocationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lse/clearchannel/citybikes/locations/LocationProvider;->getLocations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->locations:Ljava/util/List;

    .line 265
    new-instance v0, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    invoke-virtual {p0}, Lse/clearchannel/citybikes/StationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03001c

    iget-object v3, p0, Lse/clearchannel/citybikes/StationListFragment;->locations:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;-><init>(Lse/clearchannel/citybikes/StationListFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->adapter:Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    .line 266
    iget-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->adapter:Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    invoke-virtual {p0, v0}, Lse/clearchannel/citybikes/StationListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 268
    invoke-virtual {p0}, Lse/clearchannel/citybikes/StationListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lse/clearchannel/citybikes/StationListFragment$2;

    invoke-direct {v1, p0}, Lse/clearchannel/citybikes/StationListFragment$2;-><init>(Lse/clearchannel/citybikes/StationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    iget-object v0, p0, Lse/clearchannel/citybikes/StationListFragment;->adapter:Lse/clearchannel/citybikes/StationListFragment$RackAdapter;

    invoke-virtual {v0}, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;->notifyDataSetChanged()V

    .line 282
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 238
    return-void
.end method

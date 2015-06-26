.class Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;
.super Landroid/os/AsyncTask;
.source "CityBikesMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/clearchannel/citybikes/CityBikesMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/gms/maps/model/Marker;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/maps/model/Marker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;


# direct methods
.method private constructor <init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse/clearchannel/citybikes/CityBikesMapFragment;Lse/clearchannel/citybikes/CityBikesMapFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;-><init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/gms/maps/model/Marker;)Lcom/google/android/gms/maps/model/Marker;
    .locals 7
    .parameter "params"

    .prologue
    .line 663
    const/4 v5, 0x0

    aget-object v4, p1, v5

    .line 664
    .local v4, marker:Lcom/google/android/gms/maps/model/Marker;
    iget-object v5, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    #getter for: Lse/clearchannel/citybikes/CityBikesMapFragment;->stationMarkerMap:Ljava/util/HashMap;
    invoke-static {v5}, Lse/clearchannel/citybikes/CityBikesMapFragment;->access$100(Lse/clearchannel/citybikes/CityBikesMapFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lse/clearchannel/citybikes/locations/BikeLocation;

    .line 666
    .local v3, location:Lse/clearchannel/citybikes/locations/BikeLocation;
    :try_start_0
    iget-object v5, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    #getter for: Lse/clearchannel/citybikes/CityBikesMapFragment;->locationProvider:Lse/clearchannel/citybikes/locations/LocationProvider;
    invoke-static {v5}, Lse/clearchannel/citybikes/CityBikesMapFragment;->access$500(Lse/clearchannel/citybikes/CityBikesMapFragment;)Lse/clearchannel/citybikes/locations/LocationProvider;

    move-result-object v5

    invoke-virtual {v3}, Lse/clearchannel/citybikes/locations/BikeLocation;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lse/clearchannel/citybikes/locations/LocationProvider;->getLocationDataFromServer(Ljava/lang/Long;)Lse/clearchannel/citybikes/locations/BikeLocationData;

    move-result-object v0

    .line 667
    .local v0, data:Lse/clearchannel/citybikes/locations/BikeLocationData;
    invoke-virtual {v3, v0}, Lse/clearchannel/citybikes/locations/BikeLocation;->setLocationData(Lse/clearchannel/citybikes/locations/BikeLocationData;)V

    .line 668
    iget-object v5, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    #getter for: Lse/clearchannel/citybikes/CityBikesMapFragment;->stationMarkerMap:Ljava/util/HashMap;
    invoke-static {v5}, Lse/clearchannel/citybikes/CityBikesMapFragment;->access$100(Lse/clearchannel/citybikes/CityBikesMapFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    iget-object v5, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    #getter for: Lse/clearchannel/citybikes/CityBikesMapFragment;->stationMarkerMap:Ljava/util/HashMap;
    invoke-static {v5}, Lse/clearchannel/citybikes/CityBikesMapFragment;->access$100(Lse/clearchannel/citybikes/CityBikesMapFragment;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v0           #data:Lse/clearchannel/citybikes/locations/BikeLocationData;
    .end local v4           #marker:Lcom/google/android/gms/maps/model/Marker;
    :goto_0
    return-object v4

    .line 672
    .restart local v4       #marker:Lcom/google/android/gms/maps/model/Marker;
    :catch_0
    move-exception v1

    .line 674
    .local v1, e:Ljava/lang/Exception;
    move-object v2, v1

    .line 675
    .local v2, ex:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 649
    check-cast p1, [Lcom/google/android/gms/maps/model/Marker;

    .end local p1
    invoke-virtual {p0, p1}, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->doInBackground([Lcom/google/android/gms/maps/model/Marker;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 653
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 654
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 657
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    .line 659
    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 681
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 684
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    .line 686
    :cond_0
    if-eqz p1, :cond_1

    .line 688
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 690
    iget-object v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    #getter for: Lse/clearchannel/citybikes/CityBikesMapFragment;->stationMarkerMap:Ljava/util/HashMap;
    invoke-static {v0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->access$100(Lse/clearchannel/citybikes/CityBikesMapFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/clearchannel/citybikes/locations/BikeLocation;

    invoke-virtual {v1, v0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->zoomToBikelocation(Lse/clearchannel/citybikes/locations/BikeLocation;)V

    .line 694
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    invoke-virtual {v0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0030

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 649
    check-cast p1, Lcom/google/android/gms/maps/model/Marker;

    .end local p1
    invoke-virtual {p0, p1}, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->onPostExecute(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method

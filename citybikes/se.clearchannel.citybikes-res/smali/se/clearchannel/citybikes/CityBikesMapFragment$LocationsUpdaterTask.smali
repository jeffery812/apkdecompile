.class Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;
.super Landroid/os/AsyncTask;
.source "CityBikesMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/clearchannel/citybikes/CityBikesMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationsUpdaterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final LOCATIONS_RESULT_ERROR:Ljava/lang/Integer;

.field private final LOCATIONS_RESULT_SUCCESS:Ljava/lang/Integer;

.field final synthetic this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;


# direct methods
.method private constructor <init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 611
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->LOCATIONS_RESULT_SUCCESS:Ljava/lang/Integer;

    .line 612
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->LOCATIONS_RESULT_ERROR:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lse/clearchannel/citybikes/CityBikesMapFragment;Lse/clearchannel/citybikes/CityBikesMapFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;-><init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .parameter "voids"

    .prologue
    .line 626
    invoke-static {}, Lse/clearchannel/citybikes/locations/LocationProvider;->getInstance()Lse/clearchannel/citybikes/locations/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lse/clearchannel/citybikes/locations/LocationProvider;->getLocationsFromServer()Ljava/util/List;

    move-result-object v0

    .line 627
    .local v0, locationsFromServer:Ljava/util/List;,"Ljava/util/List<Lse/clearchannel/citybikes/locations/BikeLocation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 628
    iget-object v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->LOCATIONS_RESULT_SUCCESS:Ljava/lang/Integer;

    .line 630
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->LOCATIONS_RESULT_ERROR:Ljava/lang/Integer;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 609
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 616
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 617
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 620
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    .line 622
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 636
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    iget-object v0, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 639
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lse/clearchannel/citybikes/CityBikesMapFragment;->dialog:Landroid/app/ProgressDialog;

    .line 641
    :cond_0
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->LOCATIONS_RESULT_SUCCESS:Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    .line 642
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    #calls: Lse/clearchannel/citybikes/CityBikesMapFragment;->updateAllLocations()V
    invoke-static {v0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->access$400(Lse/clearchannel/citybikes/CityBikesMapFragment;)V

    .line 646
    :cond_1
    :goto_0
    return-void

    .line 643
    :cond_2
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->LOCATIONS_RESULT_ERROR:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 644
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

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
    .line 609
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationsUpdaterTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

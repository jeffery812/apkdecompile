.class Lse/clearchannel/citybikes/CityBikesMapFragment$2;
.super Ljava/lang/Object;
.source "CityBikesMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/CityBikesMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final contents:Landroid/view/View;

.field final synthetic this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$2;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iget-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$2;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    invoke-virtual {v0}, Lse/clearchannel/citybikes/CityBikesMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$2;->contents:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "marker"

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 6
    .parameter "marker"

    .prologue
    .line 152
    iget-object v4, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$2;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    #getter for: Lse/clearchannel/citybikes/CityBikesMapFragment;->stationMarkerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lse/clearchannel/citybikes/CityBikesMapFragment;->access$100(Lse/clearchannel/citybikes/CityBikesMapFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lse/clearchannel/citybikes/locations/BikeLocation;

    .line 158
    .local v2, location:Lse/clearchannel/citybikes/locations/BikeLocation;
    iget-object v4, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$2;->contents:Landroid/view/View;

    const v5, 0x7f080043

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 159
    .local v3, title:Landroid/widget/TextView;
    iget-object v4, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$2;->contents:Landroid/view/View;

    const v5, 0x7f080045

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    .local v0, availableBikes:Landroid/widget/TextView;
    iget-object v4, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$2;->contents:Landroid/view/View;

    const v5, 0x7f080047

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    .local v1, availableSlots:Landroid/widget/TextView;
    invoke-virtual {v2}, Lse/clearchannel/citybikes/locations/BikeLocation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v2}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocationData()Lse/clearchannel/citybikes/locations/BikeLocationData;

    move-result-object v4

    invoke-virtual {v4}, Lse/clearchannel/citybikes/locations/BikeLocationData;->getAvailableBikes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {v2}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocationData()Lse/clearchannel/citybikes/locations/BikeLocationData;

    move-result-object v4

    invoke-virtual {v4}, Lse/clearchannel/citybikes/locations/BikeLocationData;->getFreeSlots()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v4, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$2;->contents:Landroid/view/View;

    return-object v4
.end method

.class Lse/clearchannel/citybikes/CityBikesMapFragment$1;
.super Ljava/lang/Object;
.source "CityBikesMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/CityBikesMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/CityBikesMapFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$1;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 4
    .parameter "marker"

    .prologue
    const/4 v3, 0x1

    .line 131
    new-instance v0, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;

    iget-object v1, p0, Lse/clearchannel/citybikes/CityBikesMapFragment$1;->this$0:Lse/clearchannel/citybikes/CityBikesMapFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;-><init>(Lse/clearchannel/citybikes/CityBikesMapFragment;Lse/clearchannel/citybikes/CityBikesMapFragment$1;)V

    .line 132
    .local v0, task:Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;
    new-array v1, v3, [Lcom/google/android/gms/maps/model/Marker;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lse/clearchannel/citybikes/CityBikesMapFragment$LocationDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return v3
.end method

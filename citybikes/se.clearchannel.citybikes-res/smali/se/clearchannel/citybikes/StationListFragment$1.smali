.class Lse/clearchannel/citybikes/StationListFragment$1;
.super Ljava/lang/Object;
.source "StationListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lse/clearchannel/citybikes/StationListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/StationListFragment;


# direct methods
.method constructor <init>(Lse/clearchannel/citybikes/StationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lse/clearchannel/citybikes/StationListFragment$1;->this$0:Lse/clearchannel/citybikes/StationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 90
    iget-object v2, p0, Lse/clearchannel/citybikes/StationListFragment$1;->this$0:Lse/clearchannel/citybikes/StationListFragment;

    invoke-virtual {v2}, Lse/clearchannel/citybikes/StationListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lse/clearchannel/citybikes/locations/BikeLocation;

    .line 91
    .local v1, bl:Lse/clearchannel/citybikes/locations/BikeLocation;
    iget-object v2, p0, Lse/clearchannel/citybikes/StationListFragment$1;->this$0:Lse/clearchannel/citybikes/StationListFragment;

    invoke-virtual {v2}, Lse/clearchannel/citybikes/StationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lse/clearchannel/citybikes/MainActivity;

    .line 92
    .local v0, activity:Lse/clearchannel/citybikes/MainActivity;
    invoke-virtual {v0, v1}, Lse/clearchannel/citybikes/MainActivity;->switchToMapTab(Lse/clearchannel/citybikes/locations/BikeLocation;)V

    .line 94
    return-void
.end method

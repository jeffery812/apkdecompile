.class Lse/clearchannel/citybikes/StationListFragment$RackAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/clearchannel/citybikes/StationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RackAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lse/clearchannel/citybikes/locations/BikeLocation;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lse/clearchannel/citybikes/locations/BikeLocation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lse/clearchannel/citybikes/StationListFragment;


# direct methods
.method public constructor <init>(Lse/clearchannel/citybikes/StationListFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lse/clearchannel/citybikes/locations/BikeLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lse/clearchannel/citybikes/locations/BikeLocation;>;"
    iput-object p1, p0, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;->this$0:Lse/clearchannel/citybikes/StationListFragment;

    .line 141
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 142
    iput-object p4, p0, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;->items:Ljava/util/List;

    .line 144
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 148
    move-object v6, p2

    .line 149
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_0

    .line 150
    iget-object v8, p0, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;->this$0:Lse/clearchannel/citybikes/StationListFragment;

    invoke-virtual {v8}, Lse/clearchannel/citybikes/StationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 151
    .local v7, vi:Landroid/view/LayoutInflater;
    const v8, 0x7f03001c

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 153
    .end local v7           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v8, p0, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;->items:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lse/clearchannel/citybikes/locations/BikeLocation;

    .line 154
    .local v4, location:Lse/clearchannel/citybikes/locations/BikeLocation;
    if-eqz v4, :cond_4

    .line 156
    const v8, 0x7f08004f

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 157
    .local v1, description:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {v4}, Lse/clearchannel/citybikes/locations/BikeLocation;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_1
    const v8, 0x7f080052

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 163
    .local v3, distance:Landroid/widget/TextView;
    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lse/clearchannel/citybikes/locations/BikeLocation;->getDistanceToMyLocation()Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 165
    invoke-virtual {v4}, Lse/clearchannel/citybikes/locations/BikeLocation;->getDistanceToMyLocation()Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 166
    .local v2, dist:F
    iget-object v8, p0, Lse/clearchannel/citybikes/StationListFragment$RackAdapter;->this$0:Lse/clearchannel/citybikes/StationListFragment;

    #calls: Lse/clearchannel/citybikes/StationListFragment;->distanceToString(F)Ljava/lang/String;
    invoke-static {v8, v2}, Lse/clearchannel/citybikes/StationListFragment;->access$000(Lse/clearchannel/citybikes/StationListFragment;F)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .end local v2           #dist:F
    :cond_2
    const v8, 0x7f080051

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    .local v0, bikes:Landroid/widget/TextView;
    if-eqz v0, :cond_3

    .line 171
    invoke-virtual {v4}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocationData()Lse/clearchannel/citybikes/locations/BikeLocationData;

    move-result-object v8

    invoke-virtual {v8}, Lse/clearchannel/citybikes/locations/BikeLocationData;->getAvailableBikes()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_3
    const v8, 0x7f080050

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 175
    .local v5, slots:Landroid/widget/TextView;
    if-eqz v5, :cond_4

    .line 176
    invoke-virtual {v4}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocationData()Lse/clearchannel/citybikes/locations/BikeLocationData;

    move-result-object v8

    invoke-virtual {v8}, Lse/clearchannel/citybikes/locations/BikeLocationData;->getFreeSlots()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    .end local v0           #bikes:Landroid/widget/TextView;
    .end local v1           #description:Landroid/widget/TextView;
    .end local v3           #distance:Landroid/widget/TextView;
    .end local v5           #slots:Landroid/widget/TextView;
    :cond_4
    return-object v6
.end method

.class public Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;
.super Landroid/widget/FrameLayout;
.source "BalloonOverlayView.java"


# instance fields
.field private availableBikes:Landroid/widget/TextView;

.field private availableSlots:Landroid/widget/TextView;

.field private layout:Landroid/widget/LinearLayout;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "balloonBottomOffset"

    .prologue
    const/16 v3, 0xa

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0, v3, v5, v3, p2}, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->setPadding(IIII)V

    .line 65
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    .line 66
    iget-object v3, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030019

    iget-object v4, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, v:Landroid/view/View;
    const v3, 0x7f080043

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->title:Landroid/widget/TextView;

    .line 72
    const v3, 0x7f080045

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->availableBikes:Landroid/widget/TextView;

    .line 73
    const v3, 0x7f080047

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->availableSlots:Landroid/widget/TextView;

    .line 77
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 79
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    iget-object v3, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v1}, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method


# virtual methods
.method public setData(Lse/clearchannel/citybikes/locations/BikeLocation;Lse/clearchannel/citybikes/locations/BikeLocationData;)V
    .locals 2
    .parameter "location"
    .parameter "locData"

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lse/clearchannel/citybikes/locations/BikeLocation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->availableBikes:Landroid/widget/TextView;

    invoke-virtual {p1}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocationData()Lse/clearchannel/citybikes/locations/BikeLocationData;

    move-result-object v1

    invoke-virtual {v1}, Lse/clearchannel/citybikes/locations/BikeLocationData;->getAvailableBikes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lse/clearchannel/citybikes/ballonview/BalloonOverlayView;->availableSlots:Landroid/widget/TextView;

    invoke-virtual {p1}, Lse/clearchannel/citybikes/locations/BikeLocation;->getLocationData()Lse/clearchannel/citybikes/locations/BikeLocationData;

    move-result-object v1

    invoke-virtual {v1}, Lse/clearchannel/citybikes/locations/BikeLocationData;->getFreeSlots()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

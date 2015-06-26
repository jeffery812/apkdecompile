.class Lse/clearchannel/citybikes/ServiceFragment$SortableByDistance;
.super Ljava/lang/Object;
.source "ServiceFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/clearchannel/citybikes/ServiceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortableByDistance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lse/clearchannel/citybikes/locations/BikeLocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lse/clearchannel/citybikes/ServiceFragment;


# direct methods
.method private constructor <init>(Lse/clearchannel/citybikes/ServiceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lse/clearchannel/citybikes/ServiceFragment$SortableByDistance;->this$0:Lse/clearchannel/citybikes/ServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lse/clearchannel/citybikes/ServiceFragment;Lse/clearchannel/citybikes/ServiceFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lse/clearchannel/citybikes/ServiceFragment$SortableByDistance;-><init>(Lse/clearchannel/citybikes/ServiceFragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 553
    check-cast p1, Lse/clearchannel/citybikes/locations/BikeLocation;

    .end local p1
    check-cast p2, Lse/clearchannel/citybikes/locations/BikeLocation;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lse/clearchannel/citybikes/ServiceFragment$SortableByDistance;->compare(Lse/clearchannel/citybikes/locations/BikeLocation;Lse/clearchannel/citybikes/locations/BikeLocation;)I

    move-result v0

    return v0
.end method

.method public compare(Lse/clearchannel/citybikes/locations/BikeLocation;Lse/clearchannel/citybikes/locations/BikeLocation;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 557
    invoke-virtual {p1}, Lse/clearchannel/citybikes/locations/BikeLocation;->getDistanceToMyLocation()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_0

    .line 558
    const/4 v0, -0x1

    .line 563
    :goto_0
    return v0

    .line 560
    :cond_0
    invoke-virtual {p2}, Lse/clearchannel/citybikes/locations/BikeLocation;->getDistanceToMyLocation()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_1

    .line 561
    const/4 v0, 0x1

    goto :goto_0

    .line 563
    :cond_1
    invoke-virtual {p1}, Lse/clearchannel/citybikes/locations/BikeLocation;->getDistanceToMyLocation()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2}, Lse/clearchannel/citybikes/locations/BikeLocation;->getDistanceToMyLocation()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v0

    goto :goto_0
.end method

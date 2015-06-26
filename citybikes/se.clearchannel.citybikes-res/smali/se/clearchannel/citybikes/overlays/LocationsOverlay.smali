.class public Lse/clearchannel/citybikes/overlays/LocationsOverlay;
.super Ljava/lang/Object;
.source "LocationsOverlay.java"


# instance fields
.field private bikeLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lse/clearchannel/citybikes/locations/BikeLocation;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field dialog:Landroid/app/ProgressDialog;

.field markers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lse/clearchannel/citybikes/overlays/LocationsOverlay;->bikeLocations:Ljava/util/ArrayList;

    return-void
.end method

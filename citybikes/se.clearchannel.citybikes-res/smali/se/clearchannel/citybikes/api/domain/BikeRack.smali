.class public Lse/clearchannel/citybikes/api/domain/BikeRack;
.super Ljava/lang/Object;
.source "BikeRack.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "station"
.end annotation


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private empty_locks:Ljava/lang/Integer;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private id:Ljava/lang/Long;
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "rack_id"
        required = false
    .end annotation
.end field

.field private last_update:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private latitude:Ljava/lang/Double;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private longitude:Ljava/lang/Double;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private online:Ljava/lang/Integer;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private ready_bikes:Ljava/lang/Integer;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmpty_locks()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->empty_locks:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLast_update()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->last_update:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getOnline()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->online:Ljava/lang/Integer;

    return-object v0
.end method

.method public getReady_bikes()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->ready_bikes:Ljava/lang/Integer;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 46
    iput-object p1, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->description:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setEmpty_locks(Ljava/lang/Integer;)V
    .locals 0
    .parameter "empty_locks"

    .prologue
    .line 78
    iput-object p1, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->empty_locks:Ljava/lang/Integer;

    .line 79
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 38
    iput-object p1, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->id:Ljava/lang/Long;

    .line 39
    return-void
.end method

.method public setLast_update(Ljava/lang/String;)V
    .locals 0
    .parameter "last_update"

    .prologue
    .line 94
    iput-object p1, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->last_update:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0
    .parameter "latitude"

    .prologue
    .line 62
    iput-object p1, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->latitude:Ljava/lang/Double;

    .line 63
    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0
    .parameter "longitude"

    .prologue
    .line 54
    iput-object p1, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->longitude:Ljava/lang/Double;

    .line 55
    return-void
.end method

.method public setOnline(Ljava/lang/Integer;)V
    .locals 0
    .parameter "online"

    .prologue
    .line 86
    iput-object p1, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->online:Ljava/lang/Integer;

    .line 87
    return-void
.end method

.method public setReady_bikes(Ljava/lang/Integer;)V
    .locals 0
    .parameter "ready_bikes"

    .prologue
    .line 70
    iput-object p1, p0, Lse/clearchannel/citybikes/api/domain/BikeRack;->ready_bikes:Ljava/lang/Integer;

    .line 71
    return-void
.end method

.class public Lse/clearchannel/citybikes/locations/BikeLocationData;
.super Ljava/lang/Object;
.source "BikeLocationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;
    }
.end annotation


# instance fields
.field private availableBikes:I

.field private freeSlots:I

.field private id:Ljava/lang/Long;

.field private online:Z

.field private totalSlots:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    return-void
.end method


# virtual methods
.method public getAvailableBikes()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->availableBikes:I

    return v0
.end method

.method public getFreeSlots()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->freeSlots:I

    return v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getStatus()Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->online:Z

    if-nez v0, :cond_0

    .line 50
    sget-object v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->OFFLINE:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    .line 58
    :goto_0
    return-object v0

    .line 52
    :cond_0
    iget v0, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->availableBikes:I

    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_EMPTY:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    goto :goto_0

    .line 55
    :cond_1
    iget v0, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->freeSlots:I

    if-nez v0, :cond_2

    .line 56
    sget-object v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_FULL:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    goto :goto_0

    .line 58
    :cond_2
    sget-object v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_OK:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    goto :goto_0
.end method

.method public getTotalSlots()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->totalSlots:I

    return v0
.end method

.method public isOnline()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->online:Z

    return v0
.end method

.method public setAvailableBikes(I)V
    .locals 0
    .parameter "availableBikes"

    .prologue
    .line 39
    iput p1, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->availableBikes:I

    .line 40
    return-void
.end method

.method public setFreeSlots(I)V
    .locals 0
    .parameter "freeSlots"

    .prologue
    .line 33
    iput p1, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->freeSlots:I

    .line 34
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 17
    iput-object p1, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->id:Ljava/lang/Long;

    .line 18
    return-void
.end method

.method public setOnline(Z)V
    .locals 0
    .parameter "online"

    .prologue
    .line 45
    iput-boolean p1, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->online:Z

    .line 46
    return-void
.end method

.method public setTotalSlots(I)V
    .locals 0
    .parameter "totalSlots"

    .prologue
    .line 27
    iput p1, p0, Lse/clearchannel/citybikes/locations/BikeLocationData;->totalSlots:I

    .line 28
    return-void
.end method

.class public Lse/clearchannel/citybikes/api/domain/RackList;
.super Ljava/lang/Object;
.source "RackList.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "racks"
.end annotation


# instance fields
.field private racks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lse/clearchannel/citybikes/api/domain/BikeRack;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lse/clearchannel/citybikes/api/domain/BikeRack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lse/clearchannel/citybikes/api/domain/RackList;->racks:Ljava/util/List;

    return-object v0
.end method

.method public setRacks(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lse/clearchannel/citybikes/api/domain/BikeRack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, racks:Ljava/util/List;,"Ljava/util/List<Lse/clearchannel/citybikes/api/domain/BikeRack;>;"
    iput-object p1, p0, Lse/clearchannel/citybikes/api/domain/RackList;->racks:Ljava/util/List;

    .line 22
    return-void
.end method

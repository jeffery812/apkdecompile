.class public final enum Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;
.super Ljava/lang/Enum;
.source "BikeLocationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/clearchannel/citybikes/locations/BikeLocationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RackStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

.field public static final enum OFFLINE:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

.field public static final enum ONLINE_EMPTY:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

.field public static final enum ONLINE_FULL:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

.field public static final enum ONLINE_OK:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    const-string v1, "ONLINE_OK"

    invoke-direct {v0, v1, v2}, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_OK:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    new-instance v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    const-string v1, "ONLINE_FULL"

    invoke-direct {v0, v1, v3}, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_FULL:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    new-instance v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    const-string v1, "ONLINE_EMPTY"

    invoke-direct {v0, v1, v4}, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_EMPTY:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    new-instance v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v5}, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->OFFLINE:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    sget-object v1, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_OK:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    aput-object v1, v0, v2

    sget-object v1, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_FULL:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    aput-object v1, v0, v3

    sget-object v1, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->ONLINE_EMPTY:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    aput-object v1, v0, v4

    sget-object v1, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->OFFLINE:Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    aput-object v1, v0, v5

    sput-object v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->$VALUES:[Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 5
    const-class v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    return-object v0
.end method

.method public static values()[Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->$VALUES:[Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    invoke-virtual {v0}, [Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lse/clearchannel/citybikes/locations/BikeLocationData$RackStatus;

    return-object v0
.end method

.class public final enum Lio/boxcar/push/BXCFacade$PushState;
.super Ljava/lang/Enum;
.source "BXCFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/boxcar/push/BXCFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/boxcar/push/BXCFacade$PushState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/boxcar/push/BXCFacade$PushState;

.field public static final enum registered:Lio/boxcar/push/BXCFacade$PushState;

.field public static final enum registering:Lio/boxcar/push/BXCFacade$PushState;

.field public static final enum unregistered:Lio/boxcar/push/BXCFacade$PushState;

.field public static final enum unregistering:Lio/boxcar/push/BXCFacade$PushState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lio/boxcar/push/BXCFacade$PushState;

    const-string v1, "registered"

    invoke-direct {v0, v1, v2}, Lio/boxcar/push/BXCFacade$PushState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/BXCFacade$PushState;->registered:Lio/boxcar/push/BXCFacade$PushState;

    .line 70
    new-instance v0, Lio/boxcar/push/BXCFacade$PushState;

    const-string v1, "unregistered"

    invoke-direct {v0, v1, v3}, Lio/boxcar/push/BXCFacade$PushState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/BXCFacade$PushState;->unregistered:Lio/boxcar/push/BXCFacade$PushState;

    .line 71
    new-instance v0, Lio/boxcar/push/BXCFacade$PushState;

    const-string v1, "registering"

    invoke-direct {v0, v1, v4}, Lio/boxcar/push/BXCFacade$PushState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/BXCFacade$PushState;->registering:Lio/boxcar/push/BXCFacade$PushState;

    .line 72
    new-instance v0, Lio/boxcar/push/BXCFacade$PushState;

    const-string v1, "unregistering"

    invoke-direct {v0, v1, v5}, Lio/boxcar/push/BXCFacade$PushState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/BXCFacade$PushState;->unregistering:Lio/boxcar/push/BXCFacade$PushState;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Lio/boxcar/push/BXCFacade$PushState;

    sget-object v1, Lio/boxcar/push/BXCFacade$PushState;->registered:Lio/boxcar/push/BXCFacade$PushState;

    aput-object v1, v0, v2

    sget-object v1, Lio/boxcar/push/BXCFacade$PushState;->unregistered:Lio/boxcar/push/BXCFacade$PushState;

    aput-object v1, v0, v3

    sget-object v1, Lio/boxcar/push/BXCFacade$PushState;->registering:Lio/boxcar/push/BXCFacade$PushState;

    aput-object v1, v0, v4

    sget-object v1, Lio/boxcar/push/BXCFacade$PushState;->unregistering:Lio/boxcar/push/BXCFacade$PushState;

    aput-object v1, v0, v5

    sput-object v0, Lio/boxcar/push/BXCFacade$PushState;->$VALUES:[Lio/boxcar/push/BXCFacade$PushState;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/boxcar/push/BXCFacade$PushState;
    .locals 1
    .parameter "name"

    .prologue
    .line 68
    const-class v0, Lio/boxcar/push/BXCFacade$PushState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/BXCFacade$PushState;

    return-object v0
.end method

.method public static values()[Lio/boxcar/push/BXCFacade$PushState;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lio/boxcar/push/BXCFacade$PushState;->$VALUES:[Lio/boxcar/push/BXCFacade$PushState;

    invoke-virtual {v0}, [Lio/boxcar/push/BXCFacade$PushState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/boxcar/push/BXCFacade$PushState;

    return-object v0
.end method

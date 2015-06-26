.class public final enum Lio/boxcar/push/model/BXCTrackNotification$State;
.super Ljava/lang/Enum;
.source "BXCTrackNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/boxcar/push/model/BXCTrackNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/boxcar/push/model/BXCTrackNotification$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/boxcar/push/model/BXCTrackNotification$State;

.field public static final enum active:Lio/boxcar/push/model/BXCTrackNotification$State;

.field public static final enum background:Lio/boxcar/push/model/BXCTrackNotification$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lio/boxcar/push/model/BXCTrackNotification$State;

    const-string v1, "active"

    invoke-direct {v0, v1, v2}, Lio/boxcar/push/model/BXCTrackNotification$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/model/BXCTrackNotification$State;->active:Lio/boxcar/push/model/BXCTrackNotification$State;

    new-instance v0, Lio/boxcar/push/model/BXCTrackNotification$State;

    const-string v1, "background"

    invoke-direct {v0, v1, v3}, Lio/boxcar/push/model/BXCTrackNotification$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/model/BXCTrackNotification$State;->background:Lio/boxcar/push/model/BXCTrackNotification$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/boxcar/push/model/BXCTrackNotification$State;

    sget-object v1, Lio/boxcar/push/model/BXCTrackNotification$State;->active:Lio/boxcar/push/model/BXCTrackNotification$State;

    aput-object v1, v0, v2

    sget-object v1, Lio/boxcar/push/model/BXCTrackNotification$State;->background:Lio/boxcar/push/model/BXCTrackNotification$State;

    aput-object v1, v0, v3

    sput-object v0, Lio/boxcar/push/model/BXCTrackNotification$State;->$VALUES:[Lio/boxcar/push/model/BXCTrackNotification$State;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/boxcar/push/model/BXCTrackNotification$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lio/boxcar/push/model/BXCTrackNotification$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/model/BXCTrackNotification$State;

    return-object v0
.end method

.method public static values()[Lio/boxcar/push/model/BXCTrackNotification$State;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lio/boxcar/push/model/BXCTrackNotification$State;->$VALUES:[Lio/boxcar/push/model/BXCTrackNotification$State;

    invoke-virtual {v0}, [Lio/boxcar/push/model/BXCTrackNotification$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/boxcar/push/model/BXCTrackNotification$State;

    return-object v0
.end method

.class public final enum Lio/boxcar/push/model/BXCRegistration$a;
.super Ljava/lang/Enum;
.source "BXCRegistration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/boxcar/push/model/BXCRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/boxcar/push/model/BXCRegistration$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/boxcar/push/model/BXCRegistration$a;

.field public static final enum b:Lio/boxcar/push/model/BXCRegistration$a;

.field private static final synthetic c:[Lio/boxcar/push/model/BXCRegistration$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lio/boxcar/push/model/BXCRegistration$a;

    const-string v1, "production"

    invoke-direct {v0, v1, v2}, Lio/boxcar/push/model/BXCRegistration$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/model/BXCRegistration$a;->a:Lio/boxcar/push/model/BXCRegistration$a;

    .line 19
    new-instance v0, Lio/boxcar/push/model/BXCRegistration$a;

    const-string v1, "development"

    invoke-direct {v0, v1, v3}, Lio/boxcar/push/model/BXCRegistration$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/model/BXCRegistration$a;->b:Lio/boxcar/push/model/BXCRegistration$a;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lio/boxcar/push/model/BXCRegistration$a;

    sget-object v1, Lio/boxcar/push/model/BXCRegistration$a;->a:Lio/boxcar/push/model/BXCRegistration$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/boxcar/push/model/BXCRegistration$a;->b:Lio/boxcar/push/model/BXCRegistration$a;

    aput-object v1, v0, v3

    sput-object v0, Lio/boxcar/push/model/BXCRegistration$a;->c:[Lio/boxcar/push/model/BXCRegistration$a;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/boxcar/push/model/BXCRegistration$a;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lio/boxcar/push/model/BXCRegistration$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/model/BXCRegistration$a;

    return-object v0
.end method

.method public static values()[Lio/boxcar/push/model/BXCRegistration$a;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lio/boxcar/push/model/BXCRegistration$a;->c:[Lio/boxcar/push/model/BXCRegistration$a;

    invoke-virtual {v0}, [Lio/boxcar/push/model/BXCRegistration$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/boxcar/push/model/BXCRegistration$a;

    return-object v0
.end method

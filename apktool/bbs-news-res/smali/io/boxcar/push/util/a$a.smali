.class public final enum Lio/boxcar/push/util/a$a;
.super Ljava/lang/Enum;
.source "RestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/boxcar/push/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/boxcar/push/util/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/boxcar/push/util/a$a;

.field public static final enum b:Lio/boxcar/push/util/a$a;

.field public static final enum c:Lio/boxcar/push/util/a$a;

.field public static final enum d:Lio/boxcar/push/util/a$a;

.field private static final synthetic e:[Lio/boxcar/push/util/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lio/boxcar/push/util/a$a;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lio/boxcar/push/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/util/a$a;->a:Lio/boxcar/push/util/a$a;

    new-instance v0, Lio/boxcar/push/util/a$a;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lio/boxcar/push/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/util/a$a;->b:Lio/boxcar/push/util/a$a;

    new-instance v0, Lio/boxcar/push/util/a$a;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lio/boxcar/push/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/util/a$a;->c:Lio/boxcar/push/util/a$a;

    new-instance v0, Lio/boxcar/push/util/a$a;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lio/boxcar/push/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/boxcar/push/util/a$a;->d:Lio/boxcar/push/util/a$a;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Lio/boxcar/push/util/a$a;

    sget-object v1, Lio/boxcar/push/util/a$a;->a:Lio/boxcar/push/util/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/boxcar/push/util/a$a;->b:Lio/boxcar/push/util/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/boxcar/push/util/a$a;->c:Lio/boxcar/push/util/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/boxcar/push/util/a$a;->d:Lio/boxcar/push/util/a$a;

    aput-object v1, v0, v5

    sput-object v0, Lio/boxcar/push/util/a$a;->e:[Lio/boxcar/push/util/a$a;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/boxcar/push/util/a$a;
    .locals 1
    .parameter "name"

    .prologue
    .line 48
    const-class v0, Lio/boxcar/push/util/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/util/a$a;

    return-object v0
.end method

.method public static values()[Lio/boxcar/push/util/a$a;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lio/boxcar/push/util/a$a;->e:[Lio/boxcar/push/util/a$a;

    invoke-virtual {v0}, [Lio/boxcar/push/util/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/boxcar/push/util/a$a;

    return-object v0
.end method

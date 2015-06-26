.class public final enum Lbbc/mobile/news/model/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbbc/mobile/news/model/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lbbc/mobile/news/model/Orientation;

.field public static final enum LAND:Lbbc/mobile/news/model/Orientation;

.field public static final enum PORT:Lbbc/mobile/news/model/Orientation;

.field public static final enum UNDEF:Lbbc/mobile/news/model/Orientation;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lbbc/mobile/news/model/Orientation;

    const-string v1, "UNDEF"

    const-string v2, "undef"

    invoke-direct {v0, v1, v3, v2}, Lbbc/mobile/news/model/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbbc/mobile/news/model/Orientation;->UNDEF:Lbbc/mobile/news/model/Orientation;

    new-instance v0, Lbbc/mobile/news/model/Orientation;

    const-string v1, "PORT"

    const-string v2, "port"

    invoke-direct {v0, v1, v4, v2}, Lbbc/mobile/news/model/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbbc/mobile/news/model/Orientation;->PORT:Lbbc/mobile/news/model/Orientation;

    new-instance v0, Lbbc/mobile/news/model/Orientation;

    const-string v1, "LAND"

    const-string v2, "land"

    invoke-direct {v0, v1, v5, v2}, Lbbc/mobile/news/model/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbbc/mobile/news/model/Orientation;->LAND:Lbbc/mobile/news/model/Orientation;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lbbc/mobile/news/model/Orientation;

    sget-object v1, Lbbc/mobile/news/model/Orientation;->UNDEF:Lbbc/mobile/news/model/Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lbbc/mobile/news/model/Orientation;->PORT:Lbbc/mobile/news/model/Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lbbc/mobile/news/model/Orientation;->LAND:Lbbc/mobile/news/model/Orientation;

    aput-object v1, v0, v5

    sput-object v0, Lbbc/mobile/news/model/Orientation;->ENUM$VALUES:[Lbbc/mobile/news/model/Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lbbc/mobile/news/model/Orientation;->mName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static parseOrientation(Landroid/content/res/Configuration;)Lbbc/mobile/news/model/Orientation;
    .locals 1
    .parameter "config"

    .prologue
    .line 25
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lbbc/mobile/news/model/Orientation;->parseOrientationInt(I)Lbbc/mobile/news/model/Orientation;

    move-result-object v0

    return-object v0
.end method

.method public static parseOrientationInt(I)Lbbc/mobile/news/model/Orientation;
    .locals 1
    .parameter "orientation"

    .prologue
    .line 31
    invoke-static {}, Lbbc/mobile/news/model/Orientation;->values()[Lbbc/mobile/news/model/Orientation;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbbc/mobile/news/model/Orientation;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lbbc/mobile/news/model/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Orientation;

    return-object v0
.end method

.method public static values()[Lbbc/mobile/news/model/Orientation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lbbc/mobile/news/model/Orientation;->ENUM$VALUES:[Lbbc/mobile/news/model/Orientation;

    array-length v1, v0

    new-array v2, v1, [Lbbc/mobile/news/model/Orientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lbbc/mobile/news/model/Orientation;->mName:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lbbc/mobile/news/util/Environment;
.super Ljava/lang/Enum;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbbc/mobile/news/util/Environment;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lbbc/mobile/news/util/Environment;

.field private static final synthetic ENUM$VALUES:[Lbbc/mobile/news/util/Environment;

.field public static final enum INT:Lbbc/mobile/news/util/Environment;

.field public static final enum LIVE:Lbbc/mobile/news/util/Environment;

.field public static final enum STAGE:Lbbc/mobile/news/util/Environment;

.field public static final enum TEST:Lbbc/mobile/news/util/Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lbbc/mobile/news/util/Environment;

    const-string v1, "TEST"

    invoke-direct {v0, v1, v2}, Lbbc/mobile/news/util/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbbc/mobile/news/util/Environment;->TEST:Lbbc/mobile/news/util/Environment;

    new-instance v0, Lbbc/mobile/news/util/Environment;

    const-string v1, "STAGE"

    invoke-direct {v0, v1, v3}, Lbbc/mobile/news/util/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbbc/mobile/news/util/Environment;->STAGE:Lbbc/mobile/news/util/Environment;

    new-instance v0, Lbbc/mobile/news/util/Environment;

    const-string v1, "INT"

    invoke-direct {v0, v1, v4}, Lbbc/mobile/news/util/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbbc/mobile/news/util/Environment;->INT:Lbbc/mobile/news/util/Environment;

    new-instance v0, Lbbc/mobile/news/util/Environment;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v5}, Lbbc/mobile/news/util/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbbc/mobile/news/util/Environment;->LIVE:Lbbc/mobile/news/util/Environment;

    new-instance v0, Lbbc/mobile/news/util/Environment;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v6}, Lbbc/mobile/news/util/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbbc/mobile/news/util/Environment;->DEBUG:Lbbc/mobile/news/util/Environment;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lbbc/mobile/news/util/Environment;

    sget-object v1, Lbbc/mobile/news/util/Environment;->TEST:Lbbc/mobile/news/util/Environment;

    aput-object v1, v0, v2

    sget-object v1, Lbbc/mobile/news/util/Environment;->STAGE:Lbbc/mobile/news/util/Environment;

    aput-object v1, v0, v3

    sget-object v1, Lbbc/mobile/news/util/Environment;->INT:Lbbc/mobile/news/util/Environment;

    aput-object v1, v0, v4

    sget-object v1, Lbbc/mobile/news/util/Environment;->LIVE:Lbbc/mobile/news/util/Environment;

    aput-object v1, v0, v5

    sget-object v1, Lbbc/mobile/news/util/Environment;->DEBUG:Lbbc/mobile/news/util/Environment;

    aput-object v1, v0, v6

    sput-object v0, Lbbc/mobile/news/util/Environment;->ENUM$VALUES:[Lbbc/mobile/news/util/Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbbc/mobile/news/util/Environment;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lbbc/mobile/news/util/Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/util/Environment;

    return-object v0
.end method

.method public static values()[Lbbc/mobile/news/util/Environment;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lbbc/mobile/news/util/Environment;->ENUM$VALUES:[Lbbc/mobile/news/util/Environment;

    array-length v1, v0

    new-array v2, v1, [Lbbc/mobile/news/util/Environment;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

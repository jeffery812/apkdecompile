.class public final enum Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;
.super Ljava/lang/Enum;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/stats/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COUNTER_NAMES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

.field private static final synthetic ENUM$VALUES:[Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 108
    new-instance v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v1, "ACTION"

    invoke-direct {v0, v1, v2}, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    .line 107
    const/4 v0, 0x1

    new-array v0, v0, [Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    aput-object v1, v0, v2

    sput-object v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ENUM$VALUES:[Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    return-object v0
.end method

.method public static values()[Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ENUM$VALUES:[Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    array-length v1, v0

    new-array v2, v1, [Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

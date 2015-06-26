.class final enum Lbbc/beacon/android/IStatsAvSession$Audience;
.super Ljava/lang/Enum;
.source "IStatsAvSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/beacon/android/IStatsAvSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Audience"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbbc/beacon/android/IStatsAvSession$Audience;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUDIO:Lbbc/beacon/android/IStatsAvSession$Audience;

.field private static final synthetic ENUM$VALUES:[Lbbc/beacon/android/IStatsAvSession$Audience;

.field public static final enum VIDEO:Lbbc/beacon/android/IStatsAvSession$Audience;


# instance fields
.field private final statsValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lbbc/beacon/android/IStatsAvSession$Audience;

    const-string v1, "VIDEO"

    const-string v2, "v"

    invoke-direct {v0, v1, v3, v2}, Lbbc/beacon/android/IStatsAvSession$Audience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbbc/beacon/android/IStatsAvSession$Audience;->VIDEO:Lbbc/beacon/android/IStatsAvSession$Audience;

    new-instance v0, Lbbc/beacon/android/IStatsAvSession$Audience;

    const-string v1, "AUDIO"

    const-string v2, "a"

    invoke-direct {v0, v1, v4, v2}, Lbbc/beacon/android/IStatsAvSession$Audience;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbbc/beacon/android/IStatsAvSession$Audience;->AUDIO:Lbbc/beacon/android/IStatsAvSession$Audience;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lbbc/beacon/android/IStatsAvSession$Audience;

    sget-object v1, Lbbc/beacon/android/IStatsAvSession$Audience;->VIDEO:Lbbc/beacon/android/IStatsAvSession$Audience;

    aput-object v1, v0, v3

    sget-object v1, Lbbc/beacon/android/IStatsAvSession$Audience;->AUDIO:Lbbc/beacon/android/IStatsAvSession$Audience;

    aput-object v1, v0, v4

    sput-object v0, Lbbc/beacon/android/IStatsAvSession$Audience;->ENUM$VALUES:[Lbbc/beacon/android/IStatsAvSession$Audience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "statsValue"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lbbc/beacon/android/IStatsAvSession$Audience;->statsValue:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbbc/beacon/android/IStatsAvSession$Audience;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lbbc/beacon/android/IStatsAvSession$Audience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbbc/beacon/android/IStatsAvSession$Audience;

    return-object v0
.end method

.method public static values()[Lbbc/beacon/android/IStatsAvSession$Audience;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lbbc/beacon/android/IStatsAvSession$Audience;->ENUM$VALUES:[Lbbc/beacon/android/IStatsAvSession$Audience;

    array-length v1, v0

    new-array v2, v1, [Lbbc/beacon/android/IStatsAvSession$Audience;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lbbc/beacon/android/IStatsAvSession$Audience;->statsValue:Ljava/lang/String;

    return-object v0
.end method

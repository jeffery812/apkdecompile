.class public final enum Lorg/springframework/http/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/springframework/http/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/springframework/http/HttpMethod;

.field public static final enum DELETE:Lorg/springframework/http/HttpMethod;

.field public static final enum GET:Lorg/springframework/http/HttpMethod;

.field public static final enum HEAD:Lorg/springframework/http/HttpMethod;

.field public static final enum OPTIONS:Lorg/springframework/http/HttpMethod;

.field public static final enum POST:Lorg/springframework/http/HttpMethod;

.field public static final enum PUT:Lorg/springframework/http/HttpMethod;

.field public static final enum TRACE:Lorg/springframework/http/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lorg/springframework/http/HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lorg/springframework/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/http/HttpMethod;->GET:Lorg/springframework/http/HttpMethod;

    new-instance v0, Lorg/springframework/http/HttpMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lorg/springframework/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    new-instance v0, Lorg/springframework/http/HttpMethod;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v5}, Lorg/springframework/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/http/HttpMethod;->HEAD:Lorg/springframework/http/HttpMethod;

    new-instance v0, Lorg/springframework/http/HttpMethod;

    const-string v1, "OPTIONS"

    invoke-direct {v0, v1, v6}, Lorg/springframework/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/http/HttpMethod;->OPTIONS:Lorg/springframework/http/HttpMethod;

    new-instance v0, Lorg/springframework/http/HttpMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v7}, Lorg/springframework/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/http/HttpMethod;->PUT:Lorg/springframework/http/HttpMethod;

    new-instance v0, Lorg/springframework/http/HttpMethod;

    const-string v1, "DELETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/springframework/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/http/HttpMethod;->DELETE:Lorg/springframework/http/HttpMethod;

    new-instance v0, Lorg/springframework/http/HttpMethod;

    const-string v1, "TRACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/springframework/http/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/http/HttpMethod;->TRACE:Lorg/springframework/http/HttpMethod;

    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/springframework/http/HttpMethod;

    sget-object v1, Lorg/springframework/http/HttpMethod;->GET:Lorg/springframework/http/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lorg/springframework/http/HttpMethod;->POST:Lorg/springframework/http/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lorg/springframework/http/HttpMethod;->HEAD:Lorg/springframework/http/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lorg/springframework/http/HttpMethod;->OPTIONS:Lorg/springframework/http/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lorg/springframework/http/HttpMethod;->PUT:Lorg/springframework/http/HttpMethod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/springframework/http/HttpMethod;->DELETE:Lorg/springframework/http/HttpMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/springframework/http/HttpMethod;->TRACE:Lorg/springframework/http/HttpMethod;

    aput-object v2, v0, v1

    sput-object v0, Lorg/springframework/http/HttpMethod;->$VALUES:[Lorg/springframework/http/HttpMethod;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/springframework/http/HttpMethod;
    .locals 1
    .parameter "name"

    .prologue
    .line 27
    const-class v0, Lorg/springframework/http/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/HttpMethod;

    return-object v0
.end method

.method public static values()[Lorg/springframework/http/HttpMethod;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/springframework/http/HttpMethod;->$VALUES:[Lorg/springframework/http/HttpMethod;

    invoke-virtual {v0}, [Lorg/springframework/http/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/springframework/http/HttpMethod;

    return-object v0
.end method

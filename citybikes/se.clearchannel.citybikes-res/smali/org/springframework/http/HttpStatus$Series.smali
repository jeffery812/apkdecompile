.class public final enum Lorg/springframework/http/HttpStatus$Series;
.super Ljava/lang/Enum;
.source "HttpStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/http/HttpStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Series"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/springframework/http/HttpStatus$Series;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/springframework/http/HttpStatus$Series;

.field public static final enum CLIENT_ERROR:Lorg/springframework/http/HttpStatus$Series;

.field public static final enum INFORMATIONAL:Lorg/springframework/http/HttpStatus$Series;

.field public static final enum REDIRECTION:Lorg/springframework/http/HttpStatus$Series;

.field public static final enum SERVER_ERROR:Lorg/springframework/http/HttpStatus$Series;

.field public static final enum SUCCESSFUL:Lorg/springframework/http/HttpStatus$Series;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 436
    new-instance v0, Lorg/springframework/http/HttpStatus$Series;

    const-string v1, "INFORMATIONAL"

    invoke-direct {v0, v1, v7, v3}, Lorg/springframework/http/HttpStatus$Series;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/springframework/http/HttpStatus$Series;->INFORMATIONAL:Lorg/springframework/http/HttpStatus$Series;

    .line 437
    new-instance v0, Lorg/springframework/http/HttpStatus$Series;

    const-string v1, "SUCCESSFUL"

    invoke-direct {v0, v1, v3, v4}, Lorg/springframework/http/HttpStatus$Series;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/springframework/http/HttpStatus$Series;->SUCCESSFUL:Lorg/springframework/http/HttpStatus$Series;

    .line 438
    new-instance v0, Lorg/springframework/http/HttpStatus$Series;

    const-string v1, "REDIRECTION"

    invoke-direct {v0, v1, v4, v5}, Lorg/springframework/http/HttpStatus$Series;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/springframework/http/HttpStatus$Series;->REDIRECTION:Lorg/springframework/http/HttpStatus$Series;

    .line 439
    new-instance v0, Lorg/springframework/http/HttpStatus$Series;

    const-string v1, "CLIENT_ERROR"

    invoke-direct {v0, v1, v5, v6}, Lorg/springframework/http/HttpStatus$Series;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/springframework/http/HttpStatus$Series;->CLIENT_ERROR:Lorg/springframework/http/HttpStatus$Series;

    .line 440
    new-instance v0, Lorg/springframework/http/HttpStatus$Series;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/springframework/http/HttpStatus$Series;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/springframework/http/HttpStatus$Series;->SERVER_ERROR:Lorg/springframework/http/HttpStatus$Series;

    .line 434
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/springframework/http/HttpStatus$Series;

    sget-object v1, Lorg/springframework/http/HttpStatus$Series;->INFORMATIONAL:Lorg/springframework/http/HttpStatus$Series;

    aput-object v1, v0, v7

    sget-object v1, Lorg/springframework/http/HttpStatus$Series;->SUCCESSFUL:Lorg/springframework/http/HttpStatus$Series;

    aput-object v1, v0, v3

    sget-object v1, Lorg/springframework/http/HttpStatus$Series;->REDIRECTION:Lorg/springframework/http/HttpStatus$Series;

    aput-object v1, v0, v4

    sget-object v1, Lorg/springframework/http/HttpStatus$Series;->CLIENT_ERROR:Lorg/springframework/http/HttpStatus$Series;

    aput-object v1, v0, v5

    sget-object v1, Lorg/springframework/http/HttpStatus$Series;->SERVER_ERROR:Lorg/springframework/http/HttpStatus$Series;

    aput-object v1, v0, v6

    sput-object v0, Lorg/springframework/http/HttpStatus$Series;->$VALUES:[Lorg/springframework/http/HttpStatus$Series;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 445
    iput p3, p0, Lorg/springframework/http/HttpStatus$Series;->value:I

    .line 446
    return-void
.end method

.method static synthetic access$000(Lorg/springframework/http/HttpStatus;)Lorg/springframework/http/HttpStatus$Series;
    .locals 1
    .parameter "x0"

    .prologue
    .line 434
    invoke-static {p0}, Lorg/springframework/http/HttpStatus$Series;->valueOf(Lorg/springframework/http/HttpStatus;)Lorg/springframework/http/HttpStatus$Series;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/springframework/http/HttpStatus$Series;
    .locals 1
    .parameter "name"

    .prologue
    .line 434
    const-class v0, Lorg/springframework/http/HttpStatus$Series;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/springframework/http/HttpStatus$Series;

    return-object v0
.end method

.method private static valueOf(Lorg/springframework/http/HttpStatus;)Lorg/springframework/http/HttpStatus$Series;
    .locals 8
    .parameter "status"

    .prologue
    .line 456
    invoke-virtual {p0}, Lorg/springframework/http/HttpStatus;->value()I

    move-result v5

    div-int/lit8 v4, v5, 0x64

    .line 457
    .local v4, seriesCode:I
    invoke-static {}, Lorg/springframework/http/HttpStatus$Series;->values()[Lorg/springframework/http/HttpStatus$Series;

    move-result-object v0

    .local v0, arr$:[Lorg/springframework/http/HttpStatus$Series;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 458
    .local v3, series:Lorg/springframework/http/HttpStatus$Series;
    iget v5, v3, Lorg/springframework/http/HttpStatus$Series;->value:I

    if-ne v5, v4, :cond_0

    .line 459
    return-object v3

    .line 457
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v3           #series:Lorg/springframework/http/HttpStatus$Series;
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No matching constant for ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static values()[Lorg/springframework/http/HttpStatus$Series;
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lorg/springframework/http/HttpStatus$Series;->$VALUES:[Lorg/springframework/http/HttpStatus$Series;

    invoke-virtual {v0}, [Lorg/springframework/http/HttpStatus$Series;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/springframework/http/HttpStatus$Series;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lorg/springframework/http/HttpStatus$Series;->value:I

    return v0
.end method

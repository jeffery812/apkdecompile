.class abstract enum Lorg/springframework/web/util/UriComponents$Type;
.super Ljava/lang/Enum;
.source "UriComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/util/UriComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/springframework/web/util/UriComponents$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/springframework/web/util/UriComponents$Type;

.field public static final enum AUTHORITY:Lorg/springframework/web/util/UriComponents$Type;

.field public static final enum FRAGMENT:Lorg/springframework/web/util/UriComponents$Type;

.field public static final enum HOST:Lorg/springframework/web/util/UriComponents$Type;

.field public static final enum PATH:Lorg/springframework/web/util/UriComponents$Type;

.field public static final enum PATH_SEGMENT:Lorg/springframework/web/util/UriComponents$Type;

.field public static final enum PORT:Lorg/springframework/web/util/UriComponents$Type;

.field public static final enum QUERY:Lorg/springframework/web/util/UriComponents$Type;

.field public static final enum QUERY_PARAM:Lorg/springframework/web/util/UriComponents$Type;

.field public static final enum SCHEME:Lorg/springframework/web/util/UriComponents$Type;

.field public static final enum USER_INFO:Lorg/springframework/web/util/UriComponents$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 612
    new-instance v0, Lorg/springframework/web/util/UriComponents$Type$1;

    const-string v1, "SCHEME"

    invoke-direct {v0, v1, v3}, Lorg/springframework/web/util/UriComponents$Type$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/web/util/UriComponents$Type;->SCHEME:Lorg/springframework/web/util/UriComponents$Type;

    .line 618
    new-instance v0, Lorg/springframework/web/util/UriComponents$Type$2;

    const-string v1, "AUTHORITY"

    invoke-direct {v0, v1, v4}, Lorg/springframework/web/util/UriComponents$Type$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/web/util/UriComponents$Type;->AUTHORITY:Lorg/springframework/web/util/UriComponents$Type;

    .line 624
    new-instance v0, Lorg/springframework/web/util/UriComponents$Type$3;

    const-string v1, "USER_INFO"

    invoke-direct {v0, v1, v5}, Lorg/springframework/web/util/UriComponents$Type$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/web/util/UriComponents$Type;->USER_INFO:Lorg/springframework/web/util/UriComponents$Type;

    .line 630
    new-instance v0, Lorg/springframework/web/util/UriComponents$Type$4;

    const-string v1, "HOST"

    invoke-direct {v0, v1, v6}, Lorg/springframework/web/util/UriComponents$Type$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/web/util/UriComponents$Type;->HOST:Lorg/springframework/web/util/UriComponents$Type;

    .line 636
    new-instance v0, Lorg/springframework/web/util/UriComponents$Type$5;

    const-string v1, "PORT"

    invoke-direct {v0, v1, v7}, Lorg/springframework/web/util/UriComponents$Type$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/web/util/UriComponents$Type;->PORT:Lorg/springframework/web/util/UriComponents$Type;

    .line 642
    new-instance v0, Lorg/springframework/web/util/UriComponents$Type$6;

    const-string v1, "PATH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/springframework/web/util/UriComponents$Type$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/web/util/UriComponents$Type;->PATH:Lorg/springframework/web/util/UriComponents$Type;

    .line 648
    new-instance v0, Lorg/springframework/web/util/UriComponents$Type$7;

    const-string v1, "PATH_SEGMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/springframework/web/util/UriComponents$Type$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/web/util/UriComponents$Type;->PATH_SEGMENT:Lorg/springframework/web/util/UriComponents$Type;

    .line 654
    new-instance v0, Lorg/springframework/web/util/UriComponents$Type$8;

    const-string v1, "QUERY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/springframework/web/util/UriComponents$Type$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/web/util/UriComponents$Type;->QUERY:Lorg/springframework/web/util/UriComponents$Type;

    .line 660
    new-instance v0, Lorg/springframework/web/util/UriComponents$Type$9;

    const-string v1, "QUERY_PARAM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/springframework/web/util/UriComponents$Type$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/web/util/UriComponents$Type;->QUERY_PARAM:Lorg/springframework/web/util/UriComponents$Type;

    .line 671
    new-instance v0, Lorg/springframework/web/util/UriComponents$Type$10;

    const-string v1, "FRAGMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/springframework/web/util/UriComponents$Type$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/springframework/web/util/UriComponents$Type;->FRAGMENT:Lorg/springframework/web/util/UriComponents$Type;

    .line 610
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/springframework/web/util/UriComponents$Type;

    sget-object v1, Lorg/springframework/web/util/UriComponents$Type;->SCHEME:Lorg/springframework/web/util/UriComponents$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/springframework/web/util/UriComponents$Type;->AUTHORITY:Lorg/springframework/web/util/UriComponents$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/springframework/web/util/UriComponents$Type;->USER_INFO:Lorg/springframework/web/util/UriComponents$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/springframework/web/util/UriComponents$Type;->HOST:Lorg/springframework/web/util/UriComponents$Type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/springframework/web/util/UriComponents$Type;->PORT:Lorg/springframework/web/util/UriComponents$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/springframework/web/util/UriComponents$Type;->PATH:Lorg/springframework/web/util/UriComponents$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/springframework/web/util/UriComponents$Type;->PATH_SEGMENT:Lorg/springframework/web/util/UriComponents$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/springframework/web/util/UriComponents$Type;->QUERY:Lorg/springframework/web/util/UriComponents$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/springframework/web/util/UriComponents$Type;->QUERY_PARAM:Lorg/springframework/web/util/UriComponents$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/springframework/web/util/UriComponents$Type;->FRAGMENT:Lorg/springframework/web/util/UriComponents$Type;

    aput-object v2, v0, v1

    sput-object v0, Lorg/springframework/web/util/UriComponents$Type;->$VALUES:[Lorg/springframework/web/util/UriComponents$Type;

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
    .line 610
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/springframework/web/util/UriComponents$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 610
    invoke-direct {p0, p1, p2}, Lorg/springframework/web/util/UriComponents$Type;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/springframework/web/util/UriComponents$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 610
    const-class v0, Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/springframework/web/util/UriComponents$Type;

    return-object v0
.end method

.method public static values()[Lorg/springframework/web/util/UriComponents$Type;
    .locals 1

    .prologue
    .line 610
    sget-object v0, Lorg/springframework/web/util/UriComponents$Type;->$VALUES:[Lorg/springframework/web/util/UriComponents$Type;

    invoke-virtual {v0}, [Lorg/springframework/web/util/UriComponents$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/springframework/web/util/UriComponents$Type;

    return-object v0
.end method


# virtual methods
.method public abstract isAllowed(I)Z
.end method

.method protected isAlpha(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 692
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDigit(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 701
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isGenericDelimiter(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 710
    const/16 v0, 0x3a

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2f

    if-eq v0, p1, :cond_0

    const/16 v0, 0x3f

    if-eq v0, p1, :cond_0

    const/16 v0, 0x23

    if-eq v0, p1, :cond_0

    const/16 v0, 0x5b

    if-eq v0, p1, :cond_0

    const/16 v0, 0x5d

    if-eq v0, p1, :cond_0

    const/16 v0, 0x40

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPchar(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 747
    invoke-virtual {p0, p1}, Lorg/springframework/web/util/UriComponents$Type;->isUnreserved(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/springframework/web/util/UriComponents$Type;->isSubDelimiter(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3a

    if-eq v0, p1, :cond_0

    const/16 v0, 0x40

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReserved(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 729
    invoke-virtual {p0, p1}, Lorg/springframework/web/util/UriComponents$Type;->isGenericDelimiter(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/springframework/web/util/UriComponents$Type;->isReserved(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSubDelimiter(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 719
    const/16 v0, 0x21

    if-eq v0, p1, :cond_0

    const/16 v0, 0x24

    if-eq v0, p1, :cond_0

    const/16 v0, 0x26

    if-eq v0, p1, :cond_0

    const/16 v0, 0x27

    if-eq v0, p1, :cond_0

    const/16 v0, 0x28

    if-eq v0, p1, :cond_0

    const/16 v0, 0x29

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2a

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2b

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2c

    if-eq v0, p1, :cond_0

    const/16 v0, 0x3b

    if-eq v0, p1, :cond_0

    const/16 v0, 0x3d

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUnreserved(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lorg/springframework/web/util/UriComponents$Type;->isAlpha(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/springframework/web/util/UriComponents$Type;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2e

    if-eq v0, p1, :cond_0

    const/16 v0, 0x5f

    if-eq v0, p1, :cond_0

    const/16 v0, 0x7e

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

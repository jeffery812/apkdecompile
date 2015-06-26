.class public final enum Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
.super Ljava/lang/Enum;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/api/AdError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum API_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum COMPANION_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum FAILED_TO_REQUEST_ADS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum OVERLAY_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum OVERLAY_AD_PLAYING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum PLAYLIST_MALFORMED_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum REQUIRED_LISTENERS_NOT_ADDED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum UNKNOWN_AD_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_ASSET_NOT_FOUND:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_INVALID_URL:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_LINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_LOAD_TIMEOUT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_MALFORMED_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_NONLINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VAST_TOO_MANY_REDIRECTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field public static final enum VIDEO_PLAY_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

.field private static final synthetic b:[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 54
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "VAST_MALFORMED_RESPONSE"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_MALFORMED_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 59
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "UNKNOWN_AD_RESPONSE"

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v6, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_AD_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 65
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "VAST_LOAD_TIMEOUT"

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v7, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_LOAD_TIMEOUT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 70
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "VAST_TOO_MANY_REDIRECTS"

    const/16 v2, 0x12e

    invoke-direct {v0, v1, v8, v2}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_TOO_MANY_REDIRECTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 76
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "VAST_INVALID_URL"

    const/4 v2, 0x5

    const/16 v3, 0x12f

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_INVALID_URL:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 81
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "VIDEO_PLAY_ERROR"

    const/4 v2, 0x6

    const/16 v3, 0x190

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VIDEO_PLAY_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 87
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "VAST_LINEAR_ASSET_MISMATCH"

    const/4 v2, 0x7

    const/16 v3, 0x193

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_LINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 92
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "OVERLAY_AD_PLAYING_FAILED"

    const/16 v2, 0x8

    const/16 v3, 0x1f4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->OVERLAY_AD_PLAYING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 97
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "OVERLAY_AD_LOADING_FAILED"

    const/16 v2, 0x9

    const/16 v3, 0x1f6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->OVERLAY_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 103
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "VAST_NONLINEAR_ASSET_MISMATCH"

    const/16 v2, 0xa

    const/16 v3, 0x1f7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_NONLINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 108
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "COMPANION_AD_LOADING_FAILED"

    const/16 v2, 0xb

    const/16 v3, 0x25b

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->COMPANION_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 114
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "UNKNOWN_ERROR"

    const/16 v2, 0xc

    const/16 v3, 0x384

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 119
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "PLAYLIST_MALFORMED_RESPONSE"

    const/16 v2, 0xd

    const/16 v3, 0x3ec

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->PLAYLIST_MALFORMED_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 124
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "FAILED_TO_REQUEST_ADS"

    const/16 v2, 0xe

    const/16 v3, 0x3ed

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->FAILED_TO_REQUEST_ADS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 129
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "REQUIRED_LISTENERS_NOT_ADDED"

    const/16 v2, 0xf

    const/16 v3, 0x3ee

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->REQUIRED_LISTENERS_NOT_ADDED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 134
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "VAST_ASSET_NOT_FOUND"

    const/16 v2, 0x10

    const/16 v3, 0x3ef

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_ASSET_NOT_FOUND:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 139
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "INVALID_ARGUMENTS"

    const/16 v2, 0x11

    const/16 v3, 0x44d

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 144
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    const-string v1, "API_ERROR"

    const/16 v2, 0x12

    const/16 v3, 0x44e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->API_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    .line 46
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_MALFORMED_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_AD_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_LOAD_TIMEOUT:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_TOO_MANY_REDIRECTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_INVALID_URL:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VIDEO_PLAY_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_LINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->OVERLAY_AD_PLAYING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->OVERLAY_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_NONLINEAR_ASSET_MISMATCH:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->COMPANION_AD_LOADING_FAILED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->PLAYLIST_MALFORMED_RESPONSE:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->FAILED_TO_REQUEST_ADS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->REQUIRED_LISTENERS_NOT_ADDED:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->VAST_ASSET_NOT_FOUND:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INVALID_ARGUMENTS:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->API_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->b:[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "errorNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 155
    iput p3, p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->a:I

    .line 156
    return-void
.end method

.method static a(I)Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
    .locals 5
    .parameter

    .prologue
    .line 163
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->values()[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 164
    iget v4, v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->a:I

    if-ne v4, p0, :cond_0

    .line 173
    :goto_1
    return-object v0

    .line 163
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :cond_1
    const/16 v0, 0x4b4

    if-ne v0, p0, :cond_2

    .line 170
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->INTERNAL_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    goto :goto_1

    .line 173
    :cond_2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->UNKNOWN_ERROR:Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
    .locals 1
    .parameter "name"

    .prologue
    .line 46
    const-class v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->b:[Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    invoke-virtual {v0}, [Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;

    return-object v0
.end method


# virtual methods
.method public final equals(I)Z
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 177
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/api/AdError$AdErrorCode;->a:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

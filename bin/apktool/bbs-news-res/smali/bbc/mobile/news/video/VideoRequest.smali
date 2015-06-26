.class public Lbbc/mobile/news/video/VideoRequest;
.super Ljava/lang/Object;
.source "VideoRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final AD_TAG_URL_FMT:Ljava/lang/String; = "http://pubads.g.doubleclick.net/gampad/ads?sz=512x288&impl=s&gdfp_req=1&env=vp&output=xml_vast2&m_ast=vast&unviewed_position_start=1&iu=%s&ciu_szs=&url=%s&correlator=%s&cust_params=%s"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lbbc/mobile/news/video/VideoRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdUnitId:Ljava/lang/String;

.field private mCarousel:Ljava/lang/String;

.field private mContentUrl:Ljava/lang/String;

.field private mSection:Ljava/lang/String;

.field private mStoryId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lbbc/mobile/news/video/VideoRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/video/VideoRequest;->TAG:Ljava/lang/String;

    .line 159
    new-instance v0, Lbbc/mobile/news/video/VideoRequest$1;

    invoke-direct {v0}, Lbbc/mobile/news/video/VideoRequest$1;-><init>()V

    sput-object v0, Lbbc/mobile/news/video/VideoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 170
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mContentUrl:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mStoryId:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mSection:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mCarousel:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mAdUnitId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lbbc/mobile/news/video/VideoRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lbbc/mobile/news/video/VideoRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "contentUrl"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lbbc/mobile/news/video/VideoRequest;->mContentUrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public static fixAdCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 145
    :cond_0
    const-string v0, ","

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "&"

    const-string v2, "and"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public applyToAdRequest(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/api/AdsRequest;)Z
    .locals 12
    .parameter "context"
    .parameter "adRequest"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 110
    iget-object v5, p0, Lbbc/mobile/news/video/VideoRequest;->mSection:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lbbc/mobile/news/video/VideoRequest;->mAdUnitId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lbbc/mobile/news/video/VideoRequest;->mSection:Ljava/lang/String;

    invoke-static {v6}, Lbbc/mobile/news/video/VideoRequest;->fixAdCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, adUnitId:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "sdk=admob"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, customParams:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lbbc/mobile/news/video/VideoRequest;->mStoryId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 118
    const-string v5, "&storyid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lbbc/mobile/news/video/VideoRequest;->mStoryId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    iget-object v5, p0, Lbbc/mobile/news/video/VideoRequest;->mCarousel:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 121
    const-string v5, "&carousel="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lbbc/mobile/news/video/VideoRequest;->mCarousel:Ljava/lang/String;

    invoke-static {v6}, Lbbc/mobile/news/video/VideoRequest;->fixAdCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_1
    const-string v5, "&connection="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lbbc/mobile/news/util/NetworkUtil;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :try_start_0
    sget-object v5, Lbbc/mobile/news/video/VideoRequest;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Applying To Ad Request: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lbbc/mobile/news/video/VideoRequest;->mContentUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "http://pubads.g.doubleclick.net/gampad/ads?sz=512x288&impl=s&gdfp_req=1&env=vp&output=xml_vast2&m_ast=vast&unviewed_position_start=1&iu=%s&ciu_szs=&url=%s&correlator=%s&cust_params=%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 127
    const-string v9, "utf-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 128
    iget-object v9, p0, Lbbc/mobile/news/video/VideoRequest;->mContentUrl:Ljava/lang/String;

    const-string v10, "utf-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "utf-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 126
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/google/ads/interactivemedia/v3/api/AdsRequest;->setAdTagUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_1
    return v3

    .line 114
    .end local v0           #adUnitId:Ljava/lang/String;
    .end local v1           #customParams:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mAdUnitId:Ljava/lang/String;

    .restart local v0       #adUnitId:Ljava/lang/String;
    goto/16 :goto_0

    .line 132
    .restart local v1       #customParams:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 133
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lbbc/mobile/news/video/VideoRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "buildAdRequestUrl: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 134
    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getCarousel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mCarousel:Ljava/lang/String;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mContentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mSection:Ljava/lang/String;

    return-object v0
.end method

.method public getStoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mStoryId:Ljava/lang/String;

    return-object v0
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0
    .parameter "adUnitId"

    .prologue
    .line 104
    iput-object p1, p0, Lbbc/mobile/news/video/VideoRequest;->mAdUnitId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setCarousel(Ljava/lang/String;)V
    .locals 0
    .parameter "carousel"

    .prologue
    .line 99
    iput-object p1, p0, Lbbc/mobile/news/video/VideoRequest;->mCarousel:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setContentUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "contentUrl"

    .prologue
    .line 84
    iput-object p1, p0, Lbbc/mobile/news/video/VideoRequest;->mContentUrl:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setSection(Ljava/lang/String;)V
    .locals 0
    .parameter "section"

    .prologue
    .line 94
    iput-object p1, p0, Lbbc/mobile/news/video/VideoRequest;->mSection:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setStoryId(Ljava/lang/String;)V
    .locals 0
    .parameter "storyId"

    .prologue
    .line 89
    iput-object p1, p0, Lbbc/mobile/news/video/VideoRequest;->mStoryId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 50
    iget-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mContentUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mStoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mSection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mCarousel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lbbc/mobile/news/video/VideoRequest;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return-void
.end method

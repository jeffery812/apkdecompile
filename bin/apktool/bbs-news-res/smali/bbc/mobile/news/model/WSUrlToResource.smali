.class public final Lbbc/mobile/news/model/WSUrlToResource;
.super Ljava/lang/Object;
.source "WSUrlToResource.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BUS_DAILY_RES_ID:I = 0x0

.field private static final BUS_DAILY_URL:Ljava/lang/String; = "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/business_daily.jpg"

.field private static final MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final NEWS_HOUR_RES_ID:I = 0x0

.field private static final NEWS_HOUR_URL:Ljava/lang/String; = "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/newshour.jpg"

#the value of this static final field might be set in the static constructor
.field private static final NEWS_SUMMARY_RES_ID:I = 0x0

.field private static final NEWS_SUMMARY_URL:Ljava/lang/String; = "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/news_summary.jpg"

#the value of this static final field might be set in the static constructor
.field private static final TWO_MIN_BULLETIN_RES_ID:I = 0x0

.field private static final TWO_MIN_BULLETIN_URL:Ljava/lang/String; = "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/2_min_bulletin.jpg"

#the value of this static final field might be set in the static constructor
.field private static final WORLD_BUS_NEWS_RES_ID:I = 0x0

.field private static final WORLD_BUS_NEWS_URL:Ljava/lang/String; = "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/world_bus_news.jpg"

#the value of this static final field might be set in the static constructor
.field private static final WORLD_SERVICE_RES_ID:I = 0x0

.field private static final WORLD_SERVICE_URL:Ljava/lang/String; = "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/world_service.jpg"

#the value of this static final field might be set in the static constructor
.field private static final WORLD_SUMMARY_RES_ID:I = 0x0

.field private static final WORLD_SUMMARY_URL:Ljava/lang/String; = "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/business_summary.jpg"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbbc/mobile/news/model/WSUrlToResource;->MAP:Ljava/util/HashMap;

    .line 22
    sget v0, Lbbc/mobile/news/R$drawable;->two_min_bulletin:I

    sput v0, Lbbc/mobile/news/model/WSUrlToResource;->TWO_MIN_BULLETIN_RES_ID:I

    .line 23
    sget v0, Lbbc/mobile/news/R$drawable;->business_summary:I

    sput v0, Lbbc/mobile/news/model/WSUrlToResource;->WORLD_SUMMARY_RES_ID:I

    .line 24
    sget v0, Lbbc/mobile/news/R$drawable;->world_bus_news:I

    sput v0, Lbbc/mobile/news/model/WSUrlToResource;->WORLD_BUS_NEWS_RES_ID:I

    .line 25
    sget v0, Lbbc/mobile/news/R$drawable;->world_service:I

    sput v0, Lbbc/mobile/news/model/WSUrlToResource;->WORLD_SERVICE_RES_ID:I

    .line 26
    sget v0, Lbbc/mobile/news/R$drawable;->news_summary:I

    sput v0, Lbbc/mobile/news/model/WSUrlToResource;->NEWS_SUMMARY_RES_ID:I

    .line 27
    sget v0, Lbbc/mobile/news/R$drawable;->business_daily:I

    sput v0, Lbbc/mobile/news/model/WSUrlToResource;->BUS_DAILY_RES_ID:I

    .line 28
    sget v0, Lbbc/mobile/news/R$drawable;->newshour:I

    sput v0, Lbbc/mobile/news/model/WSUrlToResource;->NEWS_HOUR_RES_ID:I

    .line 31
    sget-object v0, Lbbc/mobile/news/model/WSUrlToResource;->MAP:Ljava/util/HashMap;

    const-string v1, "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/2_min_bulletin.jpg"

    sget v2, Lbbc/mobile/news/model/WSUrlToResource;->TWO_MIN_BULLETIN_RES_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lbbc/mobile/news/model/WSUrlToResource;->MAP:Ljava/util/HashMap;

    const-string v1, "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/business_summary.jpg"

    sget v2, Lbbc/mobile/news/model/WSUrlToResource;->WORLD_SUMMARY_RES_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lbbc/mobile/news/model/WSUrlToResource;->MAP:Ljava/util/HashMap;

    const-string v1, "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/world_bus_news.jpg"

    sget v2, Lbbc/mobile/news/model/WSUrlToResource;->WORLD_BUS_NEWS_RES_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lbbc/mobile/news/model/WSUrlToResource;->MAP:Ljava/util/HashMap;

    const-string v1, "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/world_service.jpg"

    sget v2, Lbbc/mobile/news/model/WSUrlToResource;->WORLD_SERVICE_RES_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lbbc/mobile/news/model/WSUrlToResource;->MAP:Ljava/util/HashMap;

    const-string v1, "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/news_summary.jpg"

    sget v2, Lbbc/mobile/news/model/WSUrlToResource;->NEWS_SUMMARY_RES_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lbbc/mobile/news/model/WSUrlToResource;->MAP:Ljava/util/HashMap;

    const-string v1, "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/business_daily.jpg"

    sget v2, Lbbc/mobile/news/model/WSUrlToResource;->BUS_DAILY_RES_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lbbc/mobile/news/model/WSUrlToResource;->MAP:Ljava/util/HashMap;

    const-string v1, "http://wsdownload.bbc.co.uk/worldservice/images/branding/programmes/android_tablet/newshour.jpg"

    sget v2, Lbbc/mobile/news/model/WSUrlToResource;->NEWS_HOUR_RES_ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUrl(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .parameter "key"

    .prologue
    .line 42
    sget-object v0, Lbbc/mobile/news/model/WSUrlToResource;->MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static final hasUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 47
    sget-object v0, Lbbc/mobile/news/model/WSUrlToResource;->MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

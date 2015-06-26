.class public Lbbc/mobile/news/model/Config;
.super Lbbc/mobile/news/model/BaseModel;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/model/Config$PersoComparator;,
        Lbbc/mobile/news/model/Config$TopComparator;
    }
.end annotation


# static fields
.field public static final AD_EXPOSURE:Ljava/lang/String; = "comexpo"

.field public static final AD_UNIT_ID:Ljava/lang/String; = "ad_unit_id"

.field public static final AV_CAROUSEL_URI:Ljava/lang/String; = "av_carousel_url"

.field public static final AV_DIALOG_URI:Ljava/lang/String; = "avod_dialog_url"

.field public static final CONDITIONS_URI:Ljava/lang/String; = "conditions_url"

.field public static final COPYRIGHT:Ljava/lang/String; = "copyright"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DEFAULT_AD_EXPOSURE:I = 0x0

.field public static final DEFAULT_AD_UNIT_ID:Ljava/lang/String; = "4817"

.field public static final DEFAULT_EMAIL_ADDRESS:Ljava/lang/String; = "talkingpoint@bbc.co.uk"

.field public static final DEFAULT_SMS_ADDRESS:Ljava/lang/String; = "+447725100100"

.field public static final FAQ_URI:Ljava/lang/String; = "faq_url"

.field public static final FEEDBACK_URI:Ljava/lang/String; = "feedback_url"

.field public static final FEEDS:Ljava/lang/String; = "feeds"

.field public static final FEED_TYPE:Ljava/lang/String; = "group"

.field public static final FEED_URL:Ljava/lang/String; = "feed_url"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final INTER_FEED_TITLE:Ljava/lang/String; = "News in Other Languages"

.field public static final LIVE_FEED_TEMPLATE_URI:Ljava/lang/String; = "live_feed_uri_template"

.field public static final MORE_FEED_TITLE:Ljava/lang/String; = "More"

.field public static final MOVABLE:Ljava/lang/String; = "movable"

.field public static final ORDER_INDEX:Ljava/lang/String; = "order_index"

.field public static final PRIVACY_URI:Ljava/lang/String; = "privacy_url"

.field public static final PUBLISHED:Ljava/lang/String; = "published"

.field private static final TAG:Ljava/lang/String; = null

.field public static final TICKER_POLLING_RATE:Ljava/lang/String; = "ticker_polling_rate"

.field public static final TICKER_URI:Ljava/lang/String; = "ticker_url"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UGC_EMAIL:Ljava/lang/String; = "ugc_email"

.field public static final UGC_IMAGES_EMAIL:Ljava/lang/String; = "ugc_images_email"

.field public static final UGC_SMS_NUMBER:Ljava/lang/String; = "ugc_sms_number"

.field private static final mComparator:Lbbc/mobile/news/model/Config$PersoComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbbc/mobile/news/model/Config$PersoComparator",
            "<",
            "Lbbc/mobile/news/model/Feed;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdExposure:I

.field private mAdUnitId:Ljava/lang/String;

.field private mAvCarouselUrl:Ljava/lang/String;

.field private mAvDialogUrl:Ljava/lang/String;

.field private mCategorys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mConditionsUrl:Ljava/lang/String;

.field private mCopyright:Ljava/lang/String;

.field private mFaqUrl:Ljava/lang/String;

.field private mFeedbackUrl:Ljava/lang/String;

.field private mFeeds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Feed;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveFeedTemplateUrl:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPrivacyUrl:Ljava/lang/String;

.field private mPublishedDate:Ljava/util/Calendar;

.field private mTickerPollingRate:I

.field private mTickerUrl:Ljava/lang/String;

.field private mUgcEmail:Ljava/lang/String;

.field private mUgcImagesEmail:Ljava/lang/String;

.field private mUgcSmsNumber:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-class v0, Lbbc/mobile/news/model/Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/model/Config;->TAG:Ljava/lang/String;

    .line 584
    new-instance v0, Lbbc/mobile/news/model/Config$PersoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbbc/mobile/news/model/Config$PersoComparator;-><init>(Lbbc/mobile/news/model/Config$PersoComparator;)V

    sput-object v0, Lbbc/mobile/news/model/Config;->mComparator:Lbbc/mobile/news/model/Config$PersoComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lbbc/mobile/news/model/BaseModel;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/model/Config;->mCategorys:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method private static addFeeds(Landroid/content/Context;Lbbc/mobile/news/model/Config;Lorg/json/JSONArray;ZI)I
    .locals 5
    .parameter "context"
    .parameter "config"
    .parameter "feedlist"
    .parameter "isInternationalFeeds"
    .parameter "nextOrderIndex"

    .prologue
    .line 219
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 241
    return p4

    .line 223
    :cond_0
    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 225
    .local v1, feedjson:Lorg/json/JSONObject;
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 228
    if-gtz p4, :cond_1

    .line 229
    iget-object v3, p1, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    new-instance v4, Lbbc/mobile/news/model/Feed;

    invoke-direct {v4, v1, p3}, Lbbc/mobile/news/model/Feed;-><init>(Lorg/json/JSONObject;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v1           #feedjson:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .restart local v1       #feedjson:Lorg/json/JSONObject;
    :cond_2
    const-string v3, "feeds"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x1

    add-int/lit8 p4, p4, 0x1

    invoke-static {p0, p1, v3, v4, p4}, Lbbc/mobile/news/model/Config;->addFeeds(Landroid/content/Context;Lbbc/mobile/news/model/Config;Lorg/json/JSONArray;ZI)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p4

    goto :goto_1

    .line 236
    .end local v1           #feedjson:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Lorg/json/JSONException;
    sget-object v3, Lbbc/mobile/news/model/Config;->TAG:Ljava/lang/String;

    const-string v4, "JSON Exception when creating Config from JSON"

    invoke-static {v3, v4, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private createBlankCategory(Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;
    .locals 2
    .parameter "feed"

    .prologue
    .line 441
    new-instance v0, Lbbc/mobile/news/model/Category;

    invoke-direct {v0}, Lbbc/mobile/news/model/Category;-><init>()V

    .line 442
    .local v0, category:Lbbc/mobile/news/model/Category;
    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Category;->setName(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Category;->setId(I)V

    .line 444
    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Category;->setFeed_New(Lbbc/mobile/news/model/Feed;)V

    .line 445
    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/model/Category;->setLogoUrl(Ljava/lang/String;)V

    .line 447
    return-object v0
.end method

.method public static fromJSONObject(Landroid/content/Context;Lorg/json/JSONObject;)Lbbc/mobile/news/model/Config;
    .locals 9
    .parameter "context"
    .parameter "json"

    .prologue
    const/4 v6, 0x0

    .line 93
    new-instance v0, Lbbc/mobile/news/model/Config;

    invoke-direct {v0}, Lbbc/mobile/news/model/Config;-><init>()V

    .line 96
    .local v0, config:Lbbc/mobile/news/model/Config;
    :try_start_0
    const-string v7, "ticker_url"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lbbc/mobile/news/model/Config;->mTickerUrl:Ljava/lang/String;

    .line 97
    const-string v7, "live_feed_uri_template"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lbbc/mobile/news/model/Config;->mLiveFeedTemplateUrl:Ljava/lang/String;

    .line 99
    const-string v7, "feedback_url"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lbbc/mobile/news/model/Config;->mFeedbackUrl:Ljava/lang/String;

    .line 100
    const-string v7, "conditions_url"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lbbc/mobile/news/model/Config;->mConditionsUrl:Ljava/lang/String;

    .line 101
    const-string v7, "privacy_url"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lbbc/mobile/news/model/Config;->mPrivacyUrl:Ljava/lang/String;

    .line 103
    const-string v7, "avod_dialog_url"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lbbc/mobile/news/model/Config;->setAvDialogUrl(Ljava/lang/String;)V

    .line 104
    const-string v7, "ticker_polling_rate"

    const/16 v8, 0x12c

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lbbc/mobile/news/model/Config;->mTickerPollingRate:I

    .line 105
    const-string v7, "copyright"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lbbc/mobile/news/model/Config;->mCopyright:Ljava/lang/String;

    .line 106
    const-string v7, "av_carousel_url"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lbbc/mobile/news/model/Config;->setAvCarouselUrl(Ljava/lang/String;)V

    .line 107
    const-string v7, "comexpo"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lbbc/mobile/news/model/Config;->mAdExposure:I

    .line 108
    const-string v7, "ugc_images_email"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lbbc/mobile/news/model/Config;->setUgcImagesEmail(Ljava/lang/String;)V

    .line 109
    const-string v7, "ugc_email"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lbbc/mobile/news/model/Config;->setUgcEmail(Ljava/lang/String;)V

    .line 110
    const-string v7, "ugc_sms_number"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lbbc/mobile/news/model/Config;->setUgcSmsNumber(Ljava/lang/String;)V

    .line 111
    const-string v7, "comexpo"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v7}, Lbbc/mobile/news/model/Config;->setAdExposure(I)V

    .line 112
    const-string v7, "ad_unit_id"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lbbc/mobile/news/model/Config;->setAdUnitId(Ljava/lang/String;)V

    .line 116
    const-string v7, "feeds"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 118
    .local v3, feeds:Lorg/json/JSONArray;
    if-nez v3, :cond_0

    move-object v0, v6

    .line 142
    .end local v0           #config:Lbbc/mobile/news/model/Config;
    .end local v3           #feeds:Lorg/json/JSONArray;
    :goto_0
    return-object v0

    .line 122
    .restart local v0       #config:Lbbc/mobile/news/model/Config;
    .restart local v3       #feeds:Lorg/json/JSONArray;
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v4, v7, :cond_1

    .line 134
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lbbc/mobile/news/model/Config;->populateFeedCache(Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v3           #feeds:Lorg/json/JSONArray;
    .end local v4           #i:I
    :catch_0
    move-exception v1

    .line 139
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v6

    .line 142
    goto :goto_0

    .line 124
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v3       #feeds:Lorg/json/JSONArray;
    .restart local v4       #i:I
    :cond_1
    :try_start_1
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    .local v5, subfeeds:Lorg/json/JSONObject;
    if-nez v5, :cond_2

    .line 122
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    :cond_2
    const-string v7, "feeds"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 131
    .local v2, feedjson:Lorg/json/JSONArray;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v0, v2, v7, v8}, Lbbc/mobile/news/model/Config;->addFeeds(Landroid/content/Context;Lbbc/mobile/news/model/Config;Lorg/json/JSONArray;ZI)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static final toJSONObject(Lbbc/mobile/news/model/Config;)Lorg/json/JSONObject;
    .locals 12
    .parameter "config"

    .prologue
    .line 148
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 149
    .local v0, configJSON:Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 150
    .local v4, feedsJSONArray:Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 151
    .local v5, internationalFeedsJSONArray:Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 152
    .local v8, moreWrapperJSON:Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 156
    .local v6, internationalWrapperJSON:Lorg/json/JSONObject;
    :try_start_0
    const-string v9, "ticker_url"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getTickerUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v9, "live_feed_uri_template"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getLiveFeedTemplateUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v9, "feedback_url"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getFeedbackUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v9, "conditions_url"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getConditionsUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v9, "privacy_url"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getPrivacyUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v9, "avod_dialog_url"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getAvDialogUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v9, "ticker_polling_rate"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getTickerPollingRate()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v9, "copyright"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getCopyright()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v9, "av_carousel_url"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getAvCarouselUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v9, "ugc_images_email"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getUgcImagesEmail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v9, "ugc_email"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getUgcEmail()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v9, "ugc_sms_number"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getUgcSmsNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v9, "comexpo"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getAdExposure()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 170
    const-string v9, "ad_unit_id"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getAdUnitId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getFeeds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 189
    const-string v9, "title"

    const-string v10, "News in Other Languages"

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const-string v9, "type"

    const-string v10, "group"

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string v9, "feeds"

    invoke-virtual {v6, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 195
    const-string v9, "title"

    const-string v10, "More"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v9, "type"

    const-string v10, "group"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string v9, "feeds"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    .line 201
    .local v3, feedsArray:Lorg/json/JSONArray;
    const-string v9, "feeds"

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    .line 207
    .end local v3           #feedsArray:Lorg/json/JSONArray;
    :goto_1
    return-object v9

    .line 173
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Feed;

    .line 175
    .local v1, feed:Lbbc/mobile/news/model/Feed;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 177
    .local v2, feedJSON:Lorg/json/JSONObject;
    const-string v10, "id"

    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string v10, "title"

    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v10, "feed_url"

    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v10, "default"

    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->isDefault()Z

    move-result v11

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 181
    const-string v10, "movable"

    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getMoveable()I

    move-result v11

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->isInternational()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 184
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v1           #feed:Lbbc/mobile/news/model/Feed;
    .end local v2           #feedJSON:Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 205
    .local v7, jsonException:Lorg/json/JSONException;
    sget-object v9, Lbbc/mobile/news/model/Config;->TAG:Ljava/lang/String;

    const-string v10, "JSON Exceptiong caught when creating JSON object from Config"

    invoke-static {v9, v10, v7}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 207
    const/4 v9, 0x0

    goto :goto_1

    .line 186
    .end local v7           #jsonException:Lorg/json/JSONException;
    .restart local v1       #feed:Lbbc/mobile/news/model/Feed;
    .restart local v2       #feedJSON:Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public applyPersonalisation(Lbbc/mobile/news/model/Personalisation;)V
    .locals 4
    .parameter "personalisation"

    .prologue
    .line 522
    sget-object v2, Lbbc/mobile/news/model/Config;->mComparator:Lbbc/mobile/news/model/Config$PersoComparator;

    #calls: Lbbc/mobile/news/model/Config$PersoComparator;->setPersonalisation(Lbbc/mobile/news/model/Personalisation;)V
    invoke-static {v2, p1}, Lbbc/mobile/news/model/Config$PersoComparator;->access$2(Lbbc/mobile/news/model/Config$PersoComparator;Lbbc/mobile/news/model/Personalisation;)V

    .line 524
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 534
    iget-object v2, p0, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    sget-object v3, Lbbc/mobile/news/model/Config;->mComparator:Lbbc/mobile/news/model/Config$PersoComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 535
    return-void

    .line 525
    :cond_0
    iget-object v2, p0, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Feed;

    .line 527
    .local v0, feed:Lbbc/mobile/news/model/Feed;
    if-eqz v0, :cond_1

    .line 529
    invoke-virtual {p1, v0, v1}, Lbbc/mobile/news/model/Personalisation;->checkForNewFeed(Lbbc/mobile/news/model/Feed;I)V

    .line 530
    invoke-virtual {p1, v0}, Lbbc/mobile/news/model/Personalisation;->getFeedVisibility(Lbbc/mobile/news/model/Feed;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lbbc/mobile/news/model/Feed;->setVisibility(Z)V

    .line 524
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 489
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 490
    return-void
.end method

.method public getAdExposure()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lbbc/mobile/news/model/Config;->mAdExposure:I

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mAdUnitId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "4817"

    .line 472
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mAdUnitId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAvCarouselUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mAvCarouselUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAvDialogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mAvDialogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory(I)Lbbc/mobile/news/model/Category;
    .locals 3
    .parameter "categoryId"

    .prologue
    .line 413
    iget-object v2, p0, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 415
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lbbc/mobile/news/model/Feed;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 422
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 416
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Feed;

    .line 417
    .local v1, tempFeed:Lbbc/mobile/news/model/Feed;
    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 418
    invoke-direct {p0, v1}, Lbbc/mobile/news/model/Config;->createBlankCategory(Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v2

    goto :goto_0
.end method

.method public getCategory(Ljava/lang/String;)Lbbc/mobile/news/model/Category;
    .locals 3
    .parameter "categoryName"

    .prologue
    .line 427
    iget-object v2, p0, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 429
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lbbc/mobile/news/model/Feed;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 436
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 430
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Feed;

    .line 431
    .local v1, tempFeed:Lbbc/mobile/news/model/Feed;
    invoke-virtual {v1}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    invoke-direct {p0, v1}, Lbbc/mobile/news/model/Config;->createBlankCategory(Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v2

    goto :goto_0
.end method

.method public getCategorys(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 5
    .parameter "topFeed"
    .parameter "forcedVisibleFeed"
    .parameter "clearcache"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v3, p0, Lbbc/mobile/news/model/Config;->mCategorys:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    .line 399
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v0, categorys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Category;>;"
    invoke-virtual {p0, p1, p2}, Lbbc/mobile/news/model/Config;->getVisibleFeeds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 402
    .local v2, feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 405
    iput-object v0, p0, Lbbc/mobile/news/model/Config;->mCategorys:Ljava/util/ArrayList;

    .line 408
    .end local v0           #categorys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Category;>;"
    .end local v2           #feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    :cond_1
    iget-object v3, p0, Lbbc/mobile/news/model/Config;->mCategorys:Ljava/util/ArrayList;

    return-object v3

    .line 402
    .restart local v0       #categorys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Category;>;"
    .restart local v2       #feeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Feed;

    .line 403
    .local v1, feed:Lbbc/mobile/news/model/Feed;
    invoke-direct {p0, v1}, Lbbc/mobile/news/model/Config;->createBlankCategory(Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getConditionsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mConditionsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mFaqUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mFeedbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFeeds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Feed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLiveFeedTemplateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mLiveFeedTemplateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mPrivacyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mPublishedDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getTickerPollingRate()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lbbc/mobile/news/model/Config;->mTickerPollingRate:I

    return v0
.end method

.method public getTickerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mTickerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUgcEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mUgcEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUgcImagesEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mUgcImagesEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getUgcSmsNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mUgcSmsNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleFeeds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "topFeed"
    .parameter "forcedVisibleFeed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Feed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v3, visibleFeeds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Feed;>;"
    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getFeeds()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 384
    if-eqz p1, :cond_1

    .line 385
    new-instance v2, Lbbc/mobile/news/model/Config$TopComparator;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lbbc/mobile/news/model/Config$TopComparator;-><init>(Lbbc/mobile/news/model/Config$TopComparator;)V

    .line 386
    .local v2, topComparator:Lbbc/mobile/news/model/Config$TopComparator;,"Lbbc/mobile/news/model/Config$TopComparator<Lbbc/mobile/news/model/Feed;>;"
    #calls: Lbbc/mobile/news/model/Config$TopComparator;->setTopFeed(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lbbc/mobile/news/model/Config$TopComparator;->access$2(Lbbc/mobile/news/model/Config$TopComparator;Ljava/lang/String;)V

    .line 388
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 393
    .end local v2           #topComparator:Lbbc/mobile/news/model/Config$TopComparator;,"Lbbc/mobile/news/model/Config$TopComparator<Lbbc/mobile/news/model/Feed;>;"
    :cond_1
    return-object v3

    .line 366
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Feed;

    .line 368
    .local v0, feed:Lbbc/mobile/news/model/Feed;
    const/4 v1, 0x1

    .line 370
    .local v1, showFeed:Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 371
    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 372
    const/4 v1, 0x1

    .line 379
    :goto_1
    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->isVisibilitySet()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 374
    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->isVisible()Z

    move-result v1

    .line 375
    goto :goto_1

    .line 376
    :cond_4
    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->isDefault()Z

    move-result v1

    goto :goto_1
.end method

.method public populateFeedCache(Z)Z
    .locals 4
    .parameter "hideAvCarousel"

    .prologue
    .line 507
    iget-object v1, p0, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 509
    iget-object v1, p0, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 514
    const/4 v1, 0x1

    .line 517
    :goto_1
    return v1

    .line 509
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Feed;

    .line 511
    .local v0, feed:Lbbc/mobile/news/model/Feed;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lbbc/mobile/news/model/Feed;->getId()I

    move-result v2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    .line 512
    invoke-static {}, Lbbc/mobile/news/cache/FeedCache;->getInstance()Lbbc/mobile/news/cache/FeedCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbbc/mobile/news/cache/FeedCache;->put(Lbbc/mobile/news/model/Feed;)V

    goto :goto_0

    .line 517
    .end local v0           #feed:Lbbc/mobile/news/model/Feed;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public removeFeed(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 246
    iget-object v0, p0, Lbbc/mobile/news/model/Config;->mFeeds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public setAdExposure(I)V
    .locals 0
    .parameter "adExposure"

    .prologue
    .line 493
    iput p1, p0, Lbbc/mobile/news/model/Config;->mAdExposure:I

    .line 494
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0
    .parameter "adUnitId"

    .prologue
    .line 464
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mAdUnitId:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setAvCarouselUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "avCarouselUrl"

    .prologue
    .line 460
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mAvCarouselUrl:Ljava/lang/String;

    .line 461
    return-void
.end method

.method public setAvDialogUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "avDialogUrl"

    .prologue
    .line 451
    invoke-static {p1}, Lbbc/mobile/news/helper/LinkGenerator;->transform_device(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Config;->mAvDialogUrl:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setConditionsUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "conditionsUrl"

    .prologue
    .line 320
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mConditionsUrl:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setFaqUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "faqUrl"

    .prologue
    .line 354
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mFaqUrl:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setFeedbackUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "feedbackUrl"

    .prologue
    .line 328
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mFeedbackUrl:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setLiveFeedTemplateUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "liveFeedTemplateUrl"

    .prologue
    .line 312
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mLiveFeedTemplateUrl:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 304
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mName:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setPrivacyUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "privacyUrl"

    .prologue
    .line 337
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mPrivacyUrl:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public setPublishedDate(Ljava/util/Calendar;)V
    .locals 0
    .parameter "publishedDate"

    .prologue
    .line 254
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mPublishedDate:Ljava/util/Calendar;

    .line 255
    return-void
.end method

.method public setTickerPollingRate(I)V
    .locals 0
    .parameter "tickerPollingRate"

    .prologue
    .line 480
    iput p1, p0, Lbbc/mobile/news/model/Config;->mTickerPollingRate:I

    .line 481
    return-void
.end method

.method public setTickerUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "tickerUrl"

    .prologue
    .line 345
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mTickerUrl:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setUgcEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "ugcEmail"

    .prologue
    .line 288
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mUgcEmail:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setUgcImagesEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "ugcImagesEmail"

    .prologue
    .line 262
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mUgcImagesEmail:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setUgcSmsNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "ugcSmsNumber"

    .prologue
    .line 275
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mUgcSmsNumber:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 296
    iput-object p1, p0, Lbbc/mobile/news/model/Config;->mVersion:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public showAd()Z
    .locals 6

    .prologue
    .line 502
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {p0}, Lbbc/mobile/news/model/Config;->getAdExposure()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 212
    invoke-static {p0}, Lbbc/mobile/news/model/Config;->toJSONObject(Lbbc/mobile/news/model/Config;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

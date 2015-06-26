.class public Lbbc/mobile/news/util/GlobalSettings;
.super Ljava/lang/Object;
.source "GlobalSettings.java"


# static fields
.field private static final AMAZON_MARKET:Ljava/lang/String; = "amazon"

.field private static final BLACKBERRY_MARKET:Ljava/lang/String; = "blackberry"

.field private static FEED_URLS:[[[I = null

.field private static final GOOGLE_MARKET:Ljava/lang/String; = "google"

.field private static IMAGE_URLS:[I = null

.field private static final INSTANCE:Lbbc/mobile/news/util/GlobalSettings; = null

.field private static final MARKET_CONFIG_FILE:Ljava/lang/String; = "bbc.mobile.news.config.bbcnews"

.field private static final MARKET_CONFIG_KEY:Ljava/lang/String; = "bbcnews.market"

.field public static final MAX_CACHE_LIFETIME:J = 0xdbba0L

.field public static NOT_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field public static final UK:I = 0x0

.field private static VIDEO_URLS:[I = null

.field public static final WORLDWIDE:I = 0x1

.field private static mAdStateSet:Z

.field private static mIsTablet:Z

.field private static mLastAVDialogUpdateTime:J

.field private static mLastCategoryUpdateTime:J

.field private static mRegionId:I

.field private static final sDebugEnv:Lbbc/mobile/news/util/Environment;


# instance fields
.field private mAdExposure:I

.field private mAdsEnabled:Z

.field private mAvDialogUrl:Ljava/lang/String;

.field private mFaqUrl:Ljava/lang/String;

.field private mIsAdVisible:Z

.field private mLivePlaylistUrl:Ljava/lang/String;

.field private mMarketConfig:Ljava/lang/String;

.field private mPrivacyUrl:Ljava/lang/String;

.field private mStats:Lbbc/mobile/news/stats/Stats;

.field private mStatsEnabled:Z

.field private mTermsAndConditionsUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lbbc/mobile/news/util/GlobalSettings;

    invoke-direct {v0}, Lbbc/mobile/news/util/GlobalSettings;-><init>()V

    sput-object v0, Lbbc/mobile/news/util/GlobalSettings;->INSTANCE:Lbbc/mobile/news/util/GlobalSettings;

    .line 29
    const-class v0, Lbbc/mobile/news/util/GlobalSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/util/GlobalSettings;->TAG:Ljava/lang/String;

    .line 37
    sget-object v0, Lbbc/mobile/news/util/Environment;->LIVE:Lbbc/mobile/news/util/Environment;

    sput-object v0, Lbbc/mobile/news/util/GlobalSettings;->sDebugEnv:Lbbc/mobile/news/util/Environment;

    .line 39
    const/4 v0, -0x1

    sput v0, Lbbc/mobile/news/util/GlobalSettings;->NOT_SET:I

    .line 62
    sget v0, Lbbc/mobile/news/util/GlobalSettings;->NOT_SET:I

    int-to-long v0, v0

    sput-wide v0, Lbbc/mobile/news/util/GlobalSettings;->mLastCategoryUpdateTime:J

    .line 63
    sget v0, Lbbc/mobile/news/util/GlobalSettings;->NOT_SET:I

    int-to-long v0, v0

    sput-wide v0, Lbbc/mobile/news/util/GlobalSettings;->mLastAVDialogUpdateTime:J

    .line 64
    sput-boolean v4, Lbbc/mobile/news/util/GlobalSettings;->mAdStateSet:Z

    .line 230
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 231
    sget v1, Lbbc/mobile/news/R$string;->image_url_test:I

    aput v1, v0, v4

    .line 232
    sget v1, Lbbc/mobile/news/R$string;->image_url_stage:I

    aput v1, v0, v5

    .line 233
    sget v1, Lbbc/mobile/news/R$string;->image_url_int:I

    aput v1, v0, v6

    .line 234
    sget v1, Lbbc/mobile/news/R$string;->image_url_live:I

    aput v1, v0, v7

    .line 235
    sget v1, Lbbc/mobile/news/R$string;->image_url_debug:I

    aput v1, v0, v8

    .line 230
    sput-object v0, Lbbc/mobile/news/util/GlobalSettings;->IMAGE_URLS:[I

    .line 238
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 239
    sget v1, Lbbc/mobile/news/R$string;->video_url_test:I

    aput v1, v0, v4

    .line 240
    sget v1, Lbbc/mobile/news/R$string;->video_url_stage:I

    aput v1, v0, v5

    .line 241
    sget v1, Lbbc/mobile/news/R$string;->video_url_int:I

    aput v1, v0, v6

    .line 242
    sget v1, Lbbc/mobile/news/R$string;->video_url_live:I

    aput v1, v0, v7

    .line 243
    sget v1, Lbbc/mobile/news/R$string;->video_url_debug:I

    aput v1, v0, v8

    .line 238
    sput-object v0, Lbbc/mobile/news/util/GlobalSettings;->VIDEO_URLS:[I

    .line 246
    new-array v0, v6, [[[I

    .line 247
    new-array v1, v6, [[I

    .line 248
    const/4 v2, 0x5

    new-array v2, v2, [I

    .line 249
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_uk_url_phone_test:I

    aput v3, v2, v4

    .line 250
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_uk_url_phone_stage:I

    aput v3, v2, v5

    .line 251
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_uk_url_phone_int:I

    aput v3, v2, v6

    .line 252
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_uk_url_phone_live:I

    aput v3, v2, v7

    .line 253
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_uk_url_phone_debug:I

    aput v3, v2, v8

    aput-object v2, v1, v4

    .line 255
    const/4 v2, 0x5

    new-array v2, v2, [I

    .line 256
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_ww_url_phone_test:I

    aput v3, v2, v4

    .line 257
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_ww_url_phone_stage:I

    aput v3, v2, v5

    .line 258
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_ww_url_phone_int:I

    aput v3, v2, v6

    .line 259
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_ww_url_phone_live:I

    aput v3, v2, v7

    .line 260
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_ww_url_phone_debug:I

    aput v3, v2, v8

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 263
    new-array v1, v6, [[I

    .line 264
    const/4 v2, 0x5

    new-array v2, v2, [I

    .line 265
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_uk_url_tablet_test:I

    aput v3, v2, v4

    .line 266
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_uk_url_tablet_stage:I

    aput v3, v2, v5

    .line 267
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_uk_url_tablet_int:I

    aput v3, v2, v6

    .line 268
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_uk_url_tablet_live:I

    aput v3, v2, v7

    .line 269
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_uk_url_tablet_debug:I

    aput v3, v2, v8

    aput-object v2, v1, v4

    .line 271
    const/4 v2, 0x5

    new-array v2, v2, [I

    .line 272
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_ww_url_tablet_test:I

    aput v3, v2, v4

    .line 273
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_ww_url_tablet_stage:I

    aput v3, v2, v5

    .line 274
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_ww_url_tablet_int:I

    aput v3, v2, v6

    .line 275
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_ww_url_tablet_live:I

    aput v3, v2, v7

    .line 276
    sget v3, Lbbc/mobile/news/R$string;->bootstrap_ww_url_tablet_debug:I

    aput v3, v2, v8

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 246
    sput-object v0, Lbbc/mobile/news/util/GlobalSettings;->FEED_URLS:[[[I

    .line 279
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mMarketConfig:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mStatsEnabled:Z

    .line 52
    iput-boolean v1, p0, Lbbc/mobile/news/util/GlobalSettings;->mAdsEnabled:Z

    .line 59
    iput v1, p0, Lbbc/mobile/news/util/GlobalSettings;->mAdExposure:I

    .line 60
    iput-boolean v1, p0, Lbbc/mobile/news/util/GlobalSettings;->mIsAdVisible:Z

    .line 26
    return-void
.end method

.method public static final areStatsEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 207
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    .local v0, sp:Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    .line 210
    .local v1, value:Z
    const-string v2, "stats_enabled"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 212
    return v1
.end method

.method public static final dataWarningShown(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "state"

    .prologue
    .line 141
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 142
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "hasDataWarningBeenShown"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method public static final get()Lbbc/mobile/news/util/GlobalSettings;
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lbbc/mobile/news/util/GlobalSettings;->INSTANCE:Lbbc/mobile/news/util/GlobalSettings;

    return-object v0
.end method

.method public static final getAlarmIntervalMillis(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 114
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_last_update:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static final getAlarmTimeMillis(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 135
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_alarm_time_millis:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getBootstrapUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 293
    sget-object v3, Lbbc/mobile/news/util/GlobalSettings;->FEED_URLS:[[[I

    sget-boolean v0, Lbbc/mobile/news/util/GlobalSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    aget-object v0, v3, v0

    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isUk()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    aget-object v0, v0, v1

    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getEnvironment(Landroid/content/Context;)Lbbc/mobile/news/util/Environment;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static final getCachedConfig(Landroid/content/Context;)Lbbc/mobile/news/model/Config;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 150
    .local v2, sp:Landroid/content/SharedPreferences;
    sget v4, Lbbc/mobile/news/R$string;->pref_key_cached_config:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, jsonString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 155
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4}, Lbbc/mobile/news/model/Config;->fromJSONObject(Landroid/content/Context;Lorg/json/JSONObject;)Lbbc/mobile/news/model/Config;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 162
    :cond_0
    :goto_0
    return-object v3

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Lorg/json/JSONException;
    sget-object v4, Lbbc/mobile/news/util/GlobalSettings;->TAG:Ljava/lang/String;

    const-string v5, "Exception caught when requesting personalied config JSON from global settings"

    invoke-static {v4, v5, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final getEnvironment(Landroid/content/Context;)Lbbc/mobile/news/util/Environment;
    .locals 1
    .parameter "context"

    .prologue
    .line 226
    sget-object v0, Lbbc/mobile/news/util/Environment;->LIVE:Lbbc/mobile/news/util/Environment;

    return-object v0
.end method

.method public static final getFeedbackEmailAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 376
    sget v0, Lbbc/mobile/news/R$string;->pref_feedback_email_address:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getFeedbackMailToUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "context"

    .prologue
    .line 381
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getFeedbackEmailAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mailto:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 386
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getImageBaseUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lbbc/mobile/news/util/GlobalSettings;->IMAGE_URLS:[I

    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getEnvironment(Landroid/content/Context;)Lbbc/mobile/news/util/Environment;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/Environment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbbc/mobile/news/R$string;->device_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getLastAVDialogUpdateTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 421
    sget-wide v2, Lbbc/mobile/news/util/GlobalSettings;->mLastAVDialogUpdateTime:J

    sget v1, Lbbc/mobile/news/util/GlobalSettings;->NOT_SET:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 422
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 423
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->last_avdialog_update_time:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lbbc/mobile/news/util/GlobalSettings;->NOT_SET:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lbbc/mobile/news/util/GlobalSettings;->mLastAVDialogUpdateTime:J

    .line 426
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    sget-wide v2, Lbbc/mobile/news/util/GlobalSettings;->mLastAVDialogUpdateTime:J

    return-wide v2
.end method

.method public static final getLastCategoryUpdateTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 401
    sget-wide v2, Lbbc/mobile/news/util/GlobalSettings;->mLastCategoryUpdateTime:J

    sget v1, Lbbc/mobile/news/util/GlobalSettings;->NOT_SET:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 402
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 403
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->last_cached_category:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lbbc/mobile/news/util/GlobalSettings;->NOT_SET:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lbbc/mobile/news/util/GlobalSettings;->mLastCategoryUpdateTime:J

    .line 406
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    sget-wide v2, Lbbc/mobile/news/util/GlobalSettings;->mLastCategoryUpdateTime:J

    return-wide v2
.end method

.method public static final getLastPushId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 506
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 507
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_push_last_id:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMarketConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 523
    iget-object v2, p0, Lbbc/mobile/news/util/GlobalSettings;->mMarketConfig:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 525
    :try_start_0
    const-string v2, "bbc.mobile.news.config.bbcnews"

    invoke-static {v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 526
    .local v1, resources:Ljava/util/ResourceBundle;
    const-string v2, "bbcnews.market"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lbbc/mobile/news/util/GlobalSettings;->mMarketConfig:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v1           #resources:Ljava/util/ResourceBundle;
    :cond_0
    :goto_0
    iget-object v2, p0, Lbbc/mobile/news/util/GlobalSettings;->mMarketConfig:Ljava/lang/String;

    return-object v2

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Ljava/util/MissingResourceException;
    const-string v2, "google"

    iput-object v2, p0, Lbbc/mobile/news/util/GlobalSettings;->mMarketConfig:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final getOrientationsPreferences(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 445
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 446
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_allow_orientations:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static final getPersonalisation(Landroid/content/Context;)Lbbc/mobile/news/model/Personalisation;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 189
    .local v2, sp:Landroid/content/SharedPreferences;
    sget v4, Lbbc/mobile/news/R$string;->pref_key_personalisation:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, json:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lbbc/mobile/news/model/Personalisation;->fromJSONArray(Lorg/json/JSONArray;)Lbbc/mobile/news/model/Personalisation;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 202
    :cond_0
    :goto_0
    return-object v3

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, jsonException:Lorg/json/JSONException;
    sget-object v4, Lbbc/mobile/news/util/GlobalSettings;->TAG:Ljava/lang/String;

    const-string v5, "JsonException when recalling personalisation from json"

    invoke-static {v4, v5, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getRegionId()I
    .locals 1

    .prologue
    .line 568
    sget v0, Lbbc/mobile/news/util/GlobalSettings;->mRegionId:I

    return v0
.end method

.method public static getVideoBaseUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lbbc/mobile/news/util/GlobalSettings;->VIDEO_URLS:[I

    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->getEnvironment(Landroid/content/Context;)Lbbc/mobile/news/util/Environment;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/util/Environment;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final hasDataWarningBeenShown(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 77
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, sp:Landroid/content/SharedPreferences;
    const/4 v1, 0x1

    .line 79
    .local v1, value:Z
    const-string v2, "hasDataWarningBeenShown"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 80
    return v1
.end method

.method public static final hasRequestedPushPermission(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 480
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 481
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_push_permission:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static final isNotificationSoundEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 108
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_sound_notifications:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static final isNotificationsEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 103
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_update_notifications:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static final isPollingDisabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 89
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_polling_disabled:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static final isPushEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 494
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 495
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_push_notifications_enabled:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static final isPushSoundEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 500
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 501
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_push_notifications_sound_enabled:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 558
    sget-boolean v0, Lbbc/mobile/news/util/GlobalSettings;->mIsTablet:Z

    return v0
.end method

.method public static final isTickerEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 518
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbbc/mobile/news/R$bool;->isPhone:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static final isUk()Z
    .locals 1

    .prologue
    .line 72
    sget v0, Lbbc/mobile/news/util/GlobalSettings;->mRegionId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isUpdatesEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 84
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_updates_enabled:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static final isWidgetsEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 431
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 432
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Lbbc/mobile/news/R$string;->pref_key_is_widgets_enabled:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static final isWorldWide()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    sget v1, Lbbc/mobile/news/util/GlobalSettings;->mRegionId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final savePersonalisation(Landroid/content/Context;Lbbc/mobile/news/model/Personalisation;)V
    .locals 4
    .parameter "context"
    .parameter "personalisation"

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 179
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 180
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 181
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget v2, Lbbc/mobile/news/R$string;->pref_key_personalisation:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbbc/mobile/news/model/Personalisation;->toJSONArray()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static final setAlarmIntervalMillis(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "interval"

    .prologue
    .line 120
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget v2, Lbbc/mobile/news/R$string;->pref_key_last_update:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void
.end method

.method public static final setAlarmTimeMillis(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "time"

    .prologue
    .line 128
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget v2, Lbbc/mobile/news/R$string;->pref_key_alarm_time_millis:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    return-void
.end method

.method public static setIsTablet(Z)V
    .locals 0
    .parameter "isTablet"

    .prologue
    .line 553
    sput-boolean p0, Lbbc/mobile/news/util/GlobalSettings;->mIsTablet:Z

    .line 554
    return-void
.end method

.method public static final setLastAVDialogUpdateTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "time"

    .prologue
    .line 411
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 412
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 413
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget v2, Lbbc/mobile/news/R$string;->last_avdialog_update_time:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    sput-wide p1, Lbbc/mobile/news/util/GlobalSettings;->mLastAVDialogUpdateTime:J

    .line 417
    return-void
.end method

.method public static final setLastCategoryUpdateTime(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "time"

    .prologue
    .line 391
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 392
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 393
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget v2, Lbbc/mobile/news/R$string;->last_cached_category:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 394
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 396
    sput-wide p1, Lbbc/mobile/news/util/GlobalSettings;->mLastCategoryUpdateTime:J

    .line 397
    return-void
.end method

.method public static final setLastPushId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "pushId"

    .prologue
    .line 512
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 513
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$string;->pref_key_push_last_id:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 514
    return-void
.end method

.method public static final setPersonalisedConfig(Landroid/content/Context;Lbbc/mobile/news/model/Config;)V
    .locals 4
    .parameter "context"
    .parameter "config"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 169
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget v2, Lbbc/mobile/news/R$string;->pref_key_cached_config:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lbbc/mobile/news/model/Config;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static final setPollingDisabled(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "disabled"

    .prologue
    .line 96
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 97
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget v2, Lbbc/mobile/news/R$string;->pref_key_polling_disabled:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method

.method public static final setPushEnabled(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 486
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 487
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 488
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget v2, Lbbc/mobile/news/R$string;->pref_key_push_notifications_enabled:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 489
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 490
    return-void
.end method

.method public static setRegionId(I)V
    .locals 0
    .parameter "regionId"

    .prologue
    .line 563
    sput p0, Lbbc/mobile/news/util/GlobalSettings;->mRegionId:I

    .line 564
    return-void
.end method

.method public static final setRequestedPushPermission(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 472
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 473
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 474
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget v2, Lbbc/mobile/news/R$string;->pref_key_push_permission:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 475
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 476
    return-void
.end method

.method public static final setWidgetsEnabled(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 437
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 438
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 439
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget v2, Lbbc/mobile/news/R$string;->pref_key_is_widgets_enabled:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 440
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 441
    return-void
.end method


# virtual methods
.method public areAdsEnabled()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mAdsEnabled:Z

    return v0
.end method

.method public areStatsEnabled()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mStatsEnabled:Z

    return v0
.end method

.method public getAdExposure()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mAdExposure:I

    return v0
.end method

.method public getAvDialogUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mAvDialogUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mFaqUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLivePlaylistUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mLivePlaylistUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mPrivacyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStats()Lbbc/mobile/news/stats/Stats;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mStats:Lbbc/mobile/news/stats/Stats;

    return-object v0
.end method

.method public getTermsAndConditionsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mTermsAndConditionsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isAdStateSet()Z
    .locals 1

    .prologue
    .line 467
    sget-boolean v0, Lbbc/mobile/news/util/GlobalSettings;->mAdStateSet:Z

    return v0
.end method

.method public isAdVisible()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mIsAdVisible:Z

    return v0
.end method

.method public isInAmazonMarket()Z
    .locals 2

    .prologue
    .line 543
    invoke-direct {p0}, Lbbc/mobile/news/util/GlobalSettings;->getMarketConfig()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInBlackberryMarket()Z
    .locals 2

    .prologue
    .line 548
    invoke-direct {p0}, Lbbc/mobile/news/util/GlobalSettings;->getMarketConfig()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blackberry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInGoogleMarket()Z
    .locals 2

    .prologue
    .line 538
    invoke-direct {p0}, Lbbc/mobile/news/util/GlobalSettings;->getMarketConfig()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAdExposure(I)V
    .locals 0
    .parameter "mAdExposure"

    .prologue
    .line 340
    iput p1, p0, Lbbc/mobile/news/util/GlobalSettings;->mAdExposure:I

    .line 341
    return-void
.end method

.method public setAdsEnabled(Z)V
    .locals 1
    .parameter "adsEnabled"

    .prologue
    .line 327
    const/4 v0, 0x1

    sput-boolean v0, Lbbc/mobile/news/util/GlobalSettings;->mAdStateSet:Z

    .line 328
    iput-boolean p1, p0, Lbbc/mobile/news/util/GlobalSettings;->mAdsEnabled:Z

    .line 329
    return-void
.end method

.method public setAvDialogUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "mAvDialogUrl"

    .prologue
    .line 356
    invoke-static {p1}, Lbbc/mobile/news/helper/LinkGenerator;->writeDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 357
    return-void
.end method

.method public setFaqUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "faqUrl"

    .prologue
    .line 317
    invoke-static {p1}, Lbbc/mobile/news/helper/LinkGenerator;->writeDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mFaqUrl:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setIsAdVisible(Z)V
    .locals 0
    .parameter "isAdVisible"

    .prologue
    .line 460
    iput-boolean p1, p0, Lbbc/mobile/news/util/GlobalSettings;->mIsAdVisible:Z

    .line 461
    return-void
.end method

.method public setLivePlaylistUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "playlistUrl"

    .prologue
    .line 348
    iput-object p1, p0, Lbbc/mobile/news/util/GlobalSettings;->mLivePlaylistUrl:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setPrivacyUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "privacyUrl"

    .prologue
    .line 298
    invoke-static {p1}, Lbbc/mobile/news/helper/LinkGenerator;->writeDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mPrivacyUrl:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setStats(Lbbc/mobile/news/stats/Stats;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 368
    iput-object p1, p0, Lbbc/mobile/news/util/GlobalSettings;->mStats:Lbbc/mobile/news/stats/Stats;

    .line 369
    return-void
.end method

.method public setTermsAndConditionsUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "termsAndConditionsUrl"

    .prologue
    .line 307
    invoke-static {p1}, Lbbc/mobile/news/helper/LinkGenerator;->writeDeviceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/util/GlobalSettings;->mTermsAndConditionsUrl:Ljava/lang/String;

    .line 308
    return-void
.end method

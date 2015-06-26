.class public Lbbc/mobile/news/ww/adverts/WWAdManager;
.super Lbbc/mobile/news/adverts/AdManager;
.source "WWAdManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Ads"


# instance fields
.field protected mAdHolderView:Landroid/view/ViewGroup;

.field private mAdListener:Lcom/google/android/gms/ads/AdListener;

.field protected mAdView:Lcom/google/android/gms/ads/AdView;

.field private mIsAmazonMarket:Z

.field protected mIsTablet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lbbc/mobile/news/adverts/AdManager;-><init>()V

    .line 38
    iput-boolean v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mIsAmazonMarket:Z

    .line 39
    iput-boolean v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mIsTablet:Z

    .line 280
    new-instance v0, Lbbc/mobile/news/ww/adverts/WWAdManager$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/ww/adverts/WWAdManager$1;-><init>(Lbbc/mobile/news/ww/adverts/WWAdManager;)V

    iput-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdListener:Lcom/google/android/gms/ads/AdListener;

    .line 47
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->isInAmazonMarket()Z

    move-result v0

    iput-boolean v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mIsAmazonMarket:Z

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mIsTablet:Z

    .line 49
    return-void
.end method

.method private getAdSize(ZIF)Lcom/google/android/gms/ads/AdSize;
    .locals 9
    .parameter "isLandscape"
    .parameter "widthPx"
    .parameter "density"

    .prologue
    const/16 v8, 0x258

    const/16 v7, 0x220

    const/16 v6, 0x140

    const/16 v5, 0x5a

    const/16 v4, 0x3c

    .line 159
    int-to-float v1, p2

    div-float/2addr v1, p3

    float-to-int v0, v1

    .line 160
    .local v0, widthDp:I
    const-string v1, "Ads"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Screen size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "px is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-eqz p1, :cond_2

    .line 162
    const-string v1, "Ads"

    const-string v2, "Screen orientation: landscape"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-ge v0, v7, :cond_0

    const/4 v1, 0x0

    .line 173
    :goto_0
    return-object v1

    .line 164
    :cond_0
    const/16 v1, 0x2a8

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, v7, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    goto :goto_0

    .line 165
    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    const/16 v2, 0x2a8

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    goto :goto_0

    .line 168
    :cond_2
    const-string v1, "Ads"

    const-string v2, "Screen orientation: portrait"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-ge v0, v6, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 170
    :cond_3
    if-ge v0, v8, :cond_4

    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    const/16 v2, 0x32

    invoke-direct {v1, v6, v2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    goto :goto_0

    .line 171
    :cond_4
    const/16 v1, 0x300

    if-ge v0, v1, :cond_5

    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v1, v8, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    goto :goto_0

    .line 172
    :cond_5
    const/16 v1, 0x320

    if-ge v0, v1, :cond_6

    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    const/16 v2, 0x300

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    goto :goto_0

    .line 173
    :cond_6
    new-instance v1, Lcom/google/android/gms/ads/AdSize;

    const/16 v2, 0x320

    invoke-direct {v1, v2, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public getAdHolderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getAdRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;
    .locals 5
    .parameter "displayCarousel"
    .parameter "storyId"

    .prologue
    .line 179
    iget-object v2, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 180
    const/4 v2, 0x0

    .line 215
    :goto_0
    return-object v2

    .line 183
    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 191
    .local v0, builder:Lcom/google/android/gms/ads/AdRequest$Builder;
    if-nez p1, :cond_1

    .line 192
    const-string p1, ""

    .line 195
    :cond_1
    if-nez p2, :cond_2

    .line 196
    const-string p2, ""

    .line 202
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "carousel"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v2, "storyid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v2, "sdk"

    const-string v3, "admob"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-boolean v2, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mIsAmazonMarket:Z

    if-eqz v2, :cond_3

    .line 208
    const-string v2, "device"

    const-string v3, "kindle"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_3
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 212
    const-string v2, "Ads"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "carousel: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "Ads"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "storyid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    goto :goto_0
.end method

.method public getUnitId(Landroid/content/res/Resources;Lbbc/mobile/news/model/Config;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "resources"
    .parameter "config"
    .parameter "parentCarousel"
    .parameter "isTabletAd"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 221
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    :cond_0
    const-string v0, ""

    .line 241
    :goto_0
    return-object v0

    .line 225
    :cond_1
    invoke-static {}, Lbbc/mobile/app/NewsApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lbbc/mobile/app/NewsApplication;

    .line 226
    .local v3, newsApplication:Lbbc/mobile/app/NewsApplication;
    invoke-virtual {v3, p4}, Lbbc/mobile/app/NewsApplication;->getUnitString(Z)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, adUnitString:Ljava/lang/String;
    invoke-virtual {p2}, Lbbc/mobile/news/model/Config;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, adUnitId:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v4, unitIdBuilder:Ljava/lang/StringBuilder;
    if-nez p3, :cond_2

    .line 231
    const-string p3, ""

    .line 233
    :cond_2
    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbbc/mobile/news/helper/LinkGenerator;->removeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 235
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, adUnit:Ljava/lang/String;
    const-string v5, "Ads"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AD_UNIT_ID "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasAdHolderView()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 266
    const-string v0, "Ads"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onOrientationChanged() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lbbc/mobile/news/helper/StringUtils;->orientationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lbbc/mobile/news/ww/adverts/WWAdManager;->hasAdHolderView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-boolean v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mIsTablet:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 269
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 271
    const-string v0, "Ads"

    const-string v1, "onOrientationChanged() hideAdView = true"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 275
    const-string v0, "Ads"

    const-string v1, "onOrientationChanged() hideAdView = false"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestAdd(Lbbc/mobile/news/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .parameter "activity"
    .parameter "zoneCarousel"
    .parameter "displayCarousel"
    .parameter "storyId"

    .prologue
    .line 82
    invoke-static/range {p2 .. p2}, Lbbc/mobile/news/helper/LinkGenerator;->fixZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 83
    .local v13, zone:Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lbbc/mobile/news/helper/LinkGenerator;->fixDisplayCarousel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, carousel:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lbbc/mobile/news/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    const/4 v6, 0x1

    .line 86
    .local v6, isLandscape:Z
    :goto_0
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v14

    invoke-virtual {v14}, Lbbc/mobile/news/util/GlobalSettings;->getAdExposure()I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4059

    div-double v2, v14, v16

    .line 87
    .local v2, adExposure:D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    .line 89
    .local v8, random:D
    invoke-virtual/range {p1 .. p1}, Lbbc/mobile/news/BaseActivity;->getConfig()Lbbc/mobile/news/model/Config;

    move-result-object v5

    .line 91
    .local v5, config:Lbbc/mobile/news/model/Config;
    if-nez v5, :cond_2

    .line 92
    const-string v14, "Ads"

    const-string v15, "no config file ... could not load ad unit id"

    invoke-static {v14, v15}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_1
    return-void

    .line 85
    .end local v2           #adExposure:D
    .end local v5           #config:Lbbc/mobile/news/model/Config;
    .end local v6           #isLandscape:Z
    .end local v8           #random:D
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 96
    .restart local v2       #adExposure:D
    .restart local v5       #config:Lbbc/mobile/news/model/Config;
    .restart local v6       #isLandscape:Z
    .restart local v8       #random:D
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lbbc/mobile/news/BaseActivity;->isAdsEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p1}, Lbbc/mobile/news/ww/adverts/WWAdManager;->isInUk(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 105
    invoke-virtual {v5}, Lbbc/mobile/news/model/Config;->showAd()Z

    move-result v14

    if-nez v14, :cond_3

    .line 106
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    if-eqz v14, :cond_0

    .line 107
    const-string v14, "Ads"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Adverts hidden to do AdExposure- random:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " adExposure:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1

    .line 114
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    if-eqz v14, :cond_5

    .line 115
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    move-result v12

    .line 116
    .local v12, viewHolderWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v10, v14, Landroid/util/DisplayMetrics;->density:F

    .line 117
    .local v10, screenDensity:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lbbc/mobile/news/ww/adverts/WWAdManager;->isLandscape(Landroid/content/Context;)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v10}, Lbbc/mobile/news/ww/adverts/WWAdManager;->getAdSize(ZIF)Lcom/google/android/gms/ads/AdSize;

    move-result-object v11

    .line 118
    .local v11, size:Lcom/google/android/gms/ads/AdSize;
    if-nez v11, :cond_4

    .line 119
    const-string v14, "Ads"

    const-string v15, "No ad size appropriate to this screen size."

    new-instance v16, Ljava/lang/Throwable;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v14 .. v16}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 123
    :cond_4
    const-string v14, "Ads"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Ad size: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " x "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mIsTablet:Z

    if-nez v14, :cond_6

    if-nez v6, :cond_6

    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v14

    const/16 v15, 0x258

    if-ge v14, v15, :cond_6

    const/4 v7, 0x0

    .line 127
    .local v7, isTabletAd:Z
    :goto_2
    new-instance v14, Lcom/google/android/gms/ads/AdView;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v14, v11}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual/range {p1 .. p1}, Lbbc/mobile/news/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v5, v13, v7}, Lbbc/mobile/news/ww/adverts/WWAdManager;->getUnitId(Landroid/content/res/Resources;Lbbc/mobile/news/model/Config;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdView:Lcom/google/android/gms/ads/AdView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v14, v15}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 133
    const-string v14, "Ads"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Ad holder width "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v14, "Ads"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "AdSize "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v14 .. v16}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .end local v7           #isTabletAd:Z
    .end local v10           #screenDensity:F
    .end local v11           #size:Lcom/google/android/gms/ads/AdSize;
    .end local v12           #viewHolderWidth:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v14, :cond_0

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdView:Lcom/google/android/gms/ads/AdView;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v4, v1}, Lbbc/mobile/news/ww/adverts/WWAdManager;->getAdRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto/16 :goto_1

    .line 125
    .restart local v10       #screenDensity:F
    .restart local v11       #size:Lcom/google/android/gms/ads/AdSize;
    .restart local v12       #viewHolderWidth:I
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_2
.end method

.method public setAdHolderView(Landroid/view/ViewGroup;)Lbbc/mobile/news/adverts/AdManager;
    .locals 2
    .parameter "viewGroup"

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    .line 68
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 70
    :cond_0
    return-object p0
.end method

.method public setAdHolderView(Lbbc/mobile/news/BaseActivity;I)Lbbc/mobile/news/adverts/AdManager;
    .locals 1
    .parameter "activity"
    .parameter "resId"

    .prologue
    .line 76
    invoke-virtual {p1, p2}, Lbbc/mobile/news/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/ww/adverts/WWAdManager;->setAdHolderView(Landroid/view/ViewGroup;)Lbbc/mobile/news/adverts/AdManager;

    move-result-object v0

    return-object v0
.end method

.method public setAdHolderVisibility(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x4

    .line 246
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 247
    if-eqz p1, :cond_2

    .line 248
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/ww/adverts/WWAdManager;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lbbc/mobile/news/ww/adverts/WWAdManager;->mAdHolderView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

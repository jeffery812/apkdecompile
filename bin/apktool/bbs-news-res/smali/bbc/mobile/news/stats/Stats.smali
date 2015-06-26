.class public Lbbc/mobile/news/stats/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;
    }
.end annotation


# static fields
.field public static final ADD_AT:Ljava/lang/String; = "add"

.field public static final ARTICLE:Ljava/lang/String; = "article"

.field public static final AV_DIALOG:Ljava/lang/String; = "av_dialog"

.field public static final BACK_BUTTON:Ljava/lang/String; = "back_button"

.field public static final CAROUSEL:Ljava/lang/String; = "carousel"

.field public static final CATEGORY:Ljava/lang/String; = "category"

.field public static final CHANGE_AT:Ljava/lang/String; = "change"

.field public static final CLICK_AT:Ljava/lang/String; = "click"

.field public static final CLOSE_EDIT_BUTTON:Ljava/lang/String; = "close_edit_button"

.field public static final CONNECTION_TYPE:Ljava/lang/String; = "connection_type"

.field public static final DECREASE_FONT:Ljava/lang/String; = "decrease_font_size_button"

.field public static final EDIT_BUTTON:Ljava/lang/String; = "edit_button"

.field public static final EDIT_PV:Ljava/lang/String; = "news.personalisation.page"

.field public static final FIRST_LOAD:Ljava/lang/String; = "first_load"

.field public static final FROM_CAROUSEL:Ljava/lang/String; = "from_carousel"

.field public static final FROM_PUSH:Ljava/lang/String; = "from_push_notification"

.field public static final FROM_SWIPE:Ljava/lang/String; = "from_story_swipe"

.field public static final FROM_TICKER:Ljava/lang/String; = "from_ticker"

.field public static final HELP:Ljava/lang/String; = "help"

.field public static final HOMESCREEN_PV:Ljava/lang/String; = "news.page"

.field public static final HOME_BUTTON:Ljava/lang/String; = "bbc_logo"

.field public static final INCREASE_FONT:Ljava/lang/String; = "increase_font_size_button"

.field public static final LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final LOAD_STORY_AT:Ljava/lang/String; = "view_story"

.field public static final MEDIA_ASSET:Ljava/lang/String; = "media_asset"

.field public static final NEW_ORIENTATION:Ljava/lang/String; = "selected_orientation"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final PLAY_AV_CAROUSEL:Ljava/lang/String; = "play_carousel_av"

.field public static final PLAY_AV_DIALOG:Ljava/lang/String; = "play_dialog_av"

.field public static final PLAY_IN_STORY_VID:Ljava/lang/String; = "play_in_story_video"

.field public static final PLAY_LIVE_VID:Ljava/lang/String; = "live_news_channel"

.field public static final PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final PRIVACY:Ljava/lang/String; = "privacy"

.field public static final PUSH_PERM_NO:Ljava/lang/String; = "push_notification_permission_dialog_no"

.field public static final PUSH_PERM_YES:Ljava/lang/String; = "push_notification_permission_dialog_yes"

.field public static final PUSH_UNAVAILABLE:Ljava/lang/String; = "push_notification_story_unavailable_dialog"

.field public static final REFRESH_ARTICLE:Ljava/lang/String; = "refresh_story"

.field public static final REFRESH_HOMESCREEN:Ljava/lang/String; = "refresh_homescreen"

.field public static final RELATIVE_SIZE:Ljava/lang/String; = "relative_size"

.field public static final REMOVE_AT:Ljava/lang/String; = "remove"

.field public static final RESUME_APP:Ljava/lang/String; = "resume_app"

.field public static final SETTINGS_PV:Ljava/lang/String; = "news.settings.page"

.field public static final SHARE_BUTTON:Ljava/lang/String; = "share_button"

.field public static final STOP_AV_CAROUSEL:Ljava/lang/String; = "stop_carousel_av"

.field public static final STOP_AV_DIALOG:Ljava/lang/String; = "stop_dialog_av"

.field public static final STORY:Ljava/lang/String; = "story"

.field public static final TAG:Ljava/lang/String; = "iStats-NewLogs"

.field public static final TOS:Ljava/lang/String; = "terms_conditions"

.field public static final UGC_APP:Ljava/lang/String; = "send_ugc_app"

.field public static final UGC_GALLERY:Ljava/lang/String; = "send_ugc_gallery"

.field public static final UGC_SUBMIT:Ljava/lang/String; = "send_ugc_submit"

.field public static final VIEW_APP_AT:Ljava/lang/String; = "view_app"

.field public static final VIEW_APP_FIRST_LOAD:Ljava/lang/String; = "view.app.first.load"

.field public static final VIEW_APP_RESUMED:Ljava/lang/String; = "view.app.resumed"

.field public static final WIDGET:Ljava/lang/String; = "widget"

.field public static final WIDGET_CATEGORY:Ljava/lang/String; = "category"

.field public static final WIDGET_TYPE:Ljava/lang/String; = "widget_type"


# instance fields
.field private mBeacon:Lbbc/mobile/news/stats/Beacon;

.field private mIsWorldWide:Z

.field private mOmniture:Lbbc/mobile/news/stats/Omniture3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lbbc/mobile/app/NewsApplication;

    .line 120
    .local v0, newApp:Lbbc/mobile/app/NewsApplication;
    invoke-virtual {v0}, Lbbc/mobile/app/NewsApplication;->isWorldWide()Z

    move-result v1

    iput-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    .line 121
    return-void
.end method

.method private action(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "action"
    .parameter "type"
    .parameter "actionName"

    .prologue
    .line 160
    :try_start_0
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/util/GlobalSettings;->areStatsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lbbc/mobile/news/stats/Stats;->mBeacon:Lbbc/mobile/news/stats/Beacon;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lbbc/mobile/news/stats/Stats;->mBeacon:Lbbc/mobile/news/stats/Beacon;

    invoke-virtual {v1, p1, p2, p3}, Lbbc/mobile/news/stats/Beacon;->action(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, exception:Ljava/lang/Exception;
    const-string v1, "iStats-error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logPageView(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "countername"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/util/GlobalSettings;->areStatsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lbbc/mobile/news/stats/Stats;->mBeacon:Lbbc/mobile/news/stats/Beacon;

    if-eqz v1, :cond_0

    .line 196
    if-eqz p2, :cond_1

    .line 197
    iget-object v1, p0, Lbbc/mobile/news/stats/Stats;->mBeacon:Lbbc/mobile/news/stats/Beacon;

    invoke-virtual {v1, p1, p2}, Lbbc/mobile/news/stats/Beacon;->pageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/stats/Stats;->mBeacon:Lbbc/mobile/news/stats/Beacon;

    invoke-virtual {v1, p1}, Lbbc/mobile/news/stats/Beacon;->pageView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, exception:Ljava/lang/Exception;
    const-string v1, "iStats-error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter "type"
    .parameter "article"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lbbc/mobile/news/model/Article;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 860
    const-string v0, "story"

    invoke-static {p3, p2}, Lbbc/mobile/news/helper/LinkGenerator;->getArticleCounterString(Lbbc/mobile/news/model/Article;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    :cond_0
    return-object p1
.end method

.method private setCategoryNameParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter "categoryName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 829
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 830
    const-string v0, "category"

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :cond_0
    return-object p1
.end method

.method private setConnectionTypeParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter "connectionType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 807
    const-string v0, "connection_type"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    :cond_0
    return-object p1
.end method

.method private setCounterNameParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter "counterName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 838
    const-string v0, "story"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    :cond_0
    return-object p1
.end method

.method private setFeedParam(Ljava/util/Map;Lbbc/mobile/news/model/Feed;)Ljava/util/Map;
    .locals 3
    .parameter
    .parameter "feed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbbc/mobile/news/model/Feed;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 815
    const-string v0, "category"

    invoke-virtual {p2}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    :cond_0
    return-object p1
.end method

.method private setFontSizeParam(Ljava/util/Map;I)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "relative_size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    return-object p1
.end method

.method private setOrienationParam(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 800
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lbbc/mobile/news/stats/Stats;->setOrientationParam(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private setOrientationParam(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 867
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "orientation"

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/stats/Stats;->setOrientationParam(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private setOrientationParam(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "context"
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 872
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 875
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 876
    const-string v1, "landscape"

    .line 880
    .local v1, strOrientation:Ljava/lang/String;
    :goto_0
    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    return-object p2

    .line 878
    .end local v1           #strOrientation:Ljava/lang/String;
    :cond_0
    const-string v1, "portrait"

    .restart local v1       #strOrientation:Ljava/lang/String;
    goto :goto_0
.end method

.method private setWidgetTypeParam(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter "widgetType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 887
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 888
    const-string v0, "widget_type"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    :cond_0
    return-object p2
.end method

.method private trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "countername"
    .parameter "actionType"
    .parameter "actionName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p4, customParameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/util/GlobalSettings;->areStatsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lbbc/mobile/news/stats/Stats;->mBeacon:Lbbc/mobile/news/stats/Beacon;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lbbc/mobile/news/stats/Stats;->mBeacon:Lbbc/mobile/news/stats/Beacon;

    invoke-virtual {v1, p1, p2, p3, p4}, Lbbc/mobile/news/stats/Beacon;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, exception:Ljava/lang/Exception;
    const-string v1, "iStats-error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getOmniture()Lbbc/mobile/news/stats/Omniture3;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lbbc/mobile/news/stats/Stats;->mOmniture:Lbbc/mobile/news/stats/Omniture3;

    return-object v0
.end method

.method public logAVDialogClickACTION(Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "connectionType"

    .prologue
    .line 496
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 506
    :goto_0
    return-object p0

    .line 498
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logAVDialogClickACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 502
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setConnectionTypeParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 504
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "av_dialog"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logAddCategoryInPersonalisationACTION(Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "category"

    .prologue
    .line 320
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-object p0

    .line 322
    :cond_1
    const-string v1, "iStats-NewLogs"

    const-string v2, "logAddCategoryInPersonalisationACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    if-eqz p1, :cond_0

    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 328
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setFeedParam(Ljava/util/Map;Lbbc/mobile/news/model/Feed;)Ljava/util/Map;

    move-result-object v0

    .line 330
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "add"

    const-string v3, "carousel"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logAddWidgetACTION(Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "categoryName"
    .parameter "widgetType"

    .prologue
    .line 644
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 655
    :goto_0
    return-object p0

    .line 646
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logAddWidget"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 650
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setCategoryNameParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 651
    invoke-direct {p0, p2, v0}, Lbbc/mobile/news/stats/Stats;->setWidgetTypeParam(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 653
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "add"

    const-string v3, "widget"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logAppOpenedFromFreshACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "context"

    .prologue
    .line 255
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 263
    :goto_0
    return-object p0

    .line 257
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logAppOpenedFromFreshACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, p1}, Lbbc/mobile/news/stats/Stats;->setOrienationParam(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 261
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "view_app"

    const-string v3, "first_load"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logAppOpenedFromResumedACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "context"

    .prologue
    .line 268
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 276
    :goto_0
    return-object p0

    .line 270
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logAppOpenedFromResumedACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-direct {p0, p1}, Lbbc/mobile/news/stats/Stats;->setOrienationParam(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 274
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "view_app"

    const-string v3, "resume_app"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logArticlePAGEVIEW(Lbbc/mobile/news/model/Article;Ljava/lang/String;Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;
    .locals 5
    .parameter "article"
    .parameter "type"
    .parameter "context"

    .prologue
    .line 221
    if-nez p1, :cond_0

    .line 231
    :goto_0
    return-object p0

    .line 223
    :cond_0
    invoke-direct {p0, p3}, Lbbc/mobile/news/stats/Stats;->setOrienationParam(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 224
    .local v1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lbbc/mobile/news/helper/LinkGenerator;->getArticleCounterString(Lbbc/mobile/news/model/Article;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, counterName:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/stats/Stats;->logPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 228
    const-string v2, "iStats-NewLogs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logArticlePAGEVIEW - countername: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logBackButtonPressedACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "context"

    .prologue
    .line 281
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 289
    :goto_0
    return-object p0

    .line 283
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logBackButtonPressedACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, p1}, Lbbc/mobile/news/stats/Stats;->setOrienationParam(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 287
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "back_button"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logClosePersonalisationACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "context"

    .prologue
    .line 307
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 315
    :goto_0
    return-object p0

    .line 309
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logClosePersonalisationACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, p1}, Lbbc/mobile/news/stats/Stats;->setOrienationParam(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 313
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "close_edit_button"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logDecreaseFontSizeACTION(I)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "fontSize"

    .prologue
    .line 413
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 423
    :goto_0
    return-object p0

    .line 415
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logDecreaseFontSizeACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 419
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setFontSizeParam(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 421
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "decrease_font_size_button"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logDeviceRotationACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "context"

    .prologue
    .line 571
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 581
    :goto_0
    return-object p0

    .line 573
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logDeviceRotationACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 577
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "selected_orientation"

    invoke-direct {p0, p1, v0, v1}, Lbbc/mobile/news/stats/Stats;->setOrientationParam(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 579
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "change"

    const-string v3, "orientation"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logEditClickedACTION(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "context"

    .prologue
    .line 294
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 302
    :goto_0
    return-object p0

    .line 296
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logEditClickedACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, p1}, Lbbc/mobile/news/stats/Stats;->setOrienationParam(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 300
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "edit_button"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logHelpClickACTION()Lbbc/mobile/news/stats/Stats;
    .locals 3

    .prologue
    .line 676
    iget-boolean v0, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v0, :cond_0

    .line 682
    :goto_0
    return-object p0

    .line 678
    :cond_0
    const-string v0, "iStats-NewLogs"

    const-string v1, "logHelpClickACTION"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    sget-object v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v1, "click"

    const-string v2, "help"

    invoke-direct {p0, v0, v1, v2}, Lbbc/mobile/news/stats/Stats;->action(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logHomebuttonClickACTION()Lbbc/mobile/news/stats/Stats;
    .locals 3

    .prologue
    .line 586
    iget-boolean v0, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v0, :cond_0

    .line 592
    :goto_0
    return-object p0

    .line 588
    :cond_0
    const-string v0, "iStats-NewLogs"

    const-string v1, "logHomebuttonClickACTION"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    sget-object v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v1, "click"

    const-string v2, "bbc_logo"

    invoke-direct {p0, v0, v1, v2}, Lbbc/mobile/news/stats/Stats;->action(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logHomescreenPAGEVIEW()Lbbc/mobile/news/stats/Stats;
    .locals 2

    .prologue
    .line 211
    const-string v0, "iStats-NewLogs"

    const-string v1, "logHomescreenPAGEVIEW"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "news.page"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/stats/Stats;->logPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 215
    return-object p0
.end method

.method public logIncreaseFontSizeACTION(I)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "fontSize"

    .prologue
    .line 398
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 408
    :goto_0
    return-object p0

    .line 400
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logIncreaseFontSizeACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 404
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setFontSizeParam(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v0

    .line 406
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "increase_font_size_button"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logLoadStoryFromCarousel(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"

    .prologue
    .line 763
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-object p0

    .line 765
    :cond_1
    const-string v1, "iStats-NewLogs"

    const-string v2, "logLoadStoryFromCarousel"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    if-eqz p1, :cond_0

    .line 769
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 771
    .local v0, parmas:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "story"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 773
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "view_story"

    const-string v3, "from_carousel"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logLoadStoryFromPush(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"

    .prologue
    .line 727
    const-string v1, "iStats-NewLogs"

    const-string v2, "logLoadStoryFromPush"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    if-nez p1, :cond_0

    .line 737
    :goto_0
    return-object p0

    .line 731
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 733
    .local v0, parmas:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "story"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 735
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "view_story"

    const-string v3, "from_push_notification"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logLoadStoryFromTicker(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"

    .prologue
    .line 709
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-object p0

    .line 711
    :cond_1
    const-string v1, "iStats-NewLogs"

    const-string v2, "logLoadStoryFromTicker"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    if-eqz p1, :cond_0

    .line 715
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 717
    .local v0, parmas:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "story"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 719
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "view_story"

    const-string v3, "from_ticker"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logLoadStroyFromArticleSwipe(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"

    .prologue
    .line 781
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-object p0

    .line 783
    :cond_1
    const-string v1, "iStats-NewLogs"

    const-string v2, "logLoadStroyFromArticleSwipe"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    if-eqz p1, :cond_0

    .line 787
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 789
    .local v0, parmas:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "story"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 791
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "view_story"

    const-string v3, "from_story_swipe"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logPersonalisationPAGEVIEW()Lbbc/mobile/news/stats/Stats;
    .locals 2

    .prologue
    .line 245
    const-string v0, "iStats-NewLogs"

    const-string v1, "logPersonalisationPAGEVIEW"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "news.personalisation.page"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/stats/Stats;->logPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 248
    return-object p0
.end method

.method public logPlayAVFromWatchAndListenACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"

    .prologue
    .line 541
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 551
    :goto_0
    return-object p0

    .line 543
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logPlayAVFromWatchAndListenACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 547
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "media_asset"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 549
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "play_carousel_av"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logPlayAudioFromAVDialogACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"

    .prologue
    .line 511
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 521
    :goto_0
    return-object p0

    .line 513
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logPlayAudioFromAVDialogACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 517
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "media_asset"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 519
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "play_dialog_av"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logPlayInStoryVideoACTION(Lbbc/mobile/news/model/Article;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"
    .parameter "connectionType"

    .prologue
    .line 428
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-object p0

    .line 430
    :cond_1
    const-string v1, "iStats-NewLogs"

    const-string v2, "logPlayInStoryVideoACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz p1, :cond_0

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 438
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2}, Lbbc/mobile/news/stats/Stats;->setConnectionTypeParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 439
    const-string v1, "story"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 441
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "play_in_story_video"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logPlayInStoryVideoACTION(Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "counterName"
    .parameter "connectionType"

    .prologue
    .line 448
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 459
    :goto_0
    return-object p0

    .line 450
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logPlayInStoryVideoACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 454
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2}, Lbbc/mobile/news/stats/Stats;->setConnectionTypeParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 455
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setCounterNameParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 457
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "play_in_story_video"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logPlayLiveVideoACTION(Lbbc/mobile/news/model/Article;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"
    .parameter "connectionType"

    .prologue
    .line 480
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 491
    :goto_0
    return-object p0

    .line 482
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logPlayLiveVideoACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 486
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2}, Lbbc/mobile/news/stats/Stats;->setConnectionTypeParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 487
    const-string v1, "story"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 489
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "live_news_channel"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logPlayLiveVideoACTION(Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "counterName"
    .parameter "connectionType"

    .prologue
    .line 464
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 475
    :goto_0
    return-object p0

    .line 466
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logPlayLiveVideoACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 470
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p2}, Lbbc/mobile/news/stats/Stats;->setConnectionTypeParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 471
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setCounterNameParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 473
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "live_news_channel"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logPrivacyClickACTION()Lbbc/mobile/news/stats/Stats;
    .locals 3

    .prologue
    .line 698
    iget-boolean v0, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v0, :cond_0

    .line 704
    :goto_0
    return-object p0

    .line 700
    :cond_0
    const-string v0, "iStats-NewLogs"

    const-string v1, "logPrivacyClickACTION"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    sget-object v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v1, "click"

    const-string v2, "privacy"

    invoke-direct {p0, v0, v1, v2}, Lbbc/mobile/news/stats/Stats;->action(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logPushArticleNotAvailableDialog()Lbbc/mobile/news/stats/Stats;
    .locals 4

    .prologue
    .line 743
    const-string v0, "iStats-NewLogs"

    const-string v1, "logPushArticleNotAvailableDialog"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget-object v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v1, "click"

    const-string v2, "push_notification_story_unavailable_dialog"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 747
    return-object p0
.end method

.method public logPushPermissionResponse(Z)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "pushEnabled"

    .prologue
    .line 753
    const-string v0, "iStats-NewLogs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logPushPermissionResponse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    .line 756
    if-eqz p1, :cond_0

    const-string v0, "push_notification_permission_dialog_yes"

    :goto_0
    const/4 v3, 0x0

    .line 755
    invoke-direct {p0, v1, v2, v0, v3}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 758
    return-object p0

    .line 756
    :cond_0
    const-string v0, "push_notification_permission_dialog_no"

    goto :goto_0
.end method

.method public logRefreshArticleACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"

    .prologue
    .line 366
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-object p0

    .line 368
    :cond_1
    const-string v1, "iStats-NewLogs"

    const-string v2, "logRefreshArticleACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    if-eqz p1, :cond_0

    .line 372
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 374
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "story"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 376
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "refresh_story"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logRefreshHomescreenACTION()Lbbc/mobile/news/stats/Stats;
    .locals 3

    .prologue
    .line 355
    iget-boolean v0, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return-object p0

    .line 357
    :cond_0
    const-string v0, "iStats-NewLogs"

    const-string v1, "logRefreshHomescreenACTION"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    sget-object v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v1, "click"

    const-string v2, "refresh_homescreen"

    invoke-direct {p0, v0, v1, v2}, Lbbc/mobile/news/stats/Stats;->action(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logRemoveCategoryInPersonalisationACTION(Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "category"

    .prologue
    .line 338
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-object p0

    .line 340
    :cond_1
    const-string v1, "iStats-NewLogs"

    const-string v2, "logRemoveCategoryInPersonalisationACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    if-eqz p1, :cond_0

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setFeedParam(Ljava/util/Map;Lbbc/mobile/news/model/Feed;)Ljava/util/Map;

    move-result-object v0

    .line 348
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "remove"

    const-string v3, "carousel"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logRemoveWidgetACTION(Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "categoryName"
    .parameter "widgetType"

    .prologue
    .line 660
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 671
    :goto_0
    return-object p0

    .line 662
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logRemoveWidget"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 666
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setCategoryNameParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 667
    invoke-direct {p0, p2, v0}, Lbbc/mobile/news/stats/Stats;->setWidgetTypeParam(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 669
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "remove"

    const-string v3, "widget"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logSendToBBCNewsClickACTION(Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "connectionType"

    .prologue
    .line 597
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 607
    :goto_0
    return-object p0

    .line 599
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logSendToBBCNewsClickACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 603
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setConnectionTypeParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 605
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "send_ugc_app"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logSendToBBCNewsGalleryACTION(Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "connectionType"

    .prologue
    .line 613
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 623
    :goto_0
    return-object p0

    .line 615
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logSendToBBCNewsGalleryACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 619
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setConnectionTypeParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 621
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "send_ugc_gallery"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logSendToBBCNewsSubmitACTION(Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "connectionType"

    .prologue
    .line 629
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 639
    :goto_0
    return-object p0

    .line 631
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logSendToBBCNewsSubmitACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 635
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v0, p1}, Lbbc/mobile/news/stats/Stats;->setConnectionTypeParam(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 637
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "send_ugc_submit"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logSettingsPAGEVIEW()Lbbc/mobile/news/stats/Stats;
    .locals 2

    .prologue
    .line 236
    const-string v0, "iStats-NewLogs"

    const-string v1, "logSettingsPAGEVIEW"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "news.settings.page"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/stats/Stats;->logPageView(Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    return-object p0
.end method

.method public logShareButtonClickedACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"

    .prologue
    .line 383
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 393
    :goto_0
    return-object p0

    .line 385
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logShareButtonClickedACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "story"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 391
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "share_button"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logStopAVFromWatchAndListenACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"

    .prologue
    .line 556
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 566
    :goto_0
    return-object p0

    .line 558
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logStopAVFromWatchAndListenACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 562
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "media_asset"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 564
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "stop_carousel_av"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logStopAudioFromAVDialogACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;
    .locals 4
    .parameter "article"

    .prologue
    .line 526
    iget-boolean v1, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v1, :cond_0

    .line 536
    :goto_0
    return-object p0

    .line 528
    :cond_0
    const-string v1, "iStats-NewLogs"

    const-string v2, "logStopAudioFromAVDialogACTION"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 532
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "media_asset"

    invoke-direct {p0, v0, v1, p1}, Lbbc/mobile/news/stats/Stats;->setArticleCounterNameParam(Ljava/util/Map;Ljava/lang/String;Lbbc/mobile/news/model/Article;)Ljava/util/Map;

    move-result-object v0

    .line 534
    sget-object v1, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v2, "click"

    const-string v3, "stop_dialog_av"

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/stats/Stats;->trackActionWithCustomParameters(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public logTOSClickACTION()Lbbc/mobile/news/stats/Stats;
    .locals 3

    .prologue
    .line 687
    iget-boolean v0, p0, Lbbc/mobile/news/stats/Stats;->mIsWorldWide:Z

    if-eqz v0, :cond_0

    .line 693
    :goto_0
    return-object p0

    .line 689
    :cond_0
    const-string v0, "iStats-NewLogs"

    const-string v1, "logTOSClickACTION"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    sget-object v0, Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;->ACTION:Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;

    const-string v1, "click"

    const-string v2, "terms_conditions"

    invoke-direct {p0, v0, v1, v2}, Lbbc/mobile/news/stats/Stats;->action(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetBeaconDeviceId(Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;
    .locals 5
    .parameter "context"

    .prologue
    .line 142
    iget-object v1, p0, Lbbc/mobile/news/stats/Stats;->mBeacon:Lbbc/mobile/news/stats/Beacon;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lbbc/mobile/news/stats/Stats;->mBeacon:Lbbc/mobile/news/stats/Beacon;

    invoke-virtual {v1, p1}, Lbbc/mobile/news/stats/Beacon;->clearDeviceIdentifier(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lbbc/mobile/app/NewsApplication;

    .line 149
    .local v0, newsApp:Lbbc/mobile/app/NewsApplication;
    iget-object v1, p0, Lbbc/mobile/news/stats/Stats;->mBeacon:Lbbc/mobile/news/stats/Beacon;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$string;->istats_prod_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbbc/mobile/news/R$string;->istats_app_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {v0}, Lbbc/mobile/app/NewsApplication;->getAppEdition()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-virtual {v1, p1, v2, v3, v4}, Lbbc/mobile/news/stats/Beacon;->initNewBeacon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v0           #newsApp:Lbbc/mobile/app/NewsApplication;
    :cond_0
    return-object p0
.end method

.method public setBeacon(Lbbc/mobile/news/stats/Beacon;)Lbbc/mobile/news/stats/Stats;
    .locals 0
    .parameter "p"

    .prologue
    .line 126
    iput-object p1, p0, Lbbc/mobile/news/stats/Stats;->mBeacon:Lbbc/mobile/news/stats/Beacon;

    .line 127
    return-object p0
.end method

.method public setOmniture(Lbbc/mobile/news/stats/Omniture3;)V
    .locals 0
    .parameter "omniture"

    .prologue
    .line 137
    iput-object p1, p0, Lbbc/mobile/news/stats/Stats;->mOmniture:Lbbc/mobile/news/stats/Omniture3;

    .line 138
    return-void
.end method

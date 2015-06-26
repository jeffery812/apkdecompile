.class public Lbbc/mobile/news/stats/Omniture3;
.super Ljava/lang/Object;
.source "Omniture3.java"


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String; = null

.field private static final ANDROID:Ljava/lang/String; = "android:"

.field public static final APP_RESUMED_EVENT:Ljava/lang/String; = "event31"

.field public static final APP_STARTED_EVENT:Ljava/lang/String; = "event30"

.field public static final ARTICLE_SHARED:Ljava/lang/String; = "event23"

.field private static final AUDIO_ID:Ljava/lang/String; = "aud:"

.field private static final AUDIO_STARTED_ACTION:Ljava/lang/String; = "audio:"

.field public static final AUDIO_STARTED_EVENT:Ljava/lang/String; = "event14"

.field private static final AUDIO_STR_TYPE:Ljava/lang/String; = "audio"

.field public static final AUDIO_TYPE:I = 0x4

.field public static final AV_FINISHED_EVENT1:Ljava/lang/String; = "event7"

.field public static final AV_FINISHED_EVENT2:Ljava/lang/String; = "event8"

.field public static final AV_STARTED_EVENT1:Ljava/lang/String; = "event3"

.field public static final AV_STARTED_EVENT2:Ljava/lang/String; = "event6"

.field public static final CATEGORY_ADDED_EVENT:Ljava/lang/String; = "event12"

.field private static final CATEGORY_ADD_ACITON:Ljava/lang/String; = ":add"

.field private static final CATEGORY_EDIT_ACTION:Ljava/lang/String; = "edit-categories:"

.field public static final CATEGORY_REMOVED_EVENT:Ljava/lang/String; = "event13"

.field private static final CATEGORY_REMOVE_ACTION:Ljava/lang/String; = ":remove"

.field private static final CUSTOM_LINK:Ljava/lang/String; = "o"

.field private static final EDIT_CHANEL:Ljava/lang/String; = "edit"

.field private static final EDIT_CLOSED_ACTION:Ljava/lang/String; = "edit-categories:done"

.field public static final EDIT_CLOSED_EVENT:Ljava/lang/String; = "event11"

.field private static final EDIT_PAGNAME:Ljava/lang/String; = "bbc news | edit-categories"

.field public static final EVENT10:Ljava/lang/String; = "event10"

.field public static final EVENT15:Ljava/lang/String; = "event15"

.field private static final FUNCTION_STR_TYPE:Ljava/lang/String; = "functions"

.field public static final FUNCTION_TYPE:I = 0x0

.field private static final HELP_CHANNEL:Ljava/lang/String; = "help"

.field private static final HELP_PAGENAME:Ljava/lang/String; = "bbc news | home:help"

.field private static final HOME_SCREEN_CHANNEL:Ljava/lang/String; = "home"

.field private static final HOME_SCREEN_PAGENAME:Ljava/lang/String; = "bbc news | home"

.field private static final INDEX_STR_TYPE:Ljava/lang/String; = "index"

.field public static final INDEX_TYPE:I = 0x1

.field private static final LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static final LIVE_CLICK_ACTION:Ljava/lang/String; = "home:live-news:click"

.field private static final NEWS:Ljava/lang/String; = "news:"

.field private static final PAGENAME_BASE:Ljava/lang/String; = "bbc news"

.field public static final PAGE_VIEW:Ljava/lang/String; = "event9"

.field private static final PHONE:Ljava/lang/String; = "phone"

.field private static final PORTRAIT:Ljava/lang/String; = "portrait"

.field private static final PRIVACY_CHANEL:Ljava/lang/String; = "privacy"

.field private static final PRIVACY_PAGENAME:Ljava/lang/String; = "bbc news | home:privacy"

.field private static final PRODUCT:Ljava/lang/String; = "news"

.field private static final SEND_TO_BBC_ACTION:Ljava/lang/String; = "home:send-story:click"

.field private static final SHARED_CLICK_ACTION:Ljava/lang/String; = "article:share:click"

.field private static final STORY_STR_TYPE:Ljava/lang/String; = "story"

.field public static final STORY_TYPE:I = 0x2

.field private static final TABLET:Ljava/lang/String; = "tablet"

.field public static final TAG:Ljava/lang/String; = "omniture-NewLogs"

.field private static final TOS_CHANNEL:Ljava/lang/String; = "terms"

.field private static final TOS_PAGENAME:Ljava/lang/String; = "bbc news | home:terms-of-use"

.field private static final TRACKING_SERVER:Ljava/lang/String; = "sa.bbc.com"

.field private static final UNKNOWN_STR_TYPE:Ljava/lang/String; = "unknown"

.field private static final VIDEO_ID:Ljava/lang/String; = "vid:"

.field private static final VIDEO_STARTED_ACTION:Ljava/lang/String; = "video:"

.field private static final VIDEO_STR_TYPE:Ljava/lang/String; = "video"

.field public static final VIDEO_TYPE:I = 0x3


# instance fields
.field private mOmniture:Lcom/omniture/AppMeasurement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "bbcdroidphonenewsprod"

    sput-object v0, Lbbc/mobile/news/stats/Omniture3;->ACCOUNT_ID:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/omniture/AppMeasurement;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/omniture/AppMeasurement;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbbc/mobile/news/stats/Omniture3;->mOmniture:Lcom/omniture/AppMeasurement;

    .line 105
    iget-object v0, p0, Lbbc/mobile/news/stats/Omniture3;->mOmniture:Lcom/omniture/AppMeasurement;

    sget-object v1, Lbbc/mobile/news/stats/Omniture3;->ACCOUNT_ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/omniture/AppMeasurement;->account:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lbbc/mobile/news/stats/Omniture3;->mOmniture:Lcom/omniture/AppMeasurement;

    const-string v1, "sa.bbc.com"

    iput-object v1, v0, Lcom/omniture/AppMeasurement;->trackingServer:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private varargs appendStringToArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "event"
    .parameter "events"

    .prologue
    const/4 v4, 0x0

    .line 769
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v3, p2

    if-lez v3, :cond_1

    .line 771
    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 773
    .local v0, newEvents:[Ljava/lang/String;
    aput-object p1, v0, v4

    .line 775
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    array-length v3, p2

    if-lt v2, v3, :cond_0

    .line 786
    .end local v0           #newEvents:[Ljava/lang/String;
    .end local v2           #x:I
    :goto_1
    return-object v0

    .line 776
    .restart local v0       #newEvents:[Ljava/lang/String;
    .restart local v2       #x:I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    aget-object v4, p2, v2

    aput-object v4, v0, v3

    .line 775
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 782
    .end local v0           #newEvents:[Ljava/lang/String;
    .end local v2           #x:I
    :cond_1
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 784
    .local v1, returnedArray:[Ljava/lang/String;
    aput-object p1, v1, v4

    move-object v0, v1

    .line 786
    goto :goto_1
.end method

.method private static final booleanToString(Z)Ljava/lang/String;
    .locals 1
    .parameter "bool"

    .prologue
    .line 719
    if-eqz p0, :cond_0

    .line 720
    const-string v0, "yes"

    .line 722
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method private getAVActionName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "avName"
    .parameter "isVideo"

    .prologue
    .line 791
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 793
    if-eqz p2, :cond_0

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    :goto_0
    return-object v0

    .line 796
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "audio:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_1
    const-string v0, "unknown"

    goto :goto_0
.end method

.method private getAppStartedOrResumedEvent(I)Ljava/lang/String;
    .locals 1
    .parameter "method"

    .prologue
    .line 729
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 730
    const-string v0, "event30"

    .line 737
    :goto_0
    return-object v0

    .line 732
    :cond_0
    if-nez p1, :cond_1

    .line 733
    const-string v0, "event30"

    goto :goto_0

    .line 734
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 735
    const-string v0, "event31"

    goto :goto_0

    .line 737
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getArticleId(Lbbc/mobile/news/model/Article;)Ljava/lang/String;
    .locals 2
    .parameter "article"

    .prologue
    .line 755
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, articleId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    const-string v0, "unknown-articleId"

    .line 760
    :cond_0
    return-object v0
.end method

.method private getCategory(Lbbc/mobile/news/model/Article;)Ljava/lang/String;
    .locals 2
    .parameter "article"

    .prologue
    .line 742
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getOriginalCategoryName()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, category:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 745
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v0

    .line 747
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    const-string v0, "unknown-category"

    .line 750
    :cond_1
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getEditCategorysActionName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter "categoryName"
    .parameter "added"

    .prologue
    .line 805
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    const-string p1, "unknown"

    .line 810
    :cond_0
    if-eqz p2, :cond_1

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "edit-categories:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":add"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "edit-categories:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":remove"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isStatsEnabled()Z
    .locals 1

    .prologue
    .line 764
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbc/mobile/news/util/GlobalSettings;->areStatsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 821
    return-void
.end method

.method private static final methodToString(I)Ljava/lang/String;
    .locals 1
    .parameter "method"

    .prologue
    .line 701
    invoke-static {p0}, Lbbc/mobile/news/helper/StateHelper;->methodToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setAVHeadline(Lcom/omniture/AppMeasurement;Ljava/lang/String;Z)Lcom/omniture/AppMeasurement;
    .locals 2
    .parameter "stat"
    .parameter "headline"
    .parameter "isVideo"

    .prologue
    .line 664
    if-eqz p1, :cond_1

    .line 666
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    const-string p2, "unknown"

    .line 669
    :cond_0
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 671
    if-eqz p3, :cond_2

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 677
    :goto_0
    iput-object p2, p1, Lcom/omniture/AppMeasurement;->prop21:Ljava/lang/String;

    .line 678
    const-string v0, "D=prop21"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->eVar21:Ljava/lang/String;

    .line 681
    :cond_1
    return-object p1

    .line 674
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "aud:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private setAVId(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;
    .locals 1
    .parameter "stat"
    .parameter "avId"

    .prologue
    .line 686
    if-eqz p1, :cond_1

    .line 688
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    const-string p2, "unknown"

    .line 691
    :cond_0
    iput-object p2, p1, Lcom/omniture/AppMeasurement;->prop23:Ljava/lang/String;

    .line 692
    const-string v0, "D=prop23"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->eVar23:Ljava/lang/String;

    .line 695
    :cond_1
    return-object p1
.end method

.method private setAdvertisingEntitlement(Lcom/omniture/AppMeasurement;Z)Lcom/omniture/AppMeasurement;
    .locals 1
    .parameter "stat"
    .parameter "entitled"

    .prologue
    .line 530
    if-eqz p1, :cond_0

    .line 531
    invoke-static {p2}, Lbbc/mobile/news/stats/Omniture3;->booleanToString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->prop57:Ljava/lang/String;

    .line 532
    const-string v0, "D=prop57"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->eVar57:Ljava/lang/String;

    .line 535
    :cond_0
    return-object p1
.end method

.method private setAppVersion(Lcom/omniture/AppMeasurement;Landroid/content/Context;)Lcom/omniture/AppMeasurement;
    .locals 5
    .parameter "stat"
    .parameter "context"

    .prologue
    .line 571
    const-string v1, "unknown"

    .line 574
    .local v1, versionName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 575
    invoke-static {}, Lbbc/mobile/news/init/DI;->getApplicationPackage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 576
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "news:android:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/omniture/AppMeasurement;->prop67:Ljava/lang/String;

    .line 583
    const-string v2, "D=prop67"

    iput-object v2, p1, Lcom/omniture/AppMeasurement;->eVar67:Ljava/lang/String;

    .line 585
    return-object p1

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setArticleId(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;
    .locals 0
    .parameter "stat"
    .parameter "articleId"

    .prologue
    .line 548
    if-eqz p2, :cond_0

    .line 549
    iput-object p2, p1, Lcom/omniture/AppMeasurement;->prop4:Ljava/lang/String;

    .line 551
    :cond_0
    return-object p1
.end method

.method private setCategoryEdited(Lcom/omniture/AppMeasurement;Ljava/lang/String;Z)Lcom/omniture/AppMeasurement;
    .locals 1
    .parameter "stat"
    .parameter "categoryName"
    .parameter "added"

    .prologue
    .line 627
    if-eqz p1, :cond_1

    .line 629
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    const-string p2, "unknown"

    .line 632
    :cond_0
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 634
    if-eqz p3, :cond_2

    .line 635
    iput-object p2, p1, Lcom/omniture/AppMeasurement;->prop17:Ljava/lang/String;

    .line 636
    const-string v0, "D=prop17"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->eVar17:Ljava/lang/String;

    .line 643
    :cond_1
    :goto_0
    return-object p1

    .line 638
    :cond_2
    iput-object p2, p1, Lcom/omniture/AppMeasurement;->prop18:Ljava/lang/String;

    .line 639
    const-string v0, "D=prop18"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->prop18:Ljava/lang/String;

    goto :goto_0
.end method

.method private setChannel(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;
    .locals 1
    .parameter "stat"
    .parameter "channel"

    .prologue
    .line 487
    if-eqz p1, :cond_0

    .line 488
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->channel:Ljava/lang/String;

    .line 489
    const-string v0, "D=s.ch"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->prop6:Ljava/lang/String;

    .line 492
    :cond_0
    return-object p1
.end method

.method private setDeviceType(Lcom/omniture/AppMeasurement;Landroid/content/Context;)Lcom/omniture/AppMeasurement;
    .locals 3
    .parameter "stat"
    .parameter "context"

    .prologue
    .line 556
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$bool;->isPhone:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 558
    .local v0, isPhone:Z
    if-eqz v0, :cond_0

    .line 559
    const-string v1, "android:phone"

    iput-object v1, p1, Lcom/omniture/AppMeasurement;->prop31:Ljava/lang/String;

    .line 564
    :goto_0
    const-string v1, "D=prop31"

    iput-object v1, p1, Lcom/omniture/AppMeasurement;->eVar31:Ljava/lang/String;

    .line 566
    return-object p1

    .line 561
    :cond_0
    const-string v1, "android:tablet"

    iput-object v1, p1, Lcom/omniture/AppMeasurement;->prop31:Ljava/lang/String;

    goto :goto_0
.end method

.method private setDeviceVersion(Lcom/omniture/AppMeasurement;)Lcom/omniture/AppMeasurement;
    .locals 2
    .parameter "stat"

    .prologue
    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "news:android:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->prop68:Ljava/lang/String;

    .line 591
    const-string v0, "D=prop67"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->eVar68:Ljava/lang/String;

    .line 593
    return-object p1
.end method

.method private varargs setEvents(Lcom/omniture/AppMeasurement;[Ljava/lang/String;)Lcom/omniture/AppMeasurement;
    .locals 3
    .parameter "stat"
    .parameter "events"

    .prologue
    .line 599
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-object p1

    .line 602
    :cond_1
    const-string v1, ""

    iput-object v1, p1, Lcom/omniture/AppMeasurement;->events:Ljava/lang/String;

    .line 604
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 605
    const/4 v1, 0x0

    aget-object v1, p2, v1

    iput-object v1, p1, Lcom/omniture/AppMeasurement;->events:Ljava/lang/String;

    .line 620
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Events: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/omniture/AppMeasurement;->events:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbbc/mobile/news/stats/Omniture3;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_3
    array-length v1, p2

    if-lez v1, :cond_0

    .line 610
    const/4 v0, 0x0

    .local v0, x:I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 611
    aget-object v1, p2, v0

    if-eqz v1, :cond_4

    .line 612
    iget-object v1, p1, Lcom/omniture/AppMeasurement;->events:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p2, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/omniture/AppMeasurement;->events:Ljava/lang/String;

    .line 614
    add-int/lit8 v1, v0, 0x1

    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 615
    iget-object v1, p1, Lcom/omniture/AppMeasurement;->events:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/omniture/AppMeasurement;->events:Ljava/lang/String;

    .line 610
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setGenericProps(Lcom/omniture/AppMeasurement;ILandroid/content/Context;Z)Lcom/omniture/AppMeasurement;
    .locals 1
    .parameter "stat"
    .parameter "method"
    .parameter "context"
    .parameter "pageView"

    .prologue
    .line 456
    invoke-direct {p0, p1, p3}, Lbbc/mobile/news/stats/Omniture3;->setOrientation(Lcom/omniture/AppMeasurement;Landroid/content/Context;)Lcom/omniture/AppMeasurement;

    move-result-object p1

    .line 457
    invoke-direct {p0, p1, p3}, Lbbc/mobile/news/stats/Omniture3;->setDeviceType(Lcom/omniture/AppMeasurement;Landroid/content/Context;)Lcom/omniture/AppMeasurement;

    move-result-object p1

    .line 458
    invoke-direct {p0, p1, p3}, Lbbc/mobile/news/stats/Omniture3;->setAppVersion(Lcom/omniture/AppMeasurement;Landroid/content/Context;)Lcom/omniture/AppMeasurement;

    move-result-object p1

    .line 459
    invoke-direct {p0, p1}, Lbbc/mobile/news/stats/Omniture3;->setProductId(Lcom/omniture/AppMeasurement;)Lcom/omniture/AppMeasurement;

    move-result-object p1

    .line 460
    invoke-direct {p0, p1}, Lbbc/mobile/news/stats/Omniture3;->setDeviceVersion(Lcom/omniture/AppMeasurement;)Lcom/omniture/AppMeasurement;

    move-result-object p1

    .line 462
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 463
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/stats/Omniture3;->setMethod(Lcom/omniture/AppMeasurement;I)Lcom/omniture/AppMeasurement;

    move-result-object p1

    .line 465
    :cond_0
    if-eqz p4, :cond_1

    .line 466
    const-string v0, "D=gn"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->eVar2:Ljava/lang/String;

    .line 470
    :goto_0
    return-object p1

    .line 468
    :cond_1
    const-string v0, "o"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->pe:Ljava/lang/String;

    goto :goto_0
.end method

.method private setHeadline(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;
    .locals 1
    .parameter "stat"
    .parameter "headline"

    .prologue
    .line 540
    if-eqz p2, :cond_0

    .line 541
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->prop3:Ljava/lang/String;

    .line 543
    :cond_0
    return-object p1
.end method

.method private setMethod(Lcom/omniture/AppMeasurement;I)Lcom/omniture/AppMeasurement;
    .locals 1
    .parameter "stat"
    .parameter "method"

    .prologue
    .line 497
    if-eqz p1, :cond_0

    .line 499
    invoke-static {p2}, Lbbc/mobile/news/stats/Omniture3;->methodToString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->prop70:Ljava/lang/String;

    .line 500
    const-string v0, "D=prop70"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->eVar70:Ljava/lang/String;

    .line 503
    :cond_0
    return-object p1
.end method

.method private setOrientation(Lcom/omniture/AppMeasurement;Landroid/content/Context;)Lcom/omniture/AppMeasurement;
    .locals 3
    .parameter "stat"
    .parameter "context"

    .prologue
    .line 648
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 651
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 652
    const-string v1, "landscape"

    .line 656
    .local v1, strOrientation:Ljava/lang/String;
    :goto_0
    iput-object v1, p1, Lcom/omniture/AppMeasurement;->prop16:Ljava/lang/String;

    .line 657
    const-string v2, "D=prop16"

    iput-object v2, p1, Lcom/omniture/AppMeasurement;->eVar16:Ljava/lang/String;

    .line 659
    return-object p1

    .line 654
    .end local v1           #strOrientation:Ljava/lang/String;
    :cond_0
    const-string v1, "portrait"

    .restart local v1       #strOrientation:Ljava/lang/String;
    goto :goto_0
.end method

.method private setPagePath(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;
    .locals 1
    .parameter "stat"
    .parameter "path"

    .prologue
    .line 519
    if-eqz p1, :cond_0

    .line 521
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->prop15:Ljava/lang/String;

    .line 522
    const-string v0, "D=prop15"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->eVar15:Ljava/lang/String;

    .line 525
    :cond_0
    return-object p1
.end method

.method private setProductId(Lcom/omniture/AppMeasurement;)Lcom/omniture/AppMeasurement;
    .locals 1
    .parameter "stat"

    .prologue
    .line 508
    if-eqz p1, :cond_0

    .line 510
    const-string v0, "news"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->prop69:Ljava/lang/String;

    .line 511
    const-string v0, "D=prop69"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->eVar69:Ljava/lang/String;

    .line 514
    :cond_0
    return-object p1
.end method

.method private setStatType(Lcom/omniture/AppMeasurement;I)Lcom/omniture/AppMeasurement;
    .locals 1
    .parameter "stat"
    .parameter "type"

    .prologue
    .line 476
    if-eqz p1, :cond_0

    .line 478
    invoke-static {p2}, Lbbc/mobile/news/stats/Omniture3;->statTypeToString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->prop5:Ljava/lang/String;

    .line 479
    const-string v0, "D=prop5"

    iput-object v0, p1, Lcom/omniture/AppMeasurement;->eVar5:Ljava/lang/String;

    .line 482
    :cond_0
    return-object p1
.end method

.method private static final statTypeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "method"

    .prologue
    .line 706
    packed-switch p0, :pswitch_data_0

    .line 713
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 708
    :pswitch_0
    const-string v0, "functions"

    goto :goto_0

    .line 709
    :pswitch_1
    const-string v0, "index"

    goto :goto_0

    .line 710
    :pswitch_2
    const-string v0, "story"

    goto :goto_0

    .line 711
    :pswitch_3
    const-string v0, "video"

    goto :goto_0

    .line 712
    :pswitch_4
    const-string v0, "audio"

    goto :goto_0

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public logAVStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lbbc/mobile/news/stats/Omniture3;
    .locals 6
    .parameter "context"
    .parameter "categoryName"
    .parameter "headline"
    .parameter "avName"
    .parameter "avId"
    .parameter "isVideo"

    .prologue
    const/4 v3, 0x3

    .line 334
    :try_start_0
    invoke-direct {p0}, Lbbc/mobile/news/stats/Omniture3;->isStatsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    iget-object v2, p0, Lbbc/mobile/news/stats/Omniture3;->mOmniture:Lcom/omniture/AppMeasurement;

    .line 337
    .local v2, stat:Lcom/omniture/AppMeasurement;
    invoke-virtual {v2}, Lcom/omniture/AppMeasurement;->clearVars()V

    .line 339
    invoke-direct {p0, p4, p6}, Lbbc/mobile/news/stats/Omniture3;->getAVActionName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, actionName:Ljava/lang/String;
    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, p1, v5}, Lbbc/mobile/news/stats/Omniture3;->setGenericProps(Lcom/omniture/AppMeasurement;ILandroid/content/Context;Z)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 342
    invoke-direct {p0, v2, p2}, Lbbc/mobile/news/stats/Omniture3;->setChannel(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 343
    invoke-direct {p0, v2, p3}, Lbbc/mobile/news/stats/Omniture3;->setHeadline(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 344
    if-eqz p6, :cond_1

    :goto_0
    invoke-direct {p0, v2, v3}, Lbbc/mobile/news/stats/Omniture3;->setStatType(Lcom/omniture/AppMeasurement;I)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 345
    invoke-direct {p0, v2, p1}, Lbbc/mobile/news/stats/Omniture3;->setOrientation(Lcom/omniture/AppMeasurement;Landroid/content/Context;)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 346
    invoke-direct {p0, v2, p3, p6}, Lbbc/mobile/news/stats/Omniture3;->setAVHeadline(Lcom/omniture/AppMeasurement;Ljava/lang/String;Z)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 347
    invoke-direct {p0, v2, p5}, Lbbc/mobile/news/stats/Omniture3;->setAVId(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 349
    if-nez p6, :cond_2

    .line 350
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "event3"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "event6"

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Lbbc/mobile/news/stats/Omniture3;->setEvents(Lcom/omniture/AppMeasurement;[Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 354
    :goto_1
    const-string v3, "o"

    invoke-virtual {v2, v0, v3, v0}, Lcom/omniture/AppMeasurement;->trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 363
    .end local v0           #actionName:Ljava/lang/String;
    .end local v2           #stat:Lcom/omniture/AppMeasurement;
    :cond_0
    :goto_2
    return-object p0

    .line 344
    .restart local v0       #actionName:Ljava/lang/String;
    .restart local v2       #stat:Lcom/omniture/AppMeasurement;
    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    .line 352
    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "event3"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "event6"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "event14"

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Lbbc/mobile/news/stats/Omniture3;->setEvents(Lcom/omniture/AppMeasurement;[Ljava/lang/String;)Lcom/omniture/AppMeasurement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 359
    .end local v0           #actionName:Ljava/lang/String;
    .end local v2           #stat:Lcom/omniture/AppMeasurement;
    :catch_0
    move-exception v1

    .line 361
    .local v1, exception:Ljava/lang/Exception;
    const-string v3, "omniture-NewLogs"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "logAVStarted actionName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public logArticlePageView(Landroid/content/Context;Lbbc/mobile/news/model/Article;IZ)Lbbc/mobile/news/stats/Omniture3;
    .locals 7
    .parameter "context"
    .parameter "article"
    .parameter "method"
    .parameter "addEntitlement"

    .prologue
    .line 148
    :try_start_0
    invoke-direct {p0}, Lbbc/mobile/news/stats/Omniture3;->isStatsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    iget-object v3, p0, Lbbc/mobile/news/stats/Omniture3;->mOmniture:Lcom/omniture/AppMeasurement;

    .line 151
    .local v3, stat:Lcom/omniture/AppMeasurement;
    invoke-virtual {v3}, Lcom/omniture/AppMeasurement;->clearVars()V

    .line 153
    invoke-direct {p0, p2}, Lbbc/mobile/news/stats/Omniture3;->getCategory(Lbbc/mobile/news/model/Article;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, categoryName:Ljava/lang/String;
    invoke-direct {p0, p2}, Lbbc/mobile/news/stats/Omniture3;->getArticleId(Lbbc/mobile/news/model/Article;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, articleId:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bbc news | "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lbbc/mobile/news/stats/Omniture3;->getCategory(Lbbc/mobile/news/model/Article;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 157
    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p2}, Lbbc/mobile/news/stats/Omniture3;->getArticleId(Lbbc/mobile/news/model/Article;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    iput-object v4, v3, Lcom/omniture/AppMeasurement;->pageName:Ljava/lang/String;

    .line 159
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lbbc/mobile/news/stats/Omniture3;->setHeadline(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v3

    .line 160
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lbbc/mobile/news/stats/Omniture3;->setArticleId(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v3

    .line 161
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "event9"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p3}, Lbbc/mobile/news/stats/Omniture3;->getAppStartedOrResumedEvent(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v3, v4}, Lbbc/mobile/news/stats/Omniture3;->setEvents(Lcom/omniture/AppMeasurement;[Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v3

    .line 162
    invoke-direct {p0, v3, v1}, Lbbc/mobile/news/stats/Omniture3;->setChannel(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v3

    .line 163
    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lbbc/mobile/news/stats/Omniture3;->setStatType(Lcom/omniture/AppMeasurement;I)Lcom/omniture/AppMeasurement;

    move-result-object v3

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "app/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lbbc/mobile/news/stats/Omniture3;->setPagePath(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v3

    .line 165
    invoke-direct {p0, v3, p4}, Lbbc/mobile/news/stats/Omniture3;->setAdvertisingEntitlement(Lcom/omniture/AppMeasurement;Z)Lcom/omniture/AppMeasurement;

    move-result-object v3

    .line 166
    const/4 v4, 0x1

    invoke-direct {p0, v3, p3, p1, v4}, Lbbc/mobile/news/stats/Omniture3;->setGenericProps(Lcom/omniture/AppMeasurement;ILandroid/content/Context;Z)Lcom/omniture/AppMeasurement;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Lcom/omniture/AppMeasurement;->track()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0           #articleId:Ljava/lang/String;
    .end local v1           #categoryName:Ljava/lang/String;
    .end local v3           #stat:Lcom/omniture/AppMeasurement;
    :cond_0
    :goto_0
    return-object p0

    .line 177
    :catch_0
    move-exception v2

    .line 179
    .local v2, exception:Ljava/lang/Exception;
    const-string v4, "omniture-NewLogs"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "logArticlePageView(method:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lbbc/mobile/news/stats/Omniture3;->methodToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public logArticleShared(Landroid/content/Context;Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Omniture3;
    .locals 5
    .parameter "context"
    .parameter "article"

    .prologue
    .line 255
    :try_start_0
    invoke-direct {p0}, Lbbc/mobile/news/stats/Omniture3;->isStatsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v1, p0, Lbbc/mobile/news/stats/Omniture3;->mOmniture:Lcom/omniture/AppMeasurement;

    .line 258
    .local v1, stat:Lcom/omniture/AppMeasurement;
    invoke-virtual {v1}, Lcom/omniture/AppMeasurement;->clearVars()V

    .line 260
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, p1, v3}, Lbbc/mobile/news/stats/Omniture3;->setGenericProps(Lcom/omniture/AppMeasurement;ILandroid/content/Context;Z)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 261
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "event23"

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->setEvents(Lcom/omniture/AppMeasurement;[Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 263
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getLink()Ljava/lang/String;

    move-result-object v2

    const-string v3, "o"

    const-string v4, "article:share:click"

    invoke-virtual {v1, v2, v3, v4}, Lcom/omniture/AppMeasurement;->trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v1           #stat:Lcom/omniture/AppMeasurement;
    :cond_0
    :goto_0
    return-object p0

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, exception:Ljava/lang/Exception;
    const-string v2, "omniture-NewLogs"

    const-string v3, "logArticleShared()"

    invoke-static {v2, v3, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public logAudioStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;
    .locals 7
    .parameter "context"
    .parameter "categoryName"
    .parameter "headline"
    .parameter "audioName"
    .parameter "audioId"

    .prologue
    .line 310
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lbbc/mobile/news/stats/Omniture3;->logAVStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    return-object v0
.end method

.method public logCategoryAdded(Landroid/content/Context;Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;
    .locals 1
    .parameter "context"
    .parameter "categoryName"

    .prologue
    .line 375
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lbbc/mobile/news/stats/Omniture3;->logCategoryEdited(Landroid/content/Context;Ljava/lang/String;Z)Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    return-object v0
.end method

.method public logCategoryEdited(Landroid/content/Context;Ljava/lang/String;Z)Lbbc/mobile/news/stats/Omniture3;
    .locals 6
    .parameter "context"
    .parameter "categoryName"
    .parameter "added"

    .prologue
    .line 390
    :try_start_0
    invoke-direct {p0}, Lbbc/mobile/news/stats/Omniture3;->isStatsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 392
    iget-object v2, p0, Lbbc/mobile/news/stats/Omniture3;->mOmniture:Lcom/omniture/AppMeasurement;

    .line 393
    .local v2, stat:Lcom/omniture/AppMeasurement;
    invoke-virtual {v2}, Lcom/omniture/AppMeasurement;->clearVars()V

    .line 395
    invoke-direct {p0, p2, p3}, Lbbc/mobile/news/stats/Omniture3;->getEditCategorysActionName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, actionName:Ljava/lang/String;
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, p1, v4}, Lbbc/mobile/news/stats/Omniture3;->setGenericProps(Lcom/omniture/AppMeasurement;ILandroid/content/Context;Z)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 398
    invoke-direct {p0, v2, p1}, Lbbc/mobile/news/stats/Omniture3;->setOrientation(Lcom/omniture/AppMeasurement;Landroid/content/Context;)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 399
    invoke-direct {p0, v2, p2, p3}, Lbbc/mobile/news/stats/Omniture3;->setCategoryEdited(Lcom/omniture/AppMeasurement;Ljava/lang/String;Z)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 401
    if-eqz p3, :cond_1

    .line 402
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "event12"

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Lbbc/mobile/news/stats/Omniture3;->setEvents(Lcom/omniture/AppMeasurement;[Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v2

    .line 406
    :goto_0
    const-string v3, "o"

    invoke-virtual {v2, v0, v3, v0}, Lcom/omniture/AppMeasurement;->trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .end local v0           #actionName:Ljava/lang/String;
    .end local v2           #stat:Lcom/omniture/AppMeasurement;
    :cond_0
    :goto_1
    return-object p0

    .line 404
    .restart local v0       #actionName:Ljava/lang/String;
    .restart local v2       #stat:Lcom/omniture/AppMeasurement;
    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "event13"

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Lbbc/mobile/news/stats/Omniture3;->setEvents(Lcom/omniture/AppMeasurement;[Ljava/lang/String;)Lcom/omniture/AppMeasurement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 414
    .end local v0           #actionName:Ljava/lang/String;
    .end local v2           #stat:Lcom/omniture/AppMeasurement;
    :catch_0
    move-exception v1

    .line 416
    .local v1, exception:Ljava/lang/Exception;
    const-string v3, "omniture-NewLogs"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "logCategoryEdited actionName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lbbc/mobile/news/stats/Omniture3;->getEditCategorysActionName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public logCategoryRemoved(Landroid/content/Context;Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;
    .locals 1
    .parameter "context"
    .parameter "categoryName"

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lbbc/mobile/news/stats/Omniture3;->logCategoryEdited(Landroid/content/Context;Ljava/lang/String;Z)Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    return-object v0
.end method

.method public logEditClosed(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;
    .locals 4
    .parameter "context"

    .prologue
    .line 301
    const-string v0, "edit-categories:done"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "event11"

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lbbc/mobile/news/stats/Omniture3;->logSimpleAction(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    return-object v0
.end method

.method public logEditPageView(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;
    .locals 5
    .parameter "context"

    .prologue
    .line 247
    const-string v0, "bbc news | edit-categories"

    const-string v1, "edit"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "event10"

    aput-object v4, v2, v3

    invoke-virtual {p0, p1, v0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->logSimplePageView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    return-object v0
.end method

.method public logHelpPageView(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;
    .locals 3
    .parameter "context"

    .prologue
    .line 223
    const-string v0, "bbc news | home:help"

    const-string v1, "help"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->logSimplePageView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    return-object v0
.end method

.method public logHomeScreenPageView(Landroid/content/Context;IZ)Lbbc/mobile/news/stats/Omniture3;
    .locals 5
    .parameter "context"
    .parameter "method"
    .parameter "addEntitlement"

    .prologue
    .line 113
    :try_start_0
    invoke-direct {p0}, Lbbc/mobile/news/stats/Omniture3;->isStatsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v1, p0, Lbbc/mobile/news/stats/Omniture3;->mOmniture:Lcom/omniture/AppMeasurement;

    .line 116
    .local v1, stat:Lcom/omniture/AppMeasurement;
    invoke-virtual {v1}, Lcom/omniture/AppMeasurement;->clearVars()V

    .line 118
    const-string v2, "bbc news | home"

    iput-object v2, v1, Lcom/omniture/AppMeasurement;->pageName:Ljava/lang/String;

    .line 120
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "event9"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p2}, Lbbc/mobile/news/stats/Omniture3;->getAppStartedOrResumedEvent(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->setEvents(Lcom/omniture/AppMeasurement;[Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 121
    const-string v2, "app/home"

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->setPagePath(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 122
    const-string v2, "home"

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->setChannel(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 123
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->setStatType(Lcom/omniture/AppMeasurement;I)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 124
    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, p1, v2}, Lbbc/mobile/news/stats/Omniture3;->setGenericProps(Lcom/omniture/AppMeasurement;ILandroid/content/Context;Z)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 125
    invoke-direct {p0, v1, p3}, Lbbc/mobile/news/stats/Omniture3;->setAdvertisingEntitlement(Lcom/omniture/AppMeasurement;Z)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/omniture/AppMeasurement;->track()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1           #stat:Lcom/omniture/AppMeasurement;
    :cond_0
    :goto_0
    return-object p0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, exception:Ljava/lang/Exception;
    const-string v2, "omniture-NewLogs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logHomeScreenPageView(method:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lbbc/mobile/news/stats/Omniture3;->methodToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public logLiveClick(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;
    .locals 2
    .parameter "context"

    .prologue
    .line 285
    const-string v0, "home:live-news:click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lbbc/mobile/news/stats/Omniture3;->logSimpleAction(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    return-object v0
.end method

.method public logPrivacyPageView(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;
    .locals 3
    .parameter "context"

    .prologue
    .line 239
    const-string v0, "bbc news | home:privacy"

    const-string v1, "privacy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->logSimplePageView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    return-object v0
.end method

.method public logSendToBBCNewsClick(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;
    .locals 2
    .parameter "context"

    .prologue
    .line 293
    const-string v0, "home:send-story:click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lbbc/mobile/news/stats/Omniture3;->logSimpleAction(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    return-object v0
.end method

.method public varargs logSimpleAction(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;
    .locals 5
    .parameter "context"
    .parameter "actionName"
    .parameter "events"

    .prologue
    .line 429
    :try_start_0
    invoke-direct {p0}, Lbbc/mobile/news/stats/Omniture3;->isStatsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 431
    iget-object v1, p0, Lbbc/mobile/news/stats/Omniture3;->mOmniture:Lcom/omniture/AppMeasurement;

    .line 432
    .local v1, stat:Lcom/omniture/AppMeasurement;
    invoke-virtual {v1}, Lcom/omniture/AppMeasurement;->clearVars()V

    .line 433
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, p1, v3}, Lbbc/mobile/news/stats/Omniture3;->setGenericProps(Lcom/omniture/AppMeasurement;ILandroid/content/Context;Z)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 435
    if-eqz p3, :cond_0

    .line 436
    invoke-direct {p0, v1, p3}, Lbbc/mobile/news/stats/Omniture3;->setEvents(Lcom/omniture/AppMeasurement;[Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 438
    :cond_0
    const-string v2, "o"

    invoke-virtual {v1, p2, v2, p2}, Lcom/omniture/AppMeasurement;->trackLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v1           #stat:Lcom/omniture/AppMeasurement;
    :cond_1
    :goto_0
    return-object p0

    .line 443
    :catch_0
    move-exception v0

    .line 445
    .local v0, exception:Ljava/lang/Exception;
    const-string v2, "omniture-NewLogs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logSimpleAction actionName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs logSimplePageView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;
    .locals 5
    .parameter "context"
    .parameter "pageName"
    .parameter "channel"
    .parameter "events"

    .prologue
    .line 190
    :try_start_0
    invoke-direct {p0}, Lbbc/mobile/news/stats/Omniture3;->isStatsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v1, p0, Lbbc/mobile/news/stats/Omniture3;->mOmniture:Lcom/omniture/AppMeasurement;

    .line 193
    .local v1, stat:Lcom/omniture/AppMeasurement;
    invoke-virtual {v1}, Lcom/omniture/AppMeasurement;->clearVars()V

    .line 196
    iput-object p2, v1, Lcom/omniture/AppMeasurement;->pageName:Ljava/lang/String;

    .line 197
    invoke-direct {p0, v1, p3}, Lbbc/mobile/news/stats/Omniture3;->setChannel(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 198
    const-string v2, "event9"

    invoke-direct {p0, v2, p4}, Lbbc/mobile/news/stats/Omniture3;->appendStringToArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->setEvents(Lcom/omniture/AppMeasurement;[Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 199
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->setStatType(Lcom/omniture/AppMeasurement;I)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->setPagePath(Lcom/omniture/AppMeasurement;Ljava/lang/String;)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 201
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->setAdvertisingEntitlement(Lcom/omniture/AppMeasurement;Z)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 202
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, p1, v3}, Lbbc/mobile/news/stats/Omniture3;->setGenericProps(Lcom/omniture/AppMeasurement;ILandroid/content/Context;Z)Lcom/omniture/AppMeasurement;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/omniture/AppMeasurement;->track()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v1           #stat:Lcom/omniture/AppMeasurement;
    :cond_0
    :goto_0
    return-object p0

    .line 209
    :catch_0
    move-exception v0

    .line 211
    .local v0, exception:Ljava/lang/Exception;
    const-string v2, "omniture-NewLogs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logSimplePageView pageName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public logTOSPageView(Landroid/content/Context;)Lbbc/mobile/news/stats/Omniture3;
    .locals 3
    .parameter "context"

    .prologue
    .line 231
    const-string v0, "bbc news | home:terms-of-use"

    const-string v1, "terms"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lbbc/mobile/news/stats/Omniture3;->logSimplePageView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    return-object v0
.end method

.method public logVideoStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;
    .locals 7
    .parameter "context"
    .parameter "categoryName"
    .parameter "headline"
    .parameter "videoName"
    .parameter "videoId"

    .prologue
    .line 322
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lbbc/mobile/news/stats/Omniture3;->logAVStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    return-object v0
.end method

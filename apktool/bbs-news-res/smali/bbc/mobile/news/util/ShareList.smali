.class public Lbbc/mobile/news/util/ShareList;
.super Ljava/lang/Object;
.source "ShareList.java"


# static fields
.field private static final AMAZON_MAIL:Ljava/lang/String; = "com.amazon.email"

.field private static final ANDROID_MAIL:Ljava/lang/String; = "com.android.email"

.field private static final BARCODE_READER:Ljava/lang/String; = "com.google.zxing.client.android"

.field private static final BBC_NEWS_UK:Ljava/lang/String; = "bbc.mobile.news.uk"

.field private static final BBC_NEWS_WW:Ljava/lang/String; = "bbc.mobile.news.ww"

.field private static final BLACK_LISTED_PACKAGES:[Ljava/lang/String; = null

.field private static final BLUETOOTH:Ljava/lang/String; = "com.android.bluetooth"

.field private static final FACEBOOK:Ljava/lang/String; = "com.facebook.katana"

.field private static final GMAIL:Ljava/lang/String; = "com.google.android.gm"

.field private static final GOGGLES:Ljava/lang/String; = "com.google.android.apps.unveil"

.field private static final HTC_EMAIL:Ljava/lang/String; = "com.htc.android.mail"

.field private static final HTC_FRIEND_SCREAM:Ljava/lang/String; = "com.htc.friendstream"

.field private static final HTC_TWITTER:Ljava/lang/String; = "com.htc.htctwitter"

.field private static INSTANCE:Lbbc/mobile/news/util/ShareList; = null

.field private static final MESSAGING:Ljava/lang/String; = "com.android.mms"

.field private static final TWITTER:Ljava/lang/String; = "com.twitter.android"

.field private static final UPLOADER:Ljava/lang/String; = "com.google.android.apps.uploader"

.field private static final WHITE_LISTED_PACKAGES:[Ljava/lang/String; = null

.field private static final YOU_TUBE:Ljava/lang/String; = "com.google.android.youtube"


# instance fields
.field private mBlackListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    const-string v1, "com.amazon.email"

    aput-object v1, v0, v2

    .line 38
    const-string v1, "com.android.email"

    aput-object v1, v0, v3

    .line 39
    const-string v1, "com.android.mms"

    aput-object v1, v0, v4

    .line 40
    const-string v1, "com.htc.android.mail"

    aput-object v1, v0, v5

    .line 41
    const-string v1, "com.google.android.gm"

    aput-object v1, v0, v6

    .line 35
    sput-object v0, Lbbc/mobile/news/util/ShareList;->WHITE_LISTED_PACKAGES:[Ljava/lang/String;

    .line 45
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 46
    const-string v1, "com.htc.friendstream"

    aput-object v1, v0, v2

    .line 47
    const-string v1, "com.google.zxing.client.android"

    aput-object v1, v0, v3

    .line 48
    const-string v1, "bbc.mobile.news.uk"

    aput-object v1, v0, v4

    .line 49
    const-string v1, "bbc.mobile.news.ww"

    aput-object v1, v0, v5

    .line 50
    const-string v1, "com.htc.htctwitter"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    .line 51
    const-string v2, "com.android.bluetooth"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 52
    const-string v2, "com.facebook.katana"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 53
    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 54
    const-string v2, "com.google.android.youtube"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 55
    const-string v2, "com.google.android.apps.uploader"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 56
    const-string v2, "com.google.android.apps.unveil"

    aput-object v2, v0, v1

    .line 44
    sput-object v0, Lbbc/mobile/news/util/ShareList;->BLACK_LISTED_PACKAGES:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iget-object v0, p0, Lbbc/mobile/news/util/ShareList;->mWhiteListMap:Ljava/util/HashMap;

    sget-object v1, Lbbc/mobile/news/util/ShareList;->WHITE_LISTED_PACKAGES:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/util/ShareList;->initHashMap(Ljava/util/HashMap;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/util/ShareList;->mWhiteListMap:Ljava/util/HashMap;

    .line 63
    iget-object v0, p0, Lbbc/mobile/news/util/ShareList;->mBlackListMap:Ljava/util/HashMap;

    sget-object v1, Lbbc/mobile/news/util/ShareList;->BLACK_LISTED_PACKAGES:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/util/ShareList;->initHashMap(Ljava/util/HashMap;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/util/ShareList;->mBlackListMap:Ljava/util/HashMap;

    .line 64
    return-void
.end method

.method private static final getApps(Ljava/util/List;Ljava/util/HashMap;Z)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .parameter "isBlackList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p1, list:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 109
    return-object p0

    .line 100
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 102
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lbbc/mobile/news/util/ShareList;
    .locals 2

    .prologue
    .line 68
    const-class v1, Lbbc/mobile/news/util/ShareList;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbbc/mobile/news/util/ShareList;->INSTANCE:Lbbc/mobile/news/util/ShareList;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lbbc/mobile/news/util/ShareList;

    invoke-direct {v0}, Lbbc/mobile/news/util/ShareList;-><init>()V

    sput-object v0, Lbbc/mobile/news/util/ShareList;->INSTANCE:Lbbc/mobile/news/util/ShareList;

    .line 71
    :cond_0
    sget-object v0, Lbbc/mobile/news/util/ShareList;->INSTANCE:Lbbc/mobile/news/util/ShareList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initHashMap(Ljava/util/HashMap;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .parameter
    .parameter "packages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 77
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 79
    .restart local p1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_1

    .line 82
    return-object p1

    .line 80
    :cond_1
    aget-object v1, p2, v0

    aget-object v2, p2, v0

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFilteredBlackListedApps(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lbbc/mobile/news/util/ShareList;->mBlackListMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lbbc/mobile/news/util/ShareList;->getApps(Ljava/util/List;Ljava/util/HashMap;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListedApps(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lbbc/mobile/news/util/ShareList;->mWhiteListMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lbbc/mobile/news/util/ShareList;->getApps(Ljava/util/List;Ljava/util/HashMap;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

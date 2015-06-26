.class public Lbbc/beacon/android/SitestatUrlMaker;
.super Ljava/lang/Object;
.source "SitestatUrlMaker.java"


# static fields
.field private static final ISTATS_HOST:Ljava/lang/String; = "sa.bbc.co.uk"

.field private static final ISTATS_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private applicationName:Ljava/lang/String;

.field private applicationVersion:Ljava/lang/String;

.field private iStatsPath:Ljava/lang/String;

.field private libraryName:Ljava/lang/String;

.field private libraryVersion:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private visitorId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lbbc/beacon/android/SitestatUrlMaker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/beacon/android/SitestatUrlMaker;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "/bbc/bbc/s"

    sput-object v0, Lbbc/beacon/android/SitestatUrlMaker;->ISTATS_PATH:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "productName"
    .parameter "applicationName"
    .parameter "applicationVersion"
    .parameter "libraryName"
    .parameter "libraryVersion"
    .parameter "visitorId"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lbbc/beacon/android/SitestatUrlMaker;->applicationName:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lbbc/beacon/android/SitestatUrlMaker;->applicationVersion:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lbbc/beacon/android/SitestatUrlMaker;->libraryName:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lbbc/beacon/android/SitestatUrlMaker;->libraryVersion:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lbbc/beacon/android/SitestatUrlMaker;->visitorId:Ljava/lang/String;

    .line 35
    sget-object v0, Lbbc/beacon/android/SitestatUrlMaker;->ISTATS_PATH:Ljava/lang/String;

    iput-object v0, p0, Lbbc/beacon/android/SitestatUrlMaker;->iStatsPath:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lbbc/beacon/android/SitestatUrlMaker;->productName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private addDefaultParameters(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ml_name"

    iget-object v1, p0, Lbbc/beacon/android/SitestatUrlMaker;->libraryName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "ml_version"

    iget-object v1, p0, Lbbc/beacon/android/SitestatUrlMaker;->libraryVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "app_type"

    const-string v1, "mobile-app"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "prod_name"

    iget-object v1, p0, Lbbc/beacon/android/SitestatUrlMaker;->productName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "app_name"

    iget-object v1, p0, Lbbc/beacon/android/SitestatUrlMaker;->applicationName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "app_version"

    iget-object v1, p0, Lbbc/beacon/android/SitestatUrlMaker;->applicationVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "istats_visitor_id"

    iget-object v1, p0, Lbbc/beacon/android/SitestatUrlMaker;->visitorId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-object p1
.end method

.method private addSections(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "section1"
    .parameter "section2"
    .parameter "section3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 146
    const-string v0, "section1"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 149
    const-string v0, "section2"

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 152
    const-string v0, "section3"

    invoke-virtual {p1, v0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_2
    return-void
.end method

.method private makeFullEncodedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "queryString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/net/URI;

    const-string v1, "http"

    const-string v2, "sa.bbc.co.uk"

    iget-object v3, p0, Lbbc/beacon/android/SitestatUrlMaker;->iStatsPath:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, uri:Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, urlString:Ljava/lang/String;
    sget-object v1, Lbbc/beacon/android/SitestatUrlMaker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "makeFullEncodedUrl() queryString"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v1, Lbbc/beacon/android/SitestatUrlMaker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "makeFullEncodedUrl() request    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v6
.end method

.method private makeQueryString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lbbc/beacon/android/SitestatUrlMaker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "makeQueryString() visitorId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lbbc/beacon/android/SitestatUrlMaker;->visitorId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, ""

    .line 109
    .local v1, queryString:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lbbc/beacon/android/SitestatUrlMaker;->makeBeaconUrl(Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method private sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "dirtyString"

    .prologue
    .line 156
    const-string v0, " "

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[^0-9a-zA-Z-._]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_+"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public makeActionUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "counterName"
    .parameter "actionType"
    .parameter "actionName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "action_type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "action_name"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "ns_type"

    const-string v2, "hidden"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, v0}, Lbbc/beacon/android/SitestatUrlMaker;->makeUrl(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public makeBeaconUrl(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 119
    .local p1, kv_pairs:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 121
    .local v2, queryString:Ljava/lang/String;
    const-string v4, "istats-kv_pairs"

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 125
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 140
    invoke-direct {p0, v2}, Lbbc/beacon/android/SitestatUrlMaker;->makeFullEncodedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 125
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, key:Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lbbc/beacon/android/SitestatUrlMaker;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    if-nez v2, :cond_2

    .line 133
    new-instance v2, Ljava/lang/String;

    .end local v2           #queryString:Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 137
    .restart local v2       #queryString:Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 135
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public makePageViewUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "counterName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0, v0, v0}, Lbbc/beacon/android/SitestatUrlMaker;->makePageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makePageViewUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "counterName"
    .parameter "section1"
    .parameter "section2"
    .parameter "section3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v0, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-direct {p0, v0, p2, p3, p4}, Lbbc/beacon/android/SitestatUrlMaker;->addSections(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v0}, Lbbc/beacon/android/SitestatUrlMaker;->makeUrl(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public makeUrl(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 70
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lbbc/beacon/android/SitestatUrlMaker;->addDefaultParameters(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 72
    invoke-direct {p0, p1}, Lbbc/beacon/android/SitestatUrlMaker;->makeQueryString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, queryString:Ljava/lang/String;
    return-object v0
.end method

.method public setIStatsSite(Ljava/lang/String;)V
    .locals 2
    .parameter "site"

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/bbc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/beacon/android/SitestatUrlMaker;->iStatsPath:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setVisitorId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 164
    iput-object p1, p0, Lbbc/beacon/android/SitestatUrlMaker;->visitorId:Ljava/lang/String;

    .line 165
    return-void
.end method

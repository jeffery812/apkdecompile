.class Lbbc/mobile/news/model/Config$TopComparator;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/model/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lbbc/mobile/news/model/Feed;",
        ">;"
    }
.end annotation


# instance fields
.field private mTopFeed:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 562
    .local p0, this:Lbbc/mobile/news/model/Config$TopComparator;,"Lbbc/mobile/news/model/Config$TopComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbbc/mobile/news/model/Config$TopComparator;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    invoke-direct {p0}, Lbbc/mobile/news/model/Config$TopComparator;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lbbc/mobile/news/model/Config$TopComparator;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lbbc/mobile/news/model/Config$TopComparator;->setTopFeed(Ljava/lang/String;)V

    return-void
.end method

.method private setTopFeed(Ljava/lang/String;)V
    .locals 0
    .parameter "topFeed"

    .prologue
    .line 567
    .local p0, this:Lbbc/mobile/news/model/Config$TopComparator;,"Lbbc/mobile/news/model/Config$TopComparator<TT;>;"
    iput-object p1, p0, Lbbc/mobile/news/model/Config$TopComparator;->mTopFeed:Ljava/lang/String;

    .line 568
    return-void
.end method


# virtual methods
.method public compare(Lbbc/mobile/news/model/Feed;Lbbc/mobile/news/model/Feed;)I
    .locals 3
    .parameter "feed1"
    .parameter "feed2"

    .prologue
    .local p0, this:Lbbc/mobile/news/model/Config$TopComparator;,"Lbbc/mobile/news/model/Config$TopComparator<TT;>;"
    const/4 v0, 0x0

    .line 573
    iget-object v1, p0, Lbbc/mobile/news/model/Config$TopComparator;->mTopFeed:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v0

    .line 575
    :cond_1
    invoke-virtual {p1, p2}, Lbbc/mobile/news/model/Feed;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    iget-object v1, p0, Lbbc/mobile/news/model/Config$TopComparator;->mTopFeed:Ljava/lang/String;

    invoke-virtual {p1}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lbbc/mobile/news/model/Feed;

    check-cast p2, Lbbc/mobile/news/model/Feed;

    invoke-virtual {p0, p1, p2}, Lbbc/mobile/news/model/Config$TopComparator;->compare(Lbbc/mobile/news/model/Feed;Lbbc/mobile/news/model/Feed;)I

    move-result v0

    return v0
.end method

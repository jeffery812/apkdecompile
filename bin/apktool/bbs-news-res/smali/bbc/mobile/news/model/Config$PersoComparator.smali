.class Lbbc/mobile/news/model/Config$PersoComparator;
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
    name = "PersoComparator"
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
.field private mPersonalisation:Lbbc/mobile/news/model/Personalisation;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 537
    .local p0, this:Lbbc/mobile/news/model/Config$PersoComparator;,"Lbbc/mobile/news/model/Config$PersoComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbbc/mobile/news/model/Config$PersoComparator;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    invoke-direct {p0}, Lbbc/mobile/news/model/Config$PersoComparator;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lbbc/mobile/news/model/Config$PersoComparator;Lbbc/mobile/news/model/Personalisation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lbbc/mobile/news/model/Config$PersoComparator;->setPersonalisation(Lbbc/mobile/news/model/Personalisation;)V

    return-void
.end method

.method private setPersonalisation(Lbbc/mobile/news/model/Personalisation;)V
    .locals 0
    .parameter "perso"

    .prologue
    .line 542
    .local p0, this:Lbbc/mobile/news/model/Config$PersoComparator;,"Lbbc/mobile/news/model/Config$PersoComparator<TT;>;"
    iput-object p1, p0, Lbbc/mobile/news/model/Config$PersoComparator;->mPersonalisation:Lbbc/mobile/news/model/Personalisation;

    .line 543
    return-void
.end method


# virtual methods
.method public compare(Lbbc/mobile/news/model/Feed;Lbbc/mobile/news/model/Feed;)I
    .locals 3
    .parameter "feed1"
    .parameter "feed2"

    .prologue
    .local p0, this:Lbbc/mobile/news/model/Config$PersoComparator;,"Lbbc/mobile/news/model/Config$PersoComparator<TT;>;"
    const/4 v0, 0x0

    .line 548
    iget-object v1, p0, Lbbc/mobile/news/model/Config$PersoComparator;->mPersonalisation:Lbbc/mobile/news/model/Personalisation;

    if-nez v1, :cond_1

    .line 558
    :cond_0
    :goto_0
    return v0

    .line 550
    :cond_1
    invoke-virtual {p1, p2}, Lbbc/mobile/news/model/Feed;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    iget-object v1, p0, Lbbc/mobile/news/model/Config$PersoComparator;->mPersonalisation:Lbbc/mobile/news/model/Personalisation;

    invoke-virtual {v1, p1}, Lbbc/mobile/news/model/Personalisation;->getFeedOrderIndex(Lbbc/mobile/news/model/Feed;)I

    move-result v1

    iget-object v2, p0, Lbbc/mobile/news/model/Config$PersoComparator;->mPersonalisation:Lbbc/mobile/news/model/Personalisation;

    invoke-virtual {v2, p2}, Lbbc/mobile/news/model/Personalisation;->getFeedOrderIndex(Lbbc/mobile/news/model/Feed;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 553
    const/4 v0, 0x1

    goto :goto_0

    .line 555
    :cond_2
    iget-object v1, p0, Lbbc/mobile/news/model/Config$PersoComparator;->mPersonalisation:Lbbc/mobile/news/model/Personalisation;

    invoke-virtual {v1, p1}, Lbbc/mobile/news/model/Personalisation;->getFeedOrderIndex(Lbbc/mobile/news/model/Feed;)I

    move-result v1

    iget-object v2, p0, Lbbc/mobile/news/model/Config$PersoComparator;->mPersonalisation:Lbbc/mobile/news/model/Personalisation;

    invoke-virtual {v2, p2}, Lbbc/mobile/news/model/Personalisation;->getFeedOrderIndex(Lbbc/mobile/news/model/Feed;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 556
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

    invoke-virtual {p0, p1, p2}, Lbbc/mobile/news/model/Config$PersoComparator;->compare(Lbbc/mobile/news/model/Feed;Lbbc/mobile/news/model/Feed;)I

    move-result v0

    return v0
.end method

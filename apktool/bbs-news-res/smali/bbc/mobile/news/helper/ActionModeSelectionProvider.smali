.class public Lbbc/mobile/news/helper/ActionModeSelectionProvider;
.super Ljava/lang/Object;
.source "ActionModeSelectionProvider.java"


# static fields
.field private static INSTANCE:Lbbc/mobile/news/helper/ActionModeSelectionProvider; = null

.field private static final PERSIST_TTL:J = 0x2710L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSelectedArticle:Lbbc/mobile/news/model/Article;

.field private mSelectedCategory:Lbbc/mobile/news/model/Category;

.field private mTimeCategorySet:J

.field private previousArticle:Lbbc/mobile/news/model/Article;

.field private previousCategory:Lbbc/mobile/news/model/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mTimeCategorySet:J

    .line 6
    return-void
.end method

.method public static final getInstance()Lbbc/mobile/news/helper/ActionModeSelectionProvider;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->INSTANCE:Lbbc/mobile/news/helper/ActionModeSelectionProvider;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;

    invoke-direct {v0}, Lbbc/mobile/news/helper/ActionModeSelectionProvider;-><init>()V

    sput-object v0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->INSTANCE:Lbbc/mobile/news/helper/ActionModeSelectionProvider;

    .line 27
    :cond_0
    sget-object v0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->INSTANCE:Lbbc/mobile/news/helper/ActionModeSelectionProvider;

    return-object v0
.end method


# virtual methods
.method public getPreviousSelectedArticle()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->previousArticle:Lbbc/mobile/news/model/Article;

    return-object v0
.end method

.method public getPreviousSelectedCategory()Lbbc/mobile/news/model/Category;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->previousCategory:Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method public getSelectedArticle()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    return-object v0
.end method

.method public getSelectedCategory()Lbbc/mobile/news/model/Category;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method public isOverPersistTTL()Z
    .locals 6

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mTimeCategorySet:J

    sub-long v0, v2, v4

    .line 47
    .local v0, difference:J
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSelected(Lbbc/mobile/news/model/Article;)Z
    .locals 2
    .parameter "article"

    .prologue
    .line 62
    if-eqz p1, :cond_1

    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;)Z

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected(Lbbc/mobile/news/model/Category;)Z
    .locals 3
    .parameter "category"

    .prologue
    const/4 v0, 0x1

    .line 52
    iget-object v1, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    if-ne p1, v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V
    .locals 3
    .parameter "category"
    .parameter "article"

    .prologue
    .line 32
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    if-ne p2, v0, :cond_0

    .line 33
    sget-object v0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No change in selection : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " A : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    iput-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->previousCategory:Lbbc/mobile/news/model/Category;

    .line 38
    iget-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    iput-object v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->previousArticle:Lbbc/mobile/news/model/Article;

    .line 39
    iput-object p1, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    .line 40
    iput-object p2, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbbc/mobile/news/helper/ActionModeSelectionProvider;->mTimeCategorySet:J

    goto :goto_0
.end method

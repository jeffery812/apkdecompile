.class public Lbbc/mobile/news/helper/SelectionProvider;
.super Ljava/lang/Object;
.source "SelectionProvider.java"


# static fields
.field private static INSTANCE:Lbbc/mobile/news/helper/SelectionProvider; = null

.field private static final PERSIST_TTL:J = 0x2710L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArticleID:Ljava/lang/String;

.field private mSelectedArticle:Lbbc/mobile/news/model/Article;

.field private mSelectedCategory:Lbbc/mobile/news/model/Category;

.field private mTimeCategorySet:J

.field private previousArticle:Lbbc/mobile/news/model/Article;

.field private previousCategory:Lbbc/mobile/news/model/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lbbc/mobile/news/helper/SelectionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/helper/SelectionProvider;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mTimeCategorySet:J

    .line 12
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    .line 189
    iput-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    .line 190
    return-void
.end method

.method public static createDefaultCategory(Lbbc/mobile/news/model/Config;)Lbbc/mobile/news/model/Category;
    .locals 3
    .parameter "config"

    .prologue
    const/4 v2, 0x1

    .line 109
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v1

    invoke-virtual {v1, v2}, Lbbc/mobile/news/cache/CategoryCache;->get(I)Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 110
    .local v0, category:Lbbc/mobile/news/model/Category;
    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0, v2}, Lbbc/mobile/news/model/Config;->getCategory(I)Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 113
    :cond_0
    return-object v0
.end method

.method private createSelectedCategory(Lbbc/mobile/news/model/Config;Ljava/lang/String;)Lbbc/mobile/news/model/Category;
    .locals 2
    .parameter "config"
    .parameter "categoryName"

    .prologue
    .line 100
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v1

    invoke-virtual {v1, p2}, Lbbc/mobile/news/cache/CategoryCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 101
    .local v0, category:Lbbc/mobile/news/model/Category;
    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p1, p2}, Lbbc/mobile/news/model/Config;->getCategory(Ljava/lang/String;)Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 104
    :cond_0
    return-object v0
.end method

.method public static final getInstance()Lbbc/mobile/news/helper/SelectionProvider;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lbbc/mobile/news/helper/SelectionProvider;->INSTANCE:Lbbc/mobile/news/helper/SelectionProvider;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lbbc/mobile/news/helper/SelectionProvider;

    invoke-direct {v0}, Lbbc/mobile/news/helper/SelectionProvider;-><init>()V

    sput-object v0, Lbbc/mobile/news/helper/SelectionProvider;->INSTANCE:Lbbc/mobile/news/helper/SelectionProvider;

    .line 35
    :cond_0
    sget-object v0, Lbbc/mobile/news/helper/SelectionProvider;->INSTANCE:Lbbc/mobile/news/helper/SelectionProvider;

    return-object v0
.end method

.method private initSelection(Lbbc/mobile/news/model/Config;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "config"
    .parameter "categoryName"
    .parameter "articleID"

    .prologue
    const/4 v2, 0x0

    .line 48
    if-nez p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v2

    .line 52
    :cond_1
    invoke-direct {p0}, Lbbc/mobile/news/helper/SelectionProvider;->clear()V

    .line 54
    const/4 v1, 0x0

    .line 55
    .local v1, category:Lbbc/mobile/news/model/Category;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 56
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/helper/SelectionProvider;->createSelectedCategory(Lbbc/mobile/news/model/Config;Ljava/lang/String;)Lbbc/mobile/news/model/Category;

    move-result-object v1

    .line 62
    :goto_1
    const/4 v0, 0x0

    .line 63
    .local v0, article:Lbbc/mobile/news/model/Article;
    if-eqz v1, :cond_4

    .line 64
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 65
    invoke-virtual {v1, p3}, Lbbc/mobile/news/model/Category;->getArticle(Ljava/lang/String;)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 72
    :cond_2
    :goto_2
    iput-object v1, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    .line 73
    iput-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    .line 74
    iget-object v3, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 59
    .end local v0           #article:Lbbc/mobile/news/model/Article;
    :cond_3
    invoke-static {p1}, Lbbc/mobile/news/helper/SelectionProvider;->createDefaultCategory(Lbbc/mobile/news/model/Config;)Lbbc/mobile/news/model/Category;

    move-result-object v1

    goto :goto_1

    .line 69
    .restart local v0       #article:Lbbc/mobile/news/model/Article;
    :cond_4
    invoke-static {p1}, Lbbc/mobile/news/helper/SelectionProvider;->createDefaultCategory(Lbbc/mobile/news/model/Config;)Lbbc/mobile/news/model/Category;

    move-result-object v1

    goto :goto_2
.end method

.method public static final isSelected(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;Lbbc/mobile/news/model/Article;)Z
    .locals 2
    .parameter "selectedCategory"
    .parameter "selectedArticle"
    .parameter "testArticle"

    .prologue
    .line 153
    if-eqz p2, :cond_1

    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v0

    invoke-static {p0, v0}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Category;)Z

    move-result v0

    .line 157
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSelected(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Category;)Z
    .locals 3
    .parameter "selectedCategory"
    .parameter "testCategory"

    .prologue
    const/4 v0, 0x1

    .line 162
    if-ne p1, p0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPreviousSelectedArticle()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->previousArticle:Lbbc/mobile/news/model/Article;

    return-object v0
.end method

.method public getPreviousSelectedCategory()Lbbc/mobile/news/model/Category;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->previousCategory:Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method public getSelectedArticle()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    return-object v0
.end method

.method public getSelectedCategory()Lbbc/mobile/news/model/Category;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method public hasArticleSelection()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initSelection(Lbbc/mobile/news/model/Config;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "config"
    .parameter "extras"

    .prologue
    .line 40
    invoke-static {p2}, Lbbc/mobile/news/util/IntentFactory;->getCategory(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, categoryName:Ljava/lang/String;
    invoke-static {p2}, Lbbc/mobile/news/util/IntentFactory;->getArticleId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/helper/SelectionProvider;->mArticleID:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lbbc/mobile/news/helper/SelectionProvider;->mArticleID:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lbbc/mobile/news/helper/SelectionProvider;->initSelection(Lbbc/mobile/news/model/Config;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isOverPersistTTL()Z
    .locals 6

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lbbc/mobile/news/helper/SelectionProvider;->mTimeCategorySet:J

    sub-long v0, v2, v4

    .line 133
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
    .line 148
    iget-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    iget-object v1, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    invoke-static {v0, v1, p1}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;Lbbc/mobile/news/model/Article;)Z

    move-result v0

    return v0
.end method

.method public isSelected(Lbbc/mobile/news/model/Category;)Z
    .locals 3
    .parameter "category"

    .prologue
    const/4 v0, 0x1

    .line 138
    iget-object v1, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    if-ne p1, v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)V
    .locals 3
    .parameter "category"
    .parameter "article"

    .prologue
    .line 118
    iget-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    if-ne p2, v0, :cond_0

    .line 119
    sget-object v0, Lbbc/mobile/news/helper/SelectionProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No change in selection : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " A : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    iput-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->previousCategory:Lbbc/mobile/news/model/Category;

    .line 124
    iget-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    iput-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->previousArticle:Lbbc/mobile/news/model/Article;

    .line 125
    iput-object p1, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    .line 126
    iput-object p2, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mTimeCategorySet:J

    goto :goto_0
.end method

.method public updateArticleSelection(Lbbc/mobile/news/model/Category;)V
    .locals 3
    .parameter "category"

    .prologue
    .line 78
    invoke-virtual {p0}, Lbbc/mobile/news/helper/SelectionProvider;->hasArticleSelection()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p0, p1}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iput-object p1, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    .line 83
    iget-object v1, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    iget-object v2, p0, Lbbc/mobile/news/helper/SelectionProvider;->mArticleID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbbc/mobile/news/model/Category;->getArticle(Ljava/lang/String;)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 84
    .local v0, article:Lbbc/mobile/news/model/Article;
    if-nez v0, :cond_0

    .line 85
    iget-object v1, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedCategory:Lbbc/mobile/news/model/Category;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 88
    :cond_0
    iput-object v0, p0, Lbbc/mobile/news/helper/SelectionProvider;->mSelectedArticle:Lbbc/mobile/news/model/Article;

    .line 92
    .end local v0           #article:Lbbc/mobile/news/model/Article;
    :cond_1
    return-void
.end method

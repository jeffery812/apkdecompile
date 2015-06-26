.class public Lbbc/mobile/news/helper/ArticleProvider;
.super Ljava/lang/Object;
.source "ArticleProvider.java"


# static fields
.field private static INSTANCE:Lbbc/mobile/news/helper/ArticleProvider;


# instance fields
.field private mCategorys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, categorys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Category;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sput-object p0, Lbbc/mobile/news/helper/ArticleProvider;->INSTANCE:Lbbc/mobile/news/helper/ArticleProvider;

    .line 15
    return-void
.end method

.method public static getInstance()Lbbc/mobile/news/helper/ArticleProvider;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lbbc/mobile/news/helper/ArticleProvider;->INSTANCE:Lbbc/mobile/news/helper/ArticleProvider;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/ArrayList;)Lbbc/mobile/news/helper/ArticleProvider;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Category;",
            ">;)",
            "Lbbc/mobile/news/helper/ArticleProvider;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, categorys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Category;>;"
    const-class v1, Lbbc/mobile/news/helper/ArticleProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbbc/mobile/news/helper/ArticleProvider;->INSTANCE:Lbbc/mobile/news/helper/ArticleProvider;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lbbc/mobile/news/helper/ArticleProvider;

    invoke-direct {v0, p0}, Lbbc/mobile/news/helper/ArticleProvider;-><init>(Ljava/util/ArrayList;)V

    sput-object v0, Lbbc/mobile/news/helper/ArticleProvider;->INSTANCE:Lbbc/mobile/news/helper/ArticleProvider;

    .line 27
    :cond_0
    sget-object v0, Lbbc/mobile/news/helper/ArticleProvider;->INSTANCE:Lbbc/mobile/news/helper/ArticleProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getArticle(Ljava/lang/String;)Lbbc/mobile/news/model/Article;
    .locals 5
    .parameter "articleID"

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lbbc/mobile/news/helper/ArticleProvider;->mCategorys:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 33
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lbbc/mobile/news/helper/ArticleProvider;->mCategorys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lt v2, v4, :cond_2

    .line 44
    .end local v2           #i:I
    :cond_0
    const/4 v0, 0x0

    :cond_1
    monitor-exit p0

    return-object v0

    .line 34
    .restart local v2       #i:I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lbbc/mobile/news/helper/ArticleProvider;->mCategorys:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbbc/mobile/news/model/Category;

    invoke-virtual {v4}, Lbbc/mobile/news/model/Category;->getArticles()Ljava/util/ArrayList;

    move-result-object v1

    .line 35
    .local v1, articles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Article;>;"
    const/4 v3, 0x0

    .local v3, x:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Article;

    .line 37
    .local v0, article:Lbbc/mobile/news/model/Article;
    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 32
    .end local v0           #article:Lbbc/mobile/news/model/Article;
    .end local v1           #articles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Article;>;"
    .end local v2           #i:I
    .end local v3           #x:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

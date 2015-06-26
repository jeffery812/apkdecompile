.class public Lbbc/mobile/news/cache/ArticleCache;
.super Ljava/lang/Object;
.source "ArticleCache.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lbbc/mobile/news/cache/ArticleCache;


# instance fields
.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbbc/mobile/news/model/Article;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lbbc/mobile/news/cache/ArticleCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/cache/ArticleCache;->TAG:Ljava/lang/String;

    .line 12
    new-instance v0, Lbbc/mobile/news/cache/ArticleCache;

    invoke-direct {v0}, Lbbc/mobile/news/cache/ArticleCache;-><init>()V

    sput-object v0, Lbbc/mobile/news/cache/ArticleCache;->mInstance:Lbbc/mobile/news/cache/ArticleCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lbbc/mobile/news/cache/ArticleCache;->TAG:Ljava/lang/String;

    const-string v1, "new ArticleCache() ..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/cache/ArticleCache;->mHashMap:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method public static final declared-synchronized getInstance()Lbbc/mobile/news/cache/ArticleCache;
    .locals 2

    .prologue
    .line 23
    const-class v0, Lbbc/mobile/news/cache/ArticleCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbbc/mobile/news/cache/ArticleCache;->mInstance:Lbbc/mobile/news/cache/ArticleCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/ArticleCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finialize()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lbbc/mobile/news/cache/ArticleCache;->TAG:Ljava/lang/String;

    const-string v1, "finialize()..."

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lbbc/mobile/news/model/Article;
    .locals 1
    .parameter "id"

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/ArticleCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Article;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasArticle(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/ArticleCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Lbbc/mobile/news/model/Article;)V
    .locals 2
    .parameter "article"

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/ArticleCache;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Lbbc/mobile/news/model/Category;)V
    .locals 3
    .parameter "category"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getArticles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 48
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Article;

    .line 47
    .local v0, article:Lbbc/mobile/news/model/Article;
    invoke-virtual {p0, v0}, Lbbc/mobile/news/cache/ArticleCache;->put(Lbbc/mobile/news/model/Article;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    .end local v0           #article:Lbbc/mobile/news/model/Article;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

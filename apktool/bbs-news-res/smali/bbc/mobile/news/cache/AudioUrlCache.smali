.class public Lbbc/mobile/news/cache/AudioUrlCache;
.super Ljava/lang/Object;
.source "AudioUrlCache.java"


# static fields
.field private static final INSTANCE:Lbbc/mobile/news/cache/AudioUrlCache; = null

.field public static final TAG:Ljava/lang/String; = "ArticleCache"


# instance fields
.field private mHashMap:Ljava/util/HashMap;
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
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lbbc/mobile/news/cache/AudioUrlCache;

    invoke-direct {v0}, Lbbc/mobile/news/cache/AudioUrlCache;-><init>()V

    sput-object v0, Lbbc/mobile/news/cache/AudioUrlCache;->INSTANCE:Lbbc/mobile/news/cache/AudioUrlCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/cache/AudioUrlCache;->mHashMap:Ljava/util/HashMap;

    .line 17
    return-void
.end method

.method public static final declared-synchronized getInstance()Lbbc/mobile/news/cache/AudioUrlCache;
    .locals 2

    .prologue
    .line 21
    const-class v0, Lbbc/mobile/news/cache/AudioUrlCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbbc/mobile/news/cache/AudioUrlCache;->INSTANCE:Lbbc/mobile/news/cache/AudioUrlCache;
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
.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/AudioUrlCache;->mHashMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasFeed(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/AudioUrlCache;->mHashMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
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

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "realUrl"

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbbc/mobile/news/cache/AudioUrlCache;->mHashMap:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

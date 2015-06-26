.class Lbbc/mobile/news/util/BitmapCacheOptimizer$1;
.super Ljava/lang/Object;
.source "BitmapCacheOptimizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/util/BitmapCacheOptimizer;->clearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/util/BitmapCacheOptimizer;


# direct methods
.method constructor <init>(Lbbc/mobile/news/util/BitmapCacheOptimizer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/util/BitmapCacheOptimizer$1;->this$0:Lbbc/mobile/news/util/BitmapCacheOptimizer;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 6
    .parameter "f1"
    .parameter "f2"

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 77
    .local v0, modified1:J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 78
    .local v2, modified2:J
    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v4

    :cond_1
    cmp-long v5, v0, v2

    if-gez v5, :cond_2

    const/4 v4, -0x1

    goto :goto_0

    :cond_2
    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lbbc/mobile/news/util/BitmapCacheOptimizer$1;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

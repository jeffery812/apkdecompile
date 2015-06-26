.class public interface abstract Lbbc/mobile/news/stats/StatsProvider;
.super Ljava/lang/Object;
.source "StatsProvider.java"


# virtual methods
.method public abstract action(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract action(Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract pageView(Ljava/lang/String;Ljava/lang/String;Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Lbbc/mobile/news/model/Article;)V
.end method

.method public abstract pageView(Ljava/lang/String;Ljava/lang/String;Lbbc/mobile/news/stats/Stats$COUNTER_NAMES;Lbbc/mobile/news/model/Article;Ljava/lang/String;)V
.end method

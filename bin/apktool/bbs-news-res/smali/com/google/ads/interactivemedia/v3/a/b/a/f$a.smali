.class final Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;
.super Lcom/google/ads/interactivemedia/v3/a/w;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/a/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/a/w",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/a/b/a/f;

.field private final b:Lcom/google/ads/interactivemedia/v3/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/ads/interactivemedia/v3/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/b/h",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/a/f;Lcom/google/ads/interactivemedia/v3/a/f;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/a/w;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/a/w;Lcom/google/ads/interactivemedia/v3/a/b/h;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TV;>;",
            "Lcom/google/ads/interactivemedia/v3/a/b/h",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->a:Lcom/google/ads/interactivemedia/v3/a/b/a/f;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    .line 153
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/ads/interactivemedia/v3/a/b/a/k;-><init>(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/w;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->b:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 155
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/a/k;

    invoke-direct {v0, p2, p6, p5}, Lcom/google/ads/interactivemedia/v3/a/b/a/k;-><init>(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/w;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->c:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 157
    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->d:Lcom/google/ads/interactivemedia/v3/a/b/h;

    .line 158
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->i:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->d:Lcom/google/ads/interactivemedia/v3/a/b/h;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/b/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/d/b;->a:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->b:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->c:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v2, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/t;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->b()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->c()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/b/e;->a:Lcom/google/ads/interactivemedia/v3/a/b/e;

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/a/b/e;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->b:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->c:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-virtual {v2, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/t;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->d()V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 145
    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->f()Lcom/google/ads/interactivemedia/v3/a/d/c;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->a:Lcom/google/ads/interactivemedia/v3/a/b/a/f;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/b/a/f;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->d()Lcom/google/ads/interactivemedia/v3/a/d/c;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->c:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->e()Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->b:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/a/l;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/a/l;->g()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/a/l;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->b()Lcom/google/ads/interactivemedia/v3/a/d/c;

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->b()Lcom/google/ads/interactivemedia/v3/a/d/c;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/j;->a(Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/d/c;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->c:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->c()Lcom/google/ads/interactivemedia/v3/a/d/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->c()Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->d()Lcom/google/ads/interactivemedia/v3/a/d/c;

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/l;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/l;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/l;->m()Lcom/google/ads/interactivemedia/v3/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->o()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/a/d/c;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/f$a;->c:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->n()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->p()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_b
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "null"

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->e()Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto/16 :goto_0
.end method

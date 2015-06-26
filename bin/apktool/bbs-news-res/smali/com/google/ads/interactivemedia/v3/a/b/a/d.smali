.class public final Lcom/google/ads/interactivemedia/v3/a/b/a/d;
.super Lcom/google/ads/interactivemedia/v3/a/d/a;
.source "IMASDK"


# static fields
.field private static final a:Ljava/io/Reader;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/a/d$1;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d$1;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->a:Ljava/io/Reader;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->b:Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/d/b;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    return-void
.end method

.method private q()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private r()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->a:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/d/b;)V

    .line 59
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/i;

    .line 60
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/i;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->b:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/d/b;)V

    .line 65
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->r()Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->r()Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->c:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/d/b;)V

    .line 71
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/o;

    .line 72
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/o;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->d:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/d/b;)V

    .line 77
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->r()Ljava/lang/Object;

    .line 78
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->r()Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public final e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->d:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->b:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/ads/interactivemedia/v3/a/d/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->j:Lcom/google/ads/interactivemedia/v3/a/d/b;

    .line 121
    :goto_1
    return-object v0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->q()Ljava/lang/Object;

    move-result-object v0

    .line 92
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    .line 93
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/google/ads/interactivemedia/v3/a/o;

    .line 94
    check-cast v0, Ljava/util/Iterator;

    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    if-eqz v1, :cond_1

    .line 97
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->e:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_1

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_2
    if-eqz v1, :cond_3

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->d:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->b:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_1

    .line 105
    :cond_4
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/a/o;

    if-eqz v1, :cond_5

    .line 106
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->c:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_1

    .line 107
    :cond_5
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/a/i;

    if-eqz v1, :cond_6

    .line 108
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->a:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_1

    .line 109
    :cond_6
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/a/q;

    if-eqz v1, :cond_a

    .line 110
    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/q;

    .line 111
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->p()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 112
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->f:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_1

    .line 113
    :cond_7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->n()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 114
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->h:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_1

    .line 115
    :cond_8
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->g:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_1

    .line 118
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_a
    instance-of v1, v0, Lcom/google/ads/interactivemedia/v3/a/n;

    if-eqz v1, :cond_b

    .line 121
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->i:Lcom/google/ads/interactivemedia/v3/a/d/b;

    goto :goto_1

    .line 122
    :cond_b
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->e:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/d/b;)V

    .line 145
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v0

    .line 153
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->f:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->g:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v0, v1, :cond_0

    .line 154
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/ads/interactivemedia/v3/a/d/b;->f:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->h:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/d/b;)V

    .line 161
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->r()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->f()Z

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->i:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/d/b;)V

    .line 166
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->r()Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public final k()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v0

    .line 171
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->g:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->f:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/ads/interactivemedia/v3/a/d/b;->g:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->c()D

    move-result-wide v0

    .line 175
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->p()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 178
    :cond_2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->r()Ljava/lang/Object;

    .line 179
    return-wide v0
.end method

.method public final l()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->g:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->f:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/ads/interactivemedia/v3/a/d/b;->g:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->d()J

    move-result-wide v0

    .line 188
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->r()Ljava/lang/Object;

    .line 189
    return-wide v0
.end method

.method public final m()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v0

    .line 194
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->g:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->f:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v0, v1, :cond_0

    .line 195
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/ads/interactivemedia/v3/a/d/b;->g:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/q;->e()I

    move-result v0

    .line 198
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->r()Ljava/lang/Object;

    .line 199
    return v0
.end method

.method public final n()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/d/b;->e:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-ne v0, v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->g()Ljava/lang/String;

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->r()Ljava/lang/Object;

    goto :goto_0
.end method

.method public final o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/d/b;->e:Lcom/google/ads/interactivemedia/v3/a/d/b;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->a(Lcom/google/ads/interactivemedia/v3/a/d/b;)V

    .line 221
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/b/a/d;->c:Ljava/util/List;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/a/q;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/a/q;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

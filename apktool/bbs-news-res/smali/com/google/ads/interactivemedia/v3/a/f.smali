.class public final Lcom/google/ads/interactivemedia/v3/a/f;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/f$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/ads/interactivemedia/v3/a/j;

.field final b:Lcom/google/ads/interactivemedia/v3/a/r;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<*>;",
            "Lcom/google/ads/interactivemedia/v3/a/f$a",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<*>;",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/x;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/ads/interactivemedia/v3/a/b/c;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Lcom/google/ads/interactivemedia/v3/a/b/d;->a:Lcom/google/ads/interactivemedia/v3/a/b/d;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/d;->a:Lcom/google/ads/interactivemedia/v3/a/d;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/google/ads/interactivemedia/v3/a/u;->a:Lcom/google/ads/interactivemedia/v3/a/u;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/a/f;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/d;Lcom/google/ads/interactivemedia/v3/a/e;Ljava/util/Map;ZZZZZZLcom/google/ads/interactivemedia/v3/a/u;Ljava/util/List;)V

    .line 178
    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/a/b/d;Lcom/google/ads/interactivemedia/v3/a/e;Ljava/util/Map;ZZZZZZLcom/google/ads/interactivemedia/v3/a/u;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
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
            "Lcom/google/ads/interactivemedia/v3/a/b/d;",
            "Lcom/google/ads/interactivemedia/v3/a/e;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/ads/interactivemedia/v3/a/h",
            "<*>;>;ZZZZZZ",
            "Lcom/google/ads/interactivemedia/v3/a/u;",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/x;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->c:Ljava/lang/ThreadLocal;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->d:Ljava/util/Map;

    .line 123
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f$1;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/a/f$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/f;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->a:Lcom/google/ads/interactivemedia/v3/a/j;

    .line 130
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f$2;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/a/f$2;-><init>(Lcom/google/ads/interactivemedia/v3/a/f;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->b:Lcom/google/ads/interactivemedia/v3/a/r;

    .line 186
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/c;

    invoke-direct {v0, p3}, Lcom/google/ads/interactivemedia/v3/a/b/c;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->f:Lcom/google/ads/interactivemedia/v3/a/b/c;

    .line 187
    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/a/f;->g:Z

    .line 188
    iput-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/a/f;->i:Z

    .line 189
    iput-boolean p7, p0, Lcom/google/ads/interactivemedia/v3/a/f;->h:Z

    .line 190
    iput-boolean p8, p0, Lcom/google/ads/interactivemedia/v3/a/f;->j:Z

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->Q:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/g;->a:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v1, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 205
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->x:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->m:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->g:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->i:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->k:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Long;

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/u;->a:Lcom/google/ads/interactivemedia/v3/a/u;

    if-ne p10, v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->n:Lcom/google/ads/interactivemedia/v3/a/w;

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/a/w;)Lcom/google/ads/interactivemedia/v3/a/x;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Double;

    if-eqz p9, :cond_1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->p:Lcom/google/ads/interactivemedia/v3/a/w;

    :goto_1
    invoke-static {v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/a/w;)Lcom/google/ads/interactivemedia/v3/a/x;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/Float;

    if-eqz p9, :cond_2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->o:Lcom/google/ads/interactivemedia/v3/a/w;

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/a/w;)Lcom/google/ads/interactivemedia/v3/a/x;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->r:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->t:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->z:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->B:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-class v0, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->v:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->a(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/a/w;)Lcom/google/ads/interactivemedia/v3/a/x;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class v0, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->w:Lcom/google/ads/interactivemedia/v3/a/w;

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->a(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/a/w;)Lcom/google/ads/interactivemedia/v3/a/x;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->D:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->F:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->J:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->O:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->H:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->d:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/c;->a:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->M:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/j;->a:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/i;->a:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->K:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/a;->a:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->R:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/google/ads/interactivemedia/v3/a/b/a/l;->b:Lcom/google/ads/interactivemedia/v3/a/x;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/a/b;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f;->f:Lcom/google/ads/interactivemedia/v3/a/b/c;

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/a/b/a/b;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/c;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/a/f;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f;->f:Lcom/google/ads/interactivemedia/v3/a/b/c;

    invoke-direct {v0, v2, p5}, Lcom/google/ads/interactivemedia/v3/a/b/a/f;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/c;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/a/h;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/f;->f:Lcom/google/ads/interactivemedia/v3/a/b/c;

    invoke-direct {v0, v2, p2, p1}, Lcom/google/ads/interactivemedia/v3/a/b/a/h;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/c;Lcom/google/ads/interactivemedia/v3/a/e;Lcom/google/ads/interactivemedia/v3/a/b/d;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->e:Ljava/util/List;

    .line 244
    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f$5;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/a/f$5;-><init>(Lcom/google/ads/interactivemedia/v3/a/f;)V

    goto/16 :goto_0

    .line 212
    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f$3;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/a/f$3;-><init>(Lcom/google/ads/interactivemedia/v3/a/f;)V

    goto/16 :goto_1

    .line 214
    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/f$4;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/a/f$4;-><init>(Lcom/google/ads/interactivemedia/v3/a/f;)V

    goto/16 :goto_2
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/m;,
            Lcom/google/ads/interactivemedia/v3/a/t;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 795
    .line 796
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->p()Z

    move-result v2

    .line 797
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(Z)V

    .line 799
    :try_start_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    .line 800
    const/4 v1, 0x0

    .line 801
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/a/c/a;

    move-result-object v0

    .line 802
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    .line 803
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 820
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(Z)V

    :goto_0
    return-object v0

    .line 805
    :catch_0
    move-exception v0

    .line 810
    if-eqz v1, :cond_0

    .line 811
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(Z)V

    const/4 v0, 0x0

    goto :goto_0

    .line 813
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/a/d/a;->a(Z)V

    throw v0

    .line 814
    :catch_1
    move-exception v0

    .line 815
    :try_start_2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 816
    :catch_2
    move-exception v0

    .line 818
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method static synthetic a(D)V
    .locals 4
    .parameter

    .prologue
    .line 97
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/w;

    .line 333
    if-eqz v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-object v0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 338
    const/4 v1, 0x0

    .line 339
    if-nez v0, :cond_5

    .line 340
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 341
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 342
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 346
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/f$a;

    .line 347
    if-nez v0, :cond_0

    .line 352
    :try_start_0
    new-instance v3, Lcom/google/ads/interactivemedia/v3/a/f$a;

    invoke-direct {v3}, Lcom/google/ads/interactivemedia/v3/a/f$a;-><init>()V

    .line 353
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/x;

    .line 356
    invoke-interface {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/a/x;->a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {v3, v0}, Lcom/google/ads/interactivemedia/v3/a/f$a;->a(Lcom/google/ads/interactivemedia/v3/a/w;)V

    .line 359
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/f;->d:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 363
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSON cannot handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    if-eqz v1, :cond_4

    .line 368
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/a/x;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/a/x;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/x;

    .line 423
    if-nez v1, :cond_1

    .line 424
    if-ne v0, p1, :cond_0

    .line 425
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 430
    :cond_1
    invoke-interface {v0, p0, p2}, Lcom/google/ads/interactivemedia/v3/a/x;->a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    return-object v0

    .line 435
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON cannot serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/t;
        }
    .end annotation

    .prologue
    .line 689
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 690
    :cond_0
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/a/b/i;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 689
    :cond_1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/d/a;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/a;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v1, p2}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/d/a;->f()Lcom/google/ads/interactivemedia/v3/a/d/b;

    move-result-object v1

    sget-object v2, Lcom/google/ads/interactivemedia/v3/a/d/b;->j:Lcom/google/ads/interactivemedia/v3/a/d/b;

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/m;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/a/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/a/d/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/t;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/t;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/m;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/a/m;
        }
    .end annotation

    .prologue
    .line 571
    :try_start_0
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/a/b/j;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/f;->i:Z

    if-eqz v1, :cond_0

    const-string v1, ")]}\'\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/d/c;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;-><init>(Ljava/io/Writer;)V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "  "

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->c(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/f;->g:Z

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/d/c;->d(Z)V

    .line 572
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/google/ads/interactivemedia/v3/a/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->g()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/a/d/c;->b(Z)V

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->h()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/a/f;->h:Z

    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/a/d/c;->c(Z)V

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->i()Z

    move-result v4

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/a/f;->g:Z

    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/a/d/c;->d(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->a(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/d/c;->b(Z)V

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/a/d/c;->c(Z)V

    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/a/d/c;->d(Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v5, Lcom/google/ads/interactivemedia/v3/a/m;

    invoke-direct {v5, v0}, Lcom/google/ads/interactivemedia/v3/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/a/d/c;->b(Z)V

    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/a/d/c;->c(Z)V

    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/a/d/c;->d(Z)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 575
    :catch_1
    move-exception v0

    .line 574
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/m;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/m;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/a/f;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/f;->f:Lcom/google/ads/interactivemedia/v3/a/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

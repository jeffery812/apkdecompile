.class public final Lcom/google/ads/interactivemedia/v3/a/b/d;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/a/x;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/google/ads/interactivemedia/v3/a/b/d;


# instance fields
.field private b:D

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/interactivemedia/v3/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/d;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/a/b/d;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/a/b/d;->a:Lcom/google/ads/interactivemedia/v3/a/b/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->b:D

    .line 55
    const/16 v0, 0x88

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->c:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->d:Z

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->f:Ljava/util/List;

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->g:Ljava/util/List;

    return-void
.end method

.method private a()Lcom/google/ads/interactivemedia/v3/a/b/d;
    .locals 1

    .prologue
    .line 63
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/b/d;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/a/a/c;Lcom/google/ads/interactivemedia/v3/a/a/d;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/a/a/c;->a()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->b:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/google/ads/interactivemedia/v3/a/a/d;->a()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->b:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private static a(Ljava/lang/Class;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 216
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Class;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<TT;>;)",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 113
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a(Ljava/lang/Class;Z)Z

    move-result v3

    .line 114
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a(Ljava/lang/Class;Z)Z

    move-result v2

    .line 116
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/b/d$1;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/b/d$1;-><init>(Lcom/google/ads/interactivemedia/v3/a/b/d;ZZLcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Class;Z)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 192
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->b:D

    const-wide/high16 v4, -0x4010

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_0

    const-class v0, Lcom/google/ads/interactivemedia/v3/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/a/c;

    const-class v1, Lcom/google/ads/interactivemedia/v3/a/a/d;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/a/a/d;

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a(Lcom/google/ads/interactivemedia/v3/a/a/c;Lcom/google/ads/interactivemedia/v3/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 212
    :goto_0
    return v0

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->d:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/b/d;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 198
    goto :goto_0

    .line 201
    :cond_1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 202
    goto :goto_0

    .line 205
    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->f:Ljava/util/List;

    .line 206
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/b;

    .line 207
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 208
    goto :goto_0

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->g:Ljava/util/List;

    goto :goto_1

    .line 212
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/reflect/Field;Z)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 150
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    .line 188
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->b:D

    const-wide/high16 v4, -0x4010

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_1

    const-class v0, Lcom/google/ads/interactivemedia/v3/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/a/c;

    const-class v1, Lcom/google/ads/interactivemedia/v3/a/a/d;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/a/a/d;

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a(Lcom/google/ads/interactivemedia/v3/a/a/c;Lcom/google/ads/interactivemedia/v3/a/a/d;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 156
    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 160
    goto :goto_0

    .line 163
    :cond_2
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->e:Z

    if-eqz v0, :cond_5

    .line 164
    const-class v0, Lcom/google/ads/interactivemedia/v3/a/a/a;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/a/a;

    .line 165
    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    .line 166
    goto :goto_0

    .line 165
    :cond_4
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    :cond_5
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->d:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/d;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 171
    goto :goto_0

    .line 174
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 175
    goto :goto_0

    .line 178
    :cond_7
    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->f:Ljava/util/List;

    .line 179
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 180
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/c;

    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/a/c;-><init>(Ljava/lang/reflect/Field;)V

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/a/b;

    .line 182
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 183
    goto/16 :goto_0

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/b/d;->g:Ljava/util/List;

    goto :goto_1

    .line 188
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method protected final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/b/d;->a()Lcom/google/ads/interactivemedia/v3/a/b/d;

    move-result-object v0

    return-object v0
.end method

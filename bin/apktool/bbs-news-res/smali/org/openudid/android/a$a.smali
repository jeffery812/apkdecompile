.class final Lorg/openudid/android/a$a;
.super Ljava/lang/Object;
.source "OpenUDIDManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openudid/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/openudid/android/a;


# direct methods
.method private constructor <init>(Lorg/openudid/android/a;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lorg/openudid/android/a$a;->a:Lorg/openudid/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/openudid/android/a;B)V
    .locals 0
    .parameter "x0"
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lorg/openudid/android/a$a;-><init>(Lorg/openudid/android/a;)V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 214
    iget-object v0, p0, Lorg/openudid/android/a$a;->a:Lorg/openudid/android/a;

    invoke-static {v0}, Lorg/openudid/android/a;->a(Lorg/openudid/android/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lorg/openudid/android/a$a;->a:Lorg/openudid/android/a;

    invoke-static {v0}, Lorg/openudid/android/a;->a(Lorg/openudid/android/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/openudid/android/a$a;->a:Lorg/openudid/android/a;

    invoke-static {v0}, Lorg/openudid/android/a;->a(Lorg/openudid/android/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/openudid/android/a$a;->a:Lorg/openudid/android/a;

    invoke-static {v1}, Lorg/openudid/android/a;->a(Lorg/openudid/android/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 217
    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

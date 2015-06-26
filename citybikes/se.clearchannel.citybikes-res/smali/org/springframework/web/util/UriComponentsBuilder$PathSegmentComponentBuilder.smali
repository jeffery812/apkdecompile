.class Lorg/springframework/web/util/UriComponentsBuilder$PathSegmentComponentBuilder;
.super Ljava/lang/Object;
.source "UriComponentsBuilder.java"

# interfaces
.implements Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/util/UriComponentsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathSegmentComponentBuilder"
.end annotation


# instance fields
.field private final pathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter "pathSegments"

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder$PathSegmentComponentBuilder;->pathSegments:Ljava/util/List;

    .line 512
    iget-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder$PathSegmentComponentBuilder;->pathSegments:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/springframework/web/util/UriComponentsBuilder$PathSegmentComponentBuilder;->removeEmptyPathSegments([Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 513
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Lorg/springframework/web/util/UriComponentsBuilder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lorg/springframework/web/util/UriComponentsBuilder$PathSegmentComponentBuilder;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method private varargs removeEmptyPathSegments([Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .parameter "pathSegments"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 518
    .local v4, segment:Ljava/lang/String;
    invoke-static {v4}, Lorg/springframework/util/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 519
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 522
    .end local v4           #segment:Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public appendPath(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
    .locals 2
    .parameter "path"

    .prologue
    .line 530
    new-instance v0, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;-><init>(Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;Lorg/springframework/web/util/UriComponentsBuilder$1;)V

    .line 531
    .local v0, builder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;
    invoke-virtual {v0, p1}, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;->appendPath(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    .line 532
    return-object v0
.end method

.method public varargs appendPathSegments([Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
    .locals 2
    .parameter "pathSegments"

    .prologue
    .line 536
    iget-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder$PathSegmentComponentBuilder;->pathSegments:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/springframework/web/util/UriComponentsBuilder$PathSegmentComponentBuilder;->removeEmptyPathSegments([Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 537
    return-object p0
.end method

.method public build()Lorg/springframework/web/util/UriComponents$PathComponent;
    .locals 2

    .prologue
    .line 526
    new-instance v0, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;

    iget-object v1, p0, Lorg/springframework/web/util/UriComponentsBuilder$PathSegmentComponentBuilder;->pathSegments:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;-><init>(Ljava/util/List;)V

    return-object v0
.end method

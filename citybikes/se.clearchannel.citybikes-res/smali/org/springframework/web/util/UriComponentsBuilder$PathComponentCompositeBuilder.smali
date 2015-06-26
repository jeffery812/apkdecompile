.class Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;
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
    name = "PathComponentCompositeBuilder"
.end annotation


# instance fields
.field private final pathComponentBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;->pathComponentBuilders:Ljava/util/List;

    .line 549
    iget-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;->pathComponentBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    return-void
.end method

.method synthetic constructor <init>(Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;Lorg/springframework/web/util/UriComponentsBuilder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;-><init>(Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;)V

    return-void
.end method


# virtual methods
.method public appendPath(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
    .locals 3
    .parameter "path"

    .prologue
    .line 563
    iget-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;->pathComponentBuilders:Ljava/util/List;

    new-instance v1, Lorg/springframework/web/util/UriComponentsBuilder$FullPathComponentBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/springframework/web/util/UriComponentsBuilder$FullPathComponentBuilder;-><init>(Ljava/lang/String;Lorg/springframework/web/util/UriComponentsBuilder$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    return-object p0
.end method

.method public varargs appendPathSegments([Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
    .locals 3
    .parameter "pathSegments"

    .prologue
    .line 568
    iget-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;->pathComponentBuilders:Ljava/util/List;

    new-instance v1, Lorg/springframework/web/util/UriComponentsBuilder$PathSegmentComponentBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/springframework/web/util/UriComponentsBuilder$PathSegmentComponentBuilder;-><init>([Ljava/lang/String;Lorg/springframework/web/util/UriComponentsBuilder$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    return-object p0
.end method

.method public build()Lorg/springframework/web/util/UriComponents$PathComponent;
    .locals 4

    .prologue
    .line 553
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;->pathComponentBuilders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 556
    .local v2, pathComponents:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/web/util/UriComponents$PathComponent;>;"
    iget-object v3, p0, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;->pathComponentBuilders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    .line 557
    .local v1, pathComponentBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
    invoke-interface {v1}, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;->build()Lorg/springframework/web/util/UriComponents$PathComponent;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    .end local v1           #pathComponentBuilder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
    :cond_0
    new-instance v3, Lorg/springframework/web/util/UriComponents$PathComponentComposite;

    invoke-direct {v3, v2}, Lorg/springframework/web/util/UriComponents$PathComponentComposite;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.class final Lorg/springframework/web/util/UriComponents$PathSegmentComponent;
.super Ljava/lang/Object;
.source "UriComponents.java"

# interfaces
.implements Lorg/springframework/web/util/UriComponents$PathComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/util/UriComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PathSegmentComponent"
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
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p1, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;->pathSegments:Ljava/util/List;

    .line 830
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Lorg/springframework/web/util/UriComponents$PathComponent;
    .locals 6
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 850
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 851
    .local v4, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 852
    .local v1, encodedPathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 853
    .local v3, pathSegment:Ljava/lang/String;
    sget-object v5, Lorg/springframework/web/util/UriComponents$Type;->PATH_SEGMENT:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {v3, p1, v5}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, encodedPathSegment:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 856
    .end local v0           #encodedPathSegment:Ljava/lang/String;
    .end local v3           #pathSegment:Ljava/lang/String;
    :cond_0
    new-instance v5, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;

    invoke-direct {v5, v1}, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;-><init>(Ljava/util/List;)V

    return-object v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 877
    if-ne p0, p1, :cond_0

    .line 878
    const/4 v1, 0x1

    .line 883
    :goto_0
    return v1

    .line 879
    :cond_0
    instance-of v1, p1, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 880
    check-cast v0, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;

    .line 881
    .local v0, other:Lorg/springframework/web/util/UriComponents$PathSegmentComponent;
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 883
    .end local v0           #other:Lorg/springframework/web/util/UriComponents$PathSegmentComponent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public expand(Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Lorg/springframework/web/util/UriComponents$PathComponent;
    .locals 6
    .parameter "uriVariables"

    .prologue
    .line 866
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 867
    .local v4, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 868
    .local v1, expandedPathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 869
    .local v3, pathSegment:Ljava/lang/String;
    #calls: Lorg/springframework/web/util/UriComponents;->expandUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;
    invoke-static {v3, p1}, Lorg/springframework/web/util/UriComponents;->access$200(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, expandedPathSegment:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 872
    .end local v0           #expandedPathSegment:Ljava/lang/String;
    .end local v3           #pathSegment:Ljava/lang/String;
    :cond_0
    new-instance v5, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;

    invoke-direct {v5, v1}, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;-><init>(Ljava/util/List;)V

    return-object v5
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2f

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 834
    .local v1, pathBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 835
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;->pathSegments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 836
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 837
    .local v2, pathSegment:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 839
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 842
    .end local v2           #pathSegment:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 846
    iget-object v0, p0, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;->pathSegments:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 888
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public verify()V
    .locals 3

    .prologue
    .line 860
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents$PathSegmentComponent;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 861
    .local v1, pathSegment:Ljava/lang/String;
    sget-object v2, Lorg/springframework/web/util/UriComponents$Type;->PATH_SEGMENT:Lorg/springframework/web/util/UriComponents$Type;

    #calls: Lorg/springframework/web/util/UriComponents;->verifyUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V
    invoke-static {v1, v2}, Lorg/springframework/web/util/UriComponents;->access$100(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V

    goto :goto_0

    .line 863
    .end local v1           #pathSegment:Ljava/lang/String;
    :cond_0
    return-void
.end method

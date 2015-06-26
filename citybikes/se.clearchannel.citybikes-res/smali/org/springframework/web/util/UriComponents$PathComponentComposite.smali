.class final Lorg/springframework/web/util/UriComponents$PathComponentComposite;
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
    name = "PathComponentComposite"
.end annotation


# instance fields
.field private final pathComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/springframework/web/util/UriComponents$PathComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/springframework/web/util/UriComponents$PathComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 900
    .local p1, pathComponents:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/web/util/UriComponents$PathComponent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    iput-object p1, p0, Lorg/springframework/web/util/UriComponents$PathComponentComposite;->pathComponents:Ljava/util/List;

    .line 902
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Lorg/springframework/web/util/UriComponents$PathComponent;
    .locals 4
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 921
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/springframework/web/util/UriComponents$PathComponentComposite;->pathComponents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 922
    .local v0, encodedComponents:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/web/util/UriComponents$PathComponent;>;"
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents$PathComponentComposite;->pathComponents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/springframework/web/util/UriComponents$PathComponent;

    .line 923
    .local v2, pathComponent:Lorg/springframework/web/util/UriComponents$PathComponent;
    invoke-interface {v2, p1}, Lorg/springframework/web/util/UriComponents$PathComponent;->encode(Ljava/lang/String;)Lorg/springframework/web/util/UriComponents$PathComponent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 925
    .end local v2           #pathComponent:Lorg/springframework/web/util/UriComponents$PathComponent;
    :cond_0
    new-instance v3, Lorg/springframework/web/util/UriComponents$PathComponentComposite;

    invoke-direct {v3, v0}, Lorg/springframework/web/util/UriComponents$PathComponentComposite;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public expand(Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Lorg/springframework/web/util/UriComponents$PathComponent;
    .locals 4
    .parameter "uriVariables"

    .prologue
    .line 935
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/springframework/web/util/UriComponents$PathComponentComposite;->pathComponents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 936
    .local v0, expandedComponents:Ljava/util/List;,"Ljava/util/List<Lorg/springframework/web/util/UriComponents$PathComponent;>;"
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents$PathComponentComposite;->pathComponents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/springframework/web/util/UriComponents$PathComponent;

    .line 937
    .local v2, pathComponent:Lorg/springframework/web/util/UriComponents$PathComponent;
    invoke-interface {v2, p1}, Lorg/springframework/web/util/UriComponents$PathComponent;->expand(Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Lorg/springframework/web/util/UriComponents$PathComponent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 939
    .end local v2           #pathComponent:Lorg/springframework/web/util/UriComponents$PathComponent;
    :cond_0
    new-instance v3, Lorg/springframework/web/util/UriComponents$PathComponentComposite;

    invoke-direct {v3, v0}, Lorg/springframework/web/util/UriComponents$PathComponentComposite;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    .local v1, pathBuilder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents$PathComponentComposite;->pathComponents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/springframework/web/util/UriComponents$PathComponent;

    .line 907
    .local v2, pathComponent:Lorg/springframework/web/util/UriComponents$PathComponent;
    invoke-interface {v2}, Lorg/springframework/web/util/UriComponents$PathComponent;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 909
    .end local v2           #pathComponent:Lorg/springframework/web/util/UriComponents$PathComponent;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 4
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
    .line 913
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/springframework/web/util/UriComponents$PathComponentComposite;->pathComponents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/springframework/web/util/UriComponents$PathComponent;

    .line 915
    .local v1, pathComponent:Lorg/springframework/web/util/UriComponents$PathComponent;
    invoke-interface {v1}, Lorg/springframework/web/util/UriComponents$PathComponent;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 917
    .end local v1           #pathComponent:Lorg/springframework/web/util/UriComponents$PathComponent;
    :cond_0
    return-object v2
.end method

.method public verify()V
    .locals 3

    .prologue
    .line 929
    iget-object v2, p0, Lorg/springframework/web/util/UriComponents$PathComponentComposite;->pathComponents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/springframework/web/util/UriComponents$PathComponent;

    .line 930
    .local v1, pathComponent:Lorg/springframework/web/util/UriComponents$PathComponent;
    invoke-interface {v1}, Lorg/springframework/web/util/UriComponents$PathComponent;->verify()V

    goto :goto_0

    .line 932
    .end local v1           #pathComponent:Lorg/springframework/web/util/UriComponents$PathComponent;
    :cond_0
    return-void
.end method

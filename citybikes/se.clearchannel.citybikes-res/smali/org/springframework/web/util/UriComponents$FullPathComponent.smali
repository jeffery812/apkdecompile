.class final Lorg/springframework/web/util/UriComponents$FullPathComponent;
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
    name = "FullPathComponent"
.end annotation


# instance fields
.field private final path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    iput-object p1, p0, Lorg/springframework/web/util/UriComponents$FullPathComponent;->path:Ljava/lang/String;

    .line 778
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)Lorg/springframework/web/util/UriComponents$PathComponent;
    .locals 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 791
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents$FullPathComponent;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/springframework/web/util/UriComponents$Type;->PATH:Lorg/springframework/web/util/UriComponents$Type;

    invoke-static {v1, p1, v2}, Lorg/springframework/web/util/UriComponents;->encodeUriComponent(Ljava/lang/String;Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, encodedPath:Ljava/lang/String;
    new-instance v1, Lorg/springframework/web/util/UriComponents$FullPathComponent;

    invoke-direct {v1, v0}, Lorg/springframework/web/util/UriComponents$FullPathComponent;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 806
    if-ne p0, p1, :cond_0

    .line 807
    const/4 v1, 0x1

    .line 812
    :goto_0
    return v1

    .line 808
    :cond_0
    instance-of v1, p1, Lorg/springframework/web/util/UriComponents$FullPathComponent;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 809
    check-cast v0, Lorg/springframework/web/util/UriComponents$FullPathComponent;

    .line 810
    .local v0, other:Lorg/springframework/web/util/UriComponents$FullPathComponent;
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents$FullPathComponent;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/springframework/web/util/UriComponents$FullPathComponent;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 812
    .end local v0           #other:Lorg/springframework/web/util/UriComponents$FullPathComponent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public expand(Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Lorg/springframework/web/util/UriComponents$PathComponent;
    .locals 2
    .parameter "uriVariables"

    .prologue
    .line 800
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents$FullPathComponent;->getPath()Ljava/lang/String;

    move-result-object v1

    #calls: Lorg/springframework/web/util/UriComponents;->expandUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/springframework/web/util/UriComponents;->access$200(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, expandedPath:Ljava/lang/String;
    new-instance v1, Lorg/springframework/web/util/UriComponents$FullPathComponent;

    invoke-direct {v1, v0}, Lorg/springframework/web/util/UriComponents$FullPathComponent;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lorg/springframework/web/util/UriComponents$FullPathComponent;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 5
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
    .line 785
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/16 v4, 0x2f

    aput-char v4, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 786
    .local v0, delimiter:Ljava/lang/String;
    iget-object v2, p0, Lorg/springframework/web/util/UriComponents$FullPathComponent;->path:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/springframework/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, pathSegments:[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0}, Lorg/springframework/web/util/UriComponents$FullPathComponent;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public verify()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lorg/springframework/web/util/UriComponents$FullPathComponent;->path:Ljava/lang/String;

    sget-object v1, Lorg/springframework/web/util/UriComponents$Type;->PATH:Lorg/springframework/web/util/UriComponents$Type;

    #calls: Lorg/springframework/web/util/UriComponents;->verifyUriComponent(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V
    invoke-static {v0, v1}, Lorg/springframework/web/util/UriComponents;->access$100(Ljava/lang/String;Lorg/springframework/web/util/UriComponents$Type;)V

    .line 797
    return-void
.end method

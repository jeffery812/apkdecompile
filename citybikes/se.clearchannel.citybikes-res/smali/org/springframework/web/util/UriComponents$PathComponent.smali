.class interface abstract Lorg/springframework/web/util/UriComponents$PathComponent;
.super Ljava/lang/Object;
.source "UriComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/util/UriComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PathComponent"
.end annotation


# virtual methods
.method public abstract encode(Ljava/lang/String;)Lorg/springframework/web/util/UriComponents$PathComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract expand(Lorg/springframework/web/util/UriComponents$UriTemplateVariables;)Lorg/springframework/web/util/UriComponents$PathComponent;
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPathSegments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract verify()V
.end method

.class interface abstract Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
.super Ljava/lang/Object;
.source "UriComponentsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/springframework/web/util/UriComponentsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PathComponentBuilder"
.end annotation


# virtual methods
.method public abstract appendPath(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
.end method

.method public varargs abstract appendPathSegments([Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
.end method

.method public abstract build()Lorg/springframework/web/util/UriComponents$PathComponent;
.end method

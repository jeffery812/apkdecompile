.class Lorg/springframework/web/util/UriComponentsBuilder$FullPathComponentBuilder;
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
    name = "FullPathComponentBuilder"
.end annotation


# instance fields
.field private final path:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder$FullPathComponentBuilder;->path:Ljava/lang/StringBuilder;

    .line 486
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/springframework/web/util/UriComponentsBuilder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lorg/springframework/web/util/UriComponentsBuilder$FullPathComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public appendPath(Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
    .locals 1
    .parameter "path"

    .prologue
    .line 493
    iget-object v0, p0, Lorg/springframework/web/util/UriComponentsBuilder$FullPathComponentBuilder;->path:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    return-object p0
.end method

.method public varargs appendPathSegments([Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;
    .locals 2
    .parameter "pathSegments"

    .prologue
    .line 498
    new-instance v0, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;-><init>(Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;Lorg/springframework/web/util/UriComponentsBuilder$1;)V

    .line 499
    .local v0, builder:Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;
    invoke-virtual {v0, p1}, Lorg/springframework/web/util/UriComponentsBuilder$PathComponentCompositeBuilder;->appendPathSegments([Ljava/lang/String;)Lorg/springframework/web/util/UriComponentsBuilder$PathComponentBuilder;

    .line 500
    return-object v0
.end method

.method public build()Lorg/springframework/web/util/UriComponents$PathComponent;
    .locals 2

    .prologue
    .line 489
    new-instance v0, Lorg/springframework/web/util/UriComponents$FullPathComponent;

    iget-object v1, p0, Lorg/springframework/web/util/UriComponentsBuilder$FullPathComponentBuilder;->path:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/springframework/web/util/UriComponents$FullPathComponent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

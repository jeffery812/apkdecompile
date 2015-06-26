.class public Lorg/springframework/http/converter/feed/AtomFeedHttpMessageConverter;
.super Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;
.source "AtomFeedHttpMessageConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter",
        "<",
        "Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/atom/Feed;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/springframework/http/MediaType;->APPLICATION_ATOM_XML:Lorg/springframework/http/MediaType;

    invoke-direct {p0, v0}, Lorg/springframework/http/converter/feed/AbstractWireFeedHttpMessageConverter;-><init>(Lorg/springframework/http/MediaType;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected supports(Ljava/lang/Class;)Z
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
    .line 46
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Lcom/google/code/rome/android/repackaged/com/sun/syndication/feed/atom/Feed;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

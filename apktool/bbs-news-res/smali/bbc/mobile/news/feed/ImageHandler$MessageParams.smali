.class Lbbc/mobile/news/feed/ImageHandler$MessageParams;
.super Ljava/lang/Object;
.source "ImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/feed/ImageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageParams"
.end annotation


# instance fields
.field private mImageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbbc/mobile/news/view/ImageViewCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/net/URL;

.field final synthetic this$0:Lbbc/mobile/news/feed/ImageHandler;


# direct methods
.method public constructor <init>(Lbbc/mobile/news/feed/ImageHandler;Ljava/lang/ref/WeakReference;Ljava/net/URL;)V
    .locals 0
    .parameter
    .parameter
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lbbc/mobile/news/view/ImageViewCallback;",
            ">;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    .local p2, imageViewRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lbbc/mobile/news/view/ImageViewCallback;>;"
    iput-object p1, p0, Lbbc/mobile/news/feed/ImageHandler$MessageParams;->this$0:Lbbc/mobile/news/feed/ImageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p3, p0, Lbbc/mobile/news/feed/ImageHandler$MessageParams;->mUrl:Ljava/net/URL;

    .line 217
    iput-object p2, p0, Lbbc/mobile/news/feed/ImageHandler$MessageParams;->mImageViewRef:Ljava/lang/ref/WeakReference;

    .line 218
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/feed/ImageHandler$MessageParams;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lbbc/mobile/news/feed/ImageHandler$MessageParams;->mImageViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/feed/ImageHandler$MessageParams;)Ljava/net/URL;
    .locals 1
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lbbc/mobile/news/feed/ImageHandler$MessageParams;->mUrl:Ljava/net/URL;

    return-object v0
.end method

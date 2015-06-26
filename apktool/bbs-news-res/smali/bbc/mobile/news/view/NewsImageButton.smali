.class public Lbbc/mobile/news/view/NewsImageButton;
.super Landroid/widget/ImageButton;
.source "NewsImageButton.java"

# interfaces
.implements Lbbc/mobile/news/view/ImageViewCallback;


# static fields
.field public static final NEWS_BUTTON_IMAGE_HANDLER:Ljava/lang/String; = "NewsImageButton-ImageHandler"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public isShowingPlaceholder()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public setImageURLxx(Ljava/net/URL;Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 1
    .parameter "url"
    .parameter "imageHandler"

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Lbbc/mobile/news/feed/ImageHandler;->getImage(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;Z)V

    .line 40
    :cond_0
    return-void
.end method

.method public showPlaceholder(Z)V
    .locals 0
    .parameter "threadSafe"

    .prologue
    .line 45
    return-void
.end method

.method public updateImage(Ljava/net/URL;Landroid/graphics/Bitmap;Z)Z
    .locals 1
    .parameter "url"
    .parameter "bitmap"
    .parameter "threadSafe"

    .prologue
    .line 49
    invoke-virtual {p0, p2}, Lbbc/mobile/news/view/NewsImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 50
    const/4 v0, 0x1

    return v0
.end method

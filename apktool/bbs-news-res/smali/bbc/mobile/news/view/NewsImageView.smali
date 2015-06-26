.class public Lbbc/mobile/news/view/NewsImageView;
.super Landroid/view/View;
.source "NewsImageView.java"

# interfaces
.implements Lbbc/mobile/news/view/ImageViewCallback;


# static fields
.field public static final NEWS_VIEW_IMAGE_HANDLER:Ljava/lang/String; = "NewsImageView-ImageHandler"

.field private static final SHOW_PLACEHOLDER:I = 0x1

.field private static final UPDATE_BITMAP:I = 0x2

.field protected static mHandler:Landroid/os/Handler;

.field private static mPlaceholderBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDrawEnabled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lbbc/mobile/news/view/NewsImageView$1;

    invoke-direct {v0}, Lbbc/mobile/news/view/NewsImageView$1;-><init>()V

    sput-object v0, Lbbc/mobile/news/view/NewsImageView;->mHandler:Landroid/os/Handler;

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbbc/mobile/news/view/NewsImageView;->mDrawEnabled:Z

    .line 34
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lbbc/mobile/news/view/NewsImageView;->mTmpRect:Landroid/graphics/Rect;

    .line 42
    invoke-virtual {p0}, Lbbc/mobile/news/view/NewsImageView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    sget-object v1, Lbbc/mobile/news/view/NewsImageView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$drawable;->thumbnail_placeholder:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 45
    .local v0, placeholderDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lbbc/mobile/news/view/NewsImageView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    .line 50
    .end local v0           #placeholderDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lbbc/mobile/news/view/NewsImageView;->mPaint:Landroid/graphics/Paint;

    .line 51
    return-void
.end method

.method static synthetic access$0()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lbbc/mobile/news/view/NewsImageView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/view/NewsImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lbbc/mobile/news/view/NewsImageView;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method public isShowingPlaceholder()Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lbbc/mobile/news/view/NewsImageView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-boolean v0, p0, Lbbc/mobile/news/view/NewsImageView;->mDrawEnabled:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lbbc/mobile/news/view/NewsImageView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lbbc/mobile/news/view/NewsImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    sget-object v0, Lbbc/mobile/news/view/NewsImageView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lbbc/mobile/news/view/NewsImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 150
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 151
    iget-object v0, p0, Lbbc/mobile/news/view/NewsImageView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lbbc/mobile/news/view/NewsImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lbbc/mobile/news/view/NewsImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 152
    return-void
.end method

.method public setDrawEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 143
    iput-boolean p1, p0, Lbbc/mobile/news/view/NewsImageView;->mDrawEnabled:Z

    .line 144
    invoke-virtual {p0}, Lbbc/mobile/news/view/NewsImageView;->invalidate()V

    .line 145
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 115
    iput-object p1, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {p0}, Lbbc/mobile/news/view/NewsImageView;->invalidate()V

    .line 117
    return-void
.end method

.method public setImageURLxx(Ljava/net/URL;Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 2
    .parameter "url"
    .parameter "imageHandler"

    .prologue
    const/4 v1, 0x0

    .line 55
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 56
    iput-object p1, p0, Lbbc/mobile/news/view/NewsImageView;->mUrl:Ljava/net/URL;

    .line 57
    iget-object v0, p0, Lbbc/mobile/news/view/NewsImageView;->mUrl:Ljava/net/URL;

    invoke-virtual {p2, p0, v0, v1}, Lbbc/mobile/news/feed/ImageHandler;->getImage(Lbbc/mobile/news/view/ImageViewCallback;Ljava/net/URL;Z)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/NewsImageView;->showPlaceholder(Z)V

    goto :goto_0
.end method

.method public showPlaceholder(Z)V
    .locals 3
    .parameter "threadSafe"

    .prologue
    .line 100
    if-eqz p1, :cond_1

    .line 101
    sget-object v0, Lbbc/mobile/news/view/NewsImageView;->mHandler:Landroid/os/Handler;

    sget-object v1, Lbbc/mobile/news/view/NewsImageView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    iget-object v0, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lbbc/mobile/news/view/NewsImageView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 103
    sget-object v0, Lbbc/mobile/news/view/NewsImageView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lbbc/mobile/news/view/NewsImageView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_0

    .line 107
    sget-object v0, Lbbc/mobile/news/view/NewsImageView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/NewsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    sget-object v0, Lbbc/mobile/news/view/NewsImageView;->mPlaceholderBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public updateImage(Ljava/net/URL;Landroid/graphics/Bitmap;Z)Z
    .locals 4
    .parameter "url"
    .parameter "bitmap"
    .parameter "threadSafe"

    .prologue
    const/4 v0, 0x1

    .line 73
    if-eqz p3, :cond_0

    .line 74
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lbbc/mobile/news/view/NewsImageView;->mUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbbc/mobile/news/view/NewsImageView;->mUrl:Ljava/net/URL;

    invoke-virtual {v1, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v1, p2, :cond_1

    .line 76
    iput-object p2, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 77
    sget-object v1, Lbbc/mobile/news/view/NewsImageView;->mHandler:Landroid/os/Handler;

    sget-object v2, Lbbc/mobile/news/view/NewsImageView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    :goto_0
    return v0

    .line 83
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lbbc/mobile/news/view/NewsImageView;->mUrl:Ljava/net/URL;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbbc/mobile/news/view/NewsImageView;->mUrl:Ljava/net/URL;

    invoke-virtual {v1, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v1, p2, :cond_1

    .line 85
    iput-object p2, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 87
    iget-object v1, p0, Lbbc/mobile/news/view/NewsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/NewsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

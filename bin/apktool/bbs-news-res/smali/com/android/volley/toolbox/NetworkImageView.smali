.class public Lcom/android/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "NetworkImageView.java"


# instance fields
.field private mDefaultImageId:I

.field private mErrorImageId:I

.field private mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return v0
.end method

.method private loadImageIfNecessary(Z)V
    .locals 7
    .parameter "isInLayoutPass"

    .prologue
    const/4 v5, -0x2

    const/4 v6, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getWidth()I

    move-result v3

    .line 105
    .local v3, width:I
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getHeight()I

    move-result v0

    .line 107
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    .line 111
    .local v1, isFullyWrapContent:Z
    :goto_0
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 175
    :cond_0
    :goto_1
    return-void

    .line 107
    .end local v1           #isFullyWrapContent:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 117
    .restart local v1       #isFullyWrapContent:Z
    :cond_2
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 118
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v4, :cond_3

    .line 119
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 120
    iput-object v6, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 122
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 127
    :cond_4
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 128
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 134
    invoke-virtual {p0, v6}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    :cond_5
    iget-object v4, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    iget-object v5, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    new-instance v6, Lcom/android/volley/toolbox/NetworkImageView$1;

    invoke-direct {v6, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V

    invoke-virtual {v4, v5, v6}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v2

    .line 174
    .local v2, newContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
    iput-object v2, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 199
    invoke-virtual {p0}, Lcom/android/volley/toolbox/NetworkImageView;->invalidate()V

    .line 200
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    iput-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 193
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 194
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 179
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 180
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 181
    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0
    .parameter "defaultImage"

    .prologue
    .line 88
    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    .line 89
    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0
    .parameter "errorImage"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I

    .line 97
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V
    .locals 1
    .parameter "url"
    .parameter "imageLoader"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 81
    return-void
.end method

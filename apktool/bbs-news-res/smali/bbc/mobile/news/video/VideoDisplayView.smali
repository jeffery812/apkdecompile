.class public Lbbc/mobile/news/video/VideoDisplayView;
.super Landroid/view/ViewGroup;
.source "VideoDisplayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAttached:Z

.field private mDisplayReady:Z

.field private mDisplayView:Landroid/view/View;

.field private mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lbbc/mobile/news/video/VideoDisplayView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/video/VideoDisplayView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lbbc/mobile/news/video/VideoDisplayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/video/VideoDisplayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoWidth:I

    .line 30
    iput v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoHeight:I

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 56
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/video/VideoDisplayView;->init_gb(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    :goto_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mDisplayView:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 62
    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/video/VideoDisplayView;->init_ics(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lbbc/mobile/news/video/VideoDisplayView;Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lbbc/mobile/news/video/VideoDisplayView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static synthetic access$1(Lbbc/mobile/news/video/VideoDisplayView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lbbc/mobile/news/video/VideoDisplayView;->mDisplayReady:Z

    return-void
.end method

.method static synthetic access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    return-object v0
.end method

.method static synthetic access$3(Lbbc/mobile/news/video/VideoDisplayView;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lbbc/mobile/news/video/VideoDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method private init_gb(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 116
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    .local v0, surfaceView:Landroid/view/SurfaceView;
    iput-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mDisplayView:Landroid/view/View;

    .line 118
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lbbc/mobile/news/video/VideoDisplayView$1;

    invoke-direct {v2, p0}, Lbbc/mobile/news/video/VideoDisplayView$1;-><init>(Lbbc/mobile/news/video/VideoDisplayView;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 148
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 149
    return-void
.end method

.method private init_ics(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 154
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    .local v0, textureView:Landroid/view/TextureView;
    iput-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mDisplayView:Landroid/view/View;

    .line 156
    new-instance v1, Lbbc/mobile/news/video/VideoDisplayView$2;

    invoke-direct {v1, p0}, Lbbc/mobile/news/video/VideoDisplayView$2;-><init>(Lbbc/mobile/news/video/VideoDisplayView;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 193
    return-void
.end method


# virtual methods
.method public attachDisplay(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 79
    iget-boolean v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mDisplayReady:Z

    if-eqz v0, :cond_0

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mAttached:Z

    .line 74
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mAttached:Z

    .line 110
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v3, 0x0

    .line 229
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mDisplayView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mDisplayView:Landroid/view/View;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 232
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    const/16 v5, 0x2f

    .line 198
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 199
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 200
    .local v0, height:I
    iget v2, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 201
    iget v2, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoWidth:I

    .line 202
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoDisplayView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 201
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p1}, Lbbc/mobile/news/video/VideoDisplayView;->getDefaultSize(II)I

    move-result v1

    .line 203
    iget v2, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoHeight:I

    .line 204
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoDisplayView;->getSuggestedMinimumHeight()I

    move-result v3

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p2}, Lbbc/mobile/news/video/VideoDisplayView;->getDefaultSize(II)I

    move-result v0

    .line 205
    iget v2, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_2

    .line 206
    iget v2, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 207
    sget-object v2, Lbbc/mobile/news/video/VideoDisplayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "image too tall, correcting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_0
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 219
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 220
    iget-object v2, p0, Lbbc/mobile/news/video/VideoDisplayView;->mDisplayView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p0, Lbbc/mobile/news/video/VideoDisplayView;->mDisplayView:Landroid/view/View;

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    .line 223
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 224
    return-void

    .line 209
    :cond_2
    iget v2, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_3

    .line 210
    iget v2, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoHeight:I

    div-int v1, v2, v3

    .line 211
    sget-object v2, Lbbc/mobile/news/video/VideoDisplayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "image too wide, correcting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_3
    sget-object v2, Lbbc/mobile/news/video/VideoDisplayView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aspect ratio is correct: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 215
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnVideoDisplayListener(Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 66
    iput-object p1, p0, Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    .line 67
    return-void
.end method

.method public setVideoHeight(I)V
    .locals 1
    .parameter "videoHeight"

    .prologue
    .line 99
    iget v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoHeight:I

    if-eq v0, p1, :cond_0

    .line 100
    iput p1, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoHeight:I

    .line 101
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoDisplayView;->requestLayout()V

    .line 103
    :cond_0
    return-void
.end method

.method public setVideoWidth(I)V
    .locals 1
    .parameter "videoWidth"

    .prologue
    .line 91
    iget v0, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoWidth:I

    if-eq v0, p1, :cond_0

    .line 92
    iput p1, p0, Lbbc/mobile/news/video/VideoDisplayView;->mVideoWidth:I

    .line 93
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoDisplayView;->requestLayout()V

    .line 95
    :cond_0
    return-void
.end method

.class Lbbc/mobile/news/video/VideoDisplayView$2;
.super Ljava/lang/Object;
.source "VideoDisplayView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/video/VideoDisplayView;->init_ics(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/video/VideoDisplayView;


# direct methods
.method constructor <init>(Lbbc/mobile/news/video/VideoDisplayView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 161
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #setter for: Lbbc/mobile/news/video/VideoDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0, p1}, Lbbc/mobile/news/video/VideoDisplayView;->access$3(Lbbc/mobile/news/video/VideoDisplayView;Landroid/graphics/SurfaceTexture;)V

    .line 162
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    const/4 v1, 0x1

    #setter for: Lbbc/mobile/news/video/VideoDisplayView;->mDisplayReady:Z
    invoke-static {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView;->access$1(Lbbc/mobile/news/video/VideoDisplayView;Z)V

    .line 163
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-interface {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;->onDisplayCreated(Lbbc/mobile/news/video/VideoDisplayView;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .parameter "surface"

    .prologue
    .line 179
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    const/4 v1, 0x0

    #setter for: Lbbc/mobile/news/video/VideoDisplayView;->mDisplayReady:Z
    invoke-static {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView;->access$1(Lbbc/mobile/news/video/VideoDisplayView;Z)V

    .line 180
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-interface {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;->onDisplayDestroyed(Lbbc/mobile/news/video/VideoDisplayView;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    const/4 v1, 0x0

    #setter for: Lbbc/mobile/news/video/VideoDisplayView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView;->access$3(Lbbc/mobile/news/video/VideoDisplayView;Landroid/graphics/SurfaceTexture;)V

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 171
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/video/VideoDisplayView$2;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-interface {v0, v1, p2, p3}, Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;->onDisplayChanged(Lbbc/mobile/news/video/VideoDisplayView;II)V

    .line 174
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 191
    return-void
.end method

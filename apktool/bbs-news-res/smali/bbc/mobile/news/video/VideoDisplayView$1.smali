.class Lbbc/mobile/news/video/VideoDisplayView$1;
.super Ljava/lang/Object;
.source "VideoDisplayView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/video/VideoDisplayView;->init_gb(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    iput-object p1, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 133
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-interface {v0, v1, p3, p4}, Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;->onDisplayChanged(Lbbc/mobile/news/video/VideoDisplayView;II)V

    .line 136
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 123
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #setter for: Lbbc/mobile/news/video/VideoDisplayView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lbbc/mobile/news/video/VideoDisplayView;->access$0(Lbbc/mobile/news/video/VideoDisplayView;Landroid/view/SurfaceHolder;)V

    .line 124
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    const/4 v1, 0x1

    #setter for: Lbbc/mobile/news/video/VideoDisplayView;->mDisplayReady:Z
    invoke-static {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView;->access$1(Lbbc/mobile/news/video/VideoDisplayView;Z)V

    .line 125
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-interface {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;->onDisplayCreated(Lbbc/mobile/news/video/VideoDisplayView;)V

    .line 128
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 141
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    const/4 v1, 0x0

    #setter for: Lbbc/mobile/news/video/VideoDisplayView;->mDisplayReady:Z
    invoke-static {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView;->access$1(Lbbc/mobile/news/video/VideoDisplayView;Z)V

    .line 142
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    #getter for: Lbbc/mobile/news/video/VideoDisplayView;->mListener:Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoDisplayView;->access$2(Lbbc/mobile/news/video/VideoDisplayView;)Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    invoke-interface {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView$OnVideoDisplay;->onDisplayDestroyed(Lbbc/mobile/news/video/VideoDisplayView;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/video/VideoDisplayView$1;->this$0:Lbbc/mobile/news/video/VideoDisplayView;

    const/4 v1, 0x0

    #setter for: Lbbc/mobile/news/video/VideoDisplayView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Lbbc/mobile/news/video/VideoDisplayView;->access$0(Lbbc/mobile/news/video/VideoDisplayView;Landroid/view/SurfaceHolder;)V

    .line 146
    return-void
.end method

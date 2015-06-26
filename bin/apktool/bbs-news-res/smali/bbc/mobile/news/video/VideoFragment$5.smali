.class Lbbc/mobile/news/video/VideoFragment$5;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/video/VideoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mControlsHeight:I

.field private mShortAnimTime:I

.field final synthetic this$0:Lbbc/mobile/news/video/VideoFragment;

.field private final synthetic val$controlsView:Landroid/view/View;


# direct methods
.method constructor <init>(Lbbc/mobile/news/video/VideoFragment;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/video/VideoFragment$5;->this$0:Lbbc/mobile/news/video/VideoFragment;

    iput-object p2, p0, Lbbc/mobile/news/video/VideoFragment$5;->val$controlsView:Landroid/view/View;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 4
    .parameter "visible"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment$5;->this$0:Lbbc/mobile/news/video/VideoFragment;

    invoke-virtual {v1}, Lbbc/mobile/news/video/VideoFragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_5

    .line 203
    iget v1, p0, Lbbc/mobile/news/video/VideoFragment$5;->mControlsHeight:I

    if-nez v1, :cond_2

    .line 204
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment$5;->val$controlsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/video/VideoFragment$5;->mControlsHeight:I

    .line 206
    :cond_2
    iget v1, p0, Lbbc/mobile/news/video/VideoFragment$5;->mShortAnimTime:I

    if-nez v1, :cond_3

    .line 207
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment$5;->this$0:Lbbc/mobile/news/video/VideoFragment;

    invoke-virtual {v1}, Lbbc/mobile/news/video/VideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/video/VideoFragment$5;->mShortAnimTime:I

    .line 209
    :cond_3
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment$5;->val$controlsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_4

    :goto_1
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lbbc/mobile/news/video/VideoFragment$5;->mShortAnimTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 218
    :goto_2
    if-eqz p1, :cond_0

    .line 219
    iget-object v0, p0, Lbbc/mobile/news/video/VideoFragment$5;->this$0:Lbbc/mobile/news/video/VideoFragment;

    #getter for: Lbbc/mobile/news/video/VideoFragment;->mControlsUiHider:Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;
    invoke-static {v0}, Lbbc/mobile/news/video/VideoFragment;->access$3(Lbbc/mobile/news/video/VideoFragment;)Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;->delayed(I)V

    goto :goto_0

    .line 209
    :cond_4
    iget v0, p0, Lbbc/mobile/news/video/VideoFragment$5;->mControlsHeight:I

    goto :goto_1

    .line 215
    :cond_5
    iget-object v1, p0, Lbbc/mobile/news/video/VideoFragment$5;->val$controlsView:Landroid/view/View;

    if-eqz p1, :cond_6

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/16 v0, 0x8

    goto :goto_3
.end method

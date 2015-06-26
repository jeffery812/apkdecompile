.class Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;
.super Lbbc/mobile/news/video/SystemUiHider;
.source "SystemUiHider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/video/SystemUiHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemUiHiderBase"
.end annotation


# instance fields
.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1
    .parameter "activity"
    .parameter "anchorView"
    .parameter "flags"

    .prologue
    .line 367
    invoke-direct {p0, p1, p2, p3}, Lbbc/mobile/news/video/SystemUiHider;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mVisible:Z

    .line 368
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 389
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 393
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mOnVisibilityChangeListener:Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v1}, Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 394
    iput-boolean v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mVisible:Z

    .line 395
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mVisible:Z

    return v0
.end method

.method public setup()V
    .locals 2

    .prologue
    const/16 v1, 0x300

    .line 373
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 378
    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 400
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 403
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mOnVisibilityChangeListener:Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v3}, Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 404
    iput-boolean v3, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderBase;->mVisible:Z

    .line 405
    return-void
.end method

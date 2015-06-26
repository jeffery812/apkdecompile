.class Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;
.super Ljava/lang/Object;
.source "SystemUiHider.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;


# direct methods
.method constructor <init>(Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hideActionBar()V
    .locals 3

    .prologue
    .line 338
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 339
    iget-object v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    iget-object v1, v1, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 340
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 341
    iget-object v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    iget-object v1, v1, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 344
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    return-void
.end method

.method private showActionBar()V
    .locals 3

    .prologue
    .line 328
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 329
    iget-object v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    iget-object v1, v1, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 330
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    iget-object v1, v1, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 334
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 6
    .parameter "vis"

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/16 v3, 0x400

    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    #getter for: Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mTestFlags:I
    invoke-static {v0}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->access$0(Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;)I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_1

    .line 293
    invoke-direct {p0}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->hideActionBar()V

    .line 294
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    iget-object v0, v0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 303
    :cond_0
    :goto_0
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    iget-object v0, v0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v2}, Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 304
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    #setter for: Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mVisible:Z
    invoke-static {v0, v2}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->access$1(Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;Z)V

    .line 324
    :goto_1
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    iget v0, v0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->hideActionBar()V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    iget-object v0, v0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    #getter for: Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mShowFlags:I
    invoke-static {v1}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->access$2(Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_4

    .line 312
    invoke-direct {p0}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->showActionBar()V

    .line 313
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    iget-object v0, v0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 321
    :cond_3
    :goto_2
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    iget-object v0, v0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mOnVisibilityChangeListener:Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;

    invoke-interface {v0, v4}, Lbbc/mobile/news/video/SystemUiHider$OnVisibilityChangeListener;->onVisibilityChange(Z)V

    .line 322
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    #setter for: Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mVisible:Z
    invoke-static {v0, v4}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->access$1(Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;Z)V

    goto :goto_1

    .line 315
    :cond_4
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->this$1:Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;

    iget v0, v0, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 316
    invoke-direct {p0}, Lbbc/mobile/news/video/SystemUiHider$SystemUiHiderHoneycomb$1;->showActionBar()V

    goto :goto_2
.end method

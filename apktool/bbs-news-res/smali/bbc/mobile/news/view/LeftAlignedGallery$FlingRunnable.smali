.class Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;
.super Ljava/lang/Object;
.source "LeftAlignedGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/LeftAlignedGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lbbc/mobile/news/view/LeftAlignedGallery;


# direct methods
.method public constructor <init>(Lbbc/mobile/news/view/LeftAlignedGallery;)V
    .locals 2
    .parameter

    .prologue
    .line 1428
    iput-object p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1429
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lbbc/mobile/news/view/LeftAlignedGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1430
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1464
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method static synthetic access$1(Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 1421
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private endFling(Z)V
    .locals 2
    .parameter "scrollIntoSlots"

    .prologue
    .line 1469
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1471
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    #calls: Lbbc/mobile/news/view/LeftAlignedGallery;->scrollIntoSlots()V
    invoke-static {v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->access$2(Lbbc/mobile/news/view/LeftAlignedGallery;)V

    .line 1472
    :cond_0
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v0, p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1435
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1476
    iget-object v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget v5, v5, Lbbc/mobile/news/view/LeftAlignedGallery;->mItemCount:I

    if-nez v5, :cond_0

    .line 1477
    invoke-direct {p0, v7}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->endFling(Z)V

    .line 1515
    :goto_0
    return-void

    .line 1481
    :cond_0
    iget-object v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    const/4 v6, 0x0

    #setter for: Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldStopFling:Z
    invoke-static {v5, v6}, Lbbc/mobile/news/view/LeftAlignedGallery;->access$3(Lbbc/mobile/news/view/LeftAlignedGallery;Z)V

    .line 1483
    iget-object v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1484
    .local v3, scroller:Landroid/widget/Scroller;
    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    .line 1485
    .local v1, more:Z
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    .line 1489
    .local v4, x:I
    iget v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->mLastFlingX:I

    sub-int v0, v5, v4

    .line 1492
    .local v0, delta:I
    if-lez v0, :cond_1

    .line 1494
    iget-object v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v6, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget v6, v6, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    #setter for: Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I
    invoke-static {v5, v6}, Lbbc/mobile/news/view/LeftAlignedGallery;->access$4(Lbbc/mobile/news/view/LeftAlignedGallery;I)V

    .line 1497
    iget-object v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v5}, Lbbc/mobile/news/view/LeftAlignedGallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v6}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v6}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1507
    :goto_1
    iget-object v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v5, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->trackMotionScroll(I)V

    .line 1509
    if-eqz v1, :cond_2

    iget-object v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    #getter for: Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldStopFling:Z
    invoke-static {v5}, Lbbc/mobile/news/view/LeftAlignedGallery;->access$5(Lbbc/mobile/news/view/LeftAlignedGallery;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1510
    iput v4, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->mLastFlingX:I

    .line 1511
    iget-object v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v5, p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1500
    :cond_1
    iget-object v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v5}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 1501
    .local v2, offsetToLast:I
    iget-object v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget-object v6, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    iget v6, v6, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    add-int/2addr v6, v2

    #setter for: Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I
    invoke-static {v5, v6}, Lbbc/mobile/news/view/LeftAlignedGallery;->access$4(Lbbc/mobile/news/view/LeftAlignedGallery;I)V

    .line 1504
    iget-object v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v5}, Lbbc/mobile/news/view/LeftAlignedGallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v6}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v6}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    neg-int v5, v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    .line 1513
    .end local v2           #offsetToLast:I
    :cond_2
    invoke-direct {p0, v7}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->endFling(Z)V

    goto/16 :goto_0
.end method

.method public startUsingDistance(I)V
    .locals 6
    .parameter "distance"

    .prologue
    const/4 v1, 0x0

    .line 1450
    if-nez p1, :cond_0

    .line 1457
    :goto_0
    return-void

    .line 1452
    :cond_0
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->startCommon()V

    .line 1454
    iput v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->mLastFlingX:I

    .line 1455
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    neg-int v3, p1

    iget-object v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    #getter for: Lbbc/mobile/news/view/LeftAlignedGallery;->mAnimationDuration:I
    invoke-static {v2}, Lbbc/mobile/news/view/LeftAlignedGallery;->access$1(Lbbc/mobile/news/view/LeftAlignedGallery;)I

    move-result v5

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1456
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v0, p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startUsingVelocity(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 1438
    if-nez p1, :cond_0

    .line 1447
    :goto_0
    return-void

    .line 1440
    :cond_0
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->startCommon()V

    .line 1442
    if-gez p1, :cond_1

    move v1, v6

    .line 1443
    .local v1, initialX:I
    :goto_1
    iput v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->mLastFlingX:I

    .line 1444
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1446
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v0, p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1           #initialX:I
    :cond_1
    move v1, v2

    .line 1442
    goto :goto_1
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 1460
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->this$0:Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v0, p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1461
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->endFling(Z)V

    .line 1462
    return-void
.end method

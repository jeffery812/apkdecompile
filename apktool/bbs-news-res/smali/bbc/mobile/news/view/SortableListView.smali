.class public Lbbc/mobile/news/view/SortableListView;
.super Landroid/widget/ListView;
.source "SortableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/view/SortableListView$DragListener;,
        Lbbc/mobile/news/view/SortableListView$DropListener;,
        Lbbc/mobile/news/view/SortableListView$RemoveListener;
    }
.end annotation


# static fields
.field private static final FAST_NEGATIVE_SCROLL_SPEED:Ljava/lang/Integer; = null

.field private static final FAST_SCROLL_SPEED:Ljava/lang/Integer; = null

.field private static final FLING:I = 0x0

.field private static final NORMAL_NEGATIVE_SCROLL_SPEED:Ljava/lang/Integer; = null

.field private static final NORMAL_SCROLL_SPEED:Ljava/lang/Integer; = null

.field private static final SCROLL_TIME:Ljava/lang/Integer; = null

.field private static final SLIDE:I = 0x1

.field private static final SLOW_SCROLL_SPEED:Ljava/lang/Integer; = null

.field public static final TAG:Ljava/lang/String; = null

.field private static final TRASH:I = 0x2

.field private static final ZERO_SCROLL_SPEED:Ljava/lang/Integer;


# instance fields
.field private disabledItemsCannotBeMoved:Z

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lbbc/mobile/news/view/SortableListView$DragListener;

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lbbc/mobile/news/view/SortableListView$DropListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemGrabberWidth:I

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mRemoveListener:Lbbc/mobile/news/view/SortableListView$RemoveListener;

.field private mRemoveMode:I

.field private mSrcDragPos:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTrashcan:Landroid/graphics/drawable/Drawable;

.field private mUpperBound:I

.field mViewLocation:[I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lbbc/mobile/news/view/SortableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/SortableListView;->TAG:Ljava/lang/String;

    .line 39
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/SortableListView;->SCROLL_TIME:Ljava/lang/Integer;

    .line 41
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/SortableListView;->FAST_SCROLL_SPEED:Ljava/lang/Integer;

    .line 42
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/SortableListView;->NORMAL_SCROLL_SPEED:Ljava/lang/Integer;

    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/SortableListView;->SLOW_SCROLL_SPEED:Ljava/lang/Integer;

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/SortableListView;->ZERO_SCROLL_SPEED:Ljava/lang/Integer;

    .line 45
    const/16 v0, -0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/SortableListView;->FAST_NEGATIVE_SCROLL_SPEED:Ljava/lang/Integer;

    .line 46
    const/4 v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/SortableListView;->NORMAL_NEGATIVE_SCROLL_SPEED:Ljava/lang/Integer;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/view/SortableListView;->disabledItemsCannotBeMoved:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveMode:I

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/view/SortableListView;->mTempRect:Landroid/graphics/Rect;

    .line 525
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lbbc/mobile/news/view/SortableListView;->mViewLocation:[I

    .line 91
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/SortableListView;->init(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/view/SortableListView;->disabledItemsCannotBeMoved:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveMode:I

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/view/SortableListView;->mTempRect:Landroid/graphics/Rect;

    .line 525
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lbbc/mobile/news/view/SortableListView;->mViewLocation:[I

    .line 97
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/SortableListView;->init(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/view/SortableListView;->disabledItemsCannotBeMoved:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveMode:I

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/view/SortableListView;->mTempRect:Landroid/graphics/Rect;

    .line 525
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lbbc/mobile/news/view/SortableListView;->mViewLocation:[I

    .line 103
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/SortableListView;->init(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/view/SortableListView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/view/SortableListView;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lbbc/mobile/news/view/SortableListView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2(Lbbc/mobile/news/view/SortableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    invoke-direct {p0}, Lbbc/mobile/news/view/SortableListView;->stopDragging()V

    return-void
.end method

.method static synthetic access$3(Lbbc/mobile/news/view/SortableListView;)Lbbc/mobile/news/view/SortableListView$RemoveListener;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveListener:Lbbc/mobile/news/view/SortableListView$RemoveListener;

    return-object v0
.end method

.method static synthetic access$4(Lbbc/mobile/news/view/SortableListView;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lbbc/mobile/news/view/SortableListView;->mSrcDragPos:I

    return v0
.end method

.method static synthetic access$5(Lbbc/mobile/news/view/SortableListView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/SortableListView;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 254
    iget v0, p0, Lbbc/mobile/news/view/SortableListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 255
    iget v0, p0, Lbbc/mobile/news/view/SortableListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lbbc/mobile/news/view/SortableListView;->mUpperBound:I

    .line 257
    :cond_0
    iget v0, p0, Lbbc/mobile/news/view/SortableListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 258
    iget v0, p0, Lbbc/mobile/news/view/SortableListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lbbc/mobile/news/view/SortableListView;->mLowerBound:I

    .line 260
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 10

    .prologue
    .line 312
    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v0, v8, v9

    .line 313
    .local v0, childnum:I
    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    iget v9, p0, Lbbc/mobile/news/view/SortableListView;->mSrcDragPos:I

    if-le v8, v9, :cond_0

    .line 314
    add-int/lit8 v0, v0, 0x1

    .line 316
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getHeaderViewsCount()I

    move-result v4

    .line 317
    .local v4, numheaders:I
    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mSrcDragPos:I

    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lbbc/mobile/news/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 318
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 319
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lbbc/mobile/news/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 320
    .local v7, vv:Landroid/view/View;
    if-nez v7, :cond_1

    .line 365
    return-void

    .line 324
    :cond_1
    iget v2, p0, Lbbc/mobile/news/view/SortableListView;->mItemHeightNormal:I

    .line 325
    .local v2, height:I
    const/4 v6, 0x0

    .line 326
    .local v6, visibility:I
    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    if-ge v8, v4, :cond_4

    if-ne v3, v4, :cond_4

    .line 329
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 330
    const/4 v6, 0x4

    .line 360
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 361
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 362
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 318
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 333
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v2, p0, Lbbc/mobile/news/view/SortableListView;->mItemHeightExpanded:I

    .line 335
    goto :goto_1

    .line 336
    :cond_4
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 338
    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    iget v9, p0, Lbbc/mobile/news/view/SortableListView;->mSrcDragPos:I

    if-eq v8, v9, :cond_5

    invoke-virtual {p0, v7}, Lbbc/mobile/news/view/SortableListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_6

    .line 340
    :cond_5
    const/4 v6, 0x4

    .line 341
    goto :goto_1

    .line 347
    :cond_6
    const/4 v2, 0x0

    .line 348
    const/4 v6, 0x4

    .line 350
    goto :goto_1

    .line 351
    :cond_7
    if-ne v3, v0, :cond_2

    .line 352
    iget-boolean v8, p0, Lbbc/mobile/news/view/SortableListView;->disabledItemsCannotBeMoved:Z

    if-eqz v8, :cond_8

    .line 353
    iget-boolean v8, p0, Lbbc/mobile/news/view/SortableListView;->disabledItemsCannotBeMoved:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 354
    :cond_8
    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    if-lt v8, v4, :cond_2

    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_2

    .line 355
    iget v2, p0, Lbbc/mobile/news/view/SortableListView;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    .line 529
    iget v3, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveMode:I

    if-ne v3, v6, :cond_1

    .line 530
    const/high16 v0, 0x3f80

    .line 531
    .local v0, alpha:F
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 532
    .local v2, width:I
    div-int/lit8 v3, v2, 0x2

    if-le p1, v3, :cond_0

    .line 533
    sub-int v3, v2, p1

    int-to-float v3, v3

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 535
    :cond_0
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 538
    .end local v0           #alpha:F
    .end local v2           #width:I
    :cond_1
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mViewLocation:[I

    invoke-virtual {p0, v3}, Lbbc/mobile/news/view/SortableListView;->getLocationOnScreen([I)V

    .line 539
    iget v3, p0, Lbbc/mobile/news/view/SortableListView;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lbbc/mobile/news/view/SortableListView;->mYOffset:I

    add-int v1, v3, v4

    .line 540
    .local v1, newY:I
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mViewLocation:[I

    aget v3, v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 541
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mViewLocation:[I

    aget v3, v3, v6

    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 542
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 544
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    iget-object v5, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 546
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .line 547
    .restart local v2       #width:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    if-le p2, v3, :cond_3

    .line 548
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 557
    .end local v2           #width:I
    :cond_2
    :goto_0
    return-void

    .line 550
    .restart local v2       #width:I
    :cond_3
    if-lez v2, :cond_4

    div-int/lit8 v3, v2, 0x4

    if-le p1, v3, :cond_4

    .line 551
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 554
    :cond_4
    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 237
    iget v2, p0, Lbbc/mobile/news/view/SortableListView;->mDragPointY:I

    sub-int v2, p1, v2

    iget v3, p0, Lbbc/mobile/news/view/SortableListView;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 238
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lbbc/mobile/news/view/SortableListView;->myPointToPosition(II)I

    move-result v1

    .line 239
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 240
    iget v2, p0, Lbbc/mobile/news/view/SortableListView;->mSrcDragPos:I

    if-gt v1, v2, :cond_0

    .line 241
    add-int/lit8 v1, v1, 0x1

    .line 249
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    if-gez v0, :cond_0

    .line 247
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 119
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lbbc/mobile/news/view/SortableListView;->mTouchSlop:I

    .line 120
    const/4 v2, -0x1

    iput v2, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveMode:I

    .line 121
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$dimen;->personalise_item_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 122
    .local v1, normalHeight:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getDividerHeight()I

    move-result v0

    .line 123
    .local v0, dividerHeight:I
    add-int v2, v1, v0

    iput v2, p0, Lbbc/mobile/news/view/SortableListView;->mItemHeightNormal:I

    .line 124
    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lbbc/mobile/news/view/SortableListView;->mItemHeightHalf:I

    .line 125
    mul-int/lit8 v2, v1, 0x2

    iput v2, p0, Lbbc/mobile/news/view/SortableListView;->mItemHeightExpanded:I

    .line 126
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$dimen;->personalise_item_grabber_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lbbc/mobile/news/view/SortableListView;->mItemGrabberWidth:I

    .line 127
    return-void
.end method

.method private myPointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 214
    if-gez p2, :cond_0

    .line 217
    iget v5, p0, Lbbc/mobile/news/view/SortableListView;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lbbc/mobile/news/view/SortableListView;->myPointToPosition(II)I

    move-result v4

    .line 218
    .local v4, pos:I
    if-lez v4, :cond_0

    .line 219
    add-int/lit8 v5, v4, -0x1

    .line 232
    .end local v4           #pos:I
    :goto_0
    return v5

    .line 223
    :cond_0
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mTempRect:Landroid/graphics/Rect;

    .line 224
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getChildCount()I

    move-result v1

    .line 225
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_1
    if-gez v3, :cond_1

    .line 232
    const/4 v5, -0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0, v3}, Lbbc/mobile/news/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 228
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0

    .line 225
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method private platformSpecificScrollBy(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 471
    new-array v1, v3, [Ljava/lang/Class;

    .line 472
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v5

    .line 475
    .local v1, paramTypes:[Ljava/lang/Class;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "smoothScrollBy"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 476
    .local v0, method:Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 477
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 478
    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 480
    .local v2, paramValues:[Ljava/lang/Object;
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    .end local v0           #method:Ljava/lang/reflect/Method;
    .end local v2           #paramValues:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 484
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 6
    .parameter "bm"
    .parameter "x"
    .parameter "y"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 496
    invoke-direct {p0}, Lbbc/mobile/news/view/SortableListView;->stopDragging()V

    .line 498
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 499
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 500
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lbbc/mobile/news/view/SortableListView;->mDragPointX:I

    sub-int v3, p2, v3

    iget v4, p0, Lbbc/mobile/news/view/SortableListView;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 501
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lbbc/mobile/news/view/SortableListView;->mDragPointY:I

    sub-int v3, p3, v3

    iget v4, p0, Lbbc/mobile/news/view/SortableListView;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 502
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 503
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 504
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 505
    const v3, 0x10198

    .line 504
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 510
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 511
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 513
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 514
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 515
    .local v1, v:Landroid/widget/ImageView;
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 516
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 517
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 518
    iput-object p1, p0, Lbbc/mobile/news/view/SortableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 520
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mWindowManager:Landroid/view/WindowManager;

    .line 521
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    iput-object v1, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    .line 523
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 562
    iget-object v1, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 565
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 566
    iget-object v1, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 567
    iput-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    .line 569
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lbbc/mobile/news/view/SortableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 570
    iget-object v1, p0, Lbbc/mobile/news/view/SortableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 571
    iput-object v3, p0, Lbbc/mobile/news/view/SortableListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 573
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/view/SortableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 574
    iget-object v1, p0, Lbbc/mobile/news/view/SortableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 576
    :cond_2
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 269
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 270
    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getFirstVisiblePosition()I

    move-result v2

    .line 273
    .local v2, position:I
    invoke-virtual {p0, v6}, Lbbc/mobile/news/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 274
    .local v4, y:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lbbc/mobile/news/view/SortableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 275
    invoke-virtual {p0, v2, v4}, Lbbc/mobile/news/view/SortableListView;->setSelectionFromTop(II)V

    .line 279
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->layoutChildren()V

    .line 280
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/SortableListView;->getChildAt(I)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 287
    :goto_1
    if-nez v3, :cond_1

    .line 288
    return-void

    .line 291
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 292
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lbbc/mobile/news/view/SortableListView;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 110
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/NullPointerException;
    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Lbbc/mobile/news/view/SortableListView;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    .line 138
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveListener:Lbbc/mobile/news/view/SortableListView$RemoveListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v7, :cond_0

    .line 139
    iget v7, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveMode:I

    if-nez v7, :cond_0

    .line 140
    new-instance v7, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lbbc/mobile/news/view/SortableListView$1;

    invoke-direct {v9, p0}, Lbbc/mobile/news/view/SortableListView$1;-><init>(Lbbc/mobile/news/view/SortableListView;)V

    invoke-direct {v7, v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 164
    :cond_0
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragListener:Lbbc/mobile/news/view/SortableListView$DragListener;

    if-nez v7, :cond_1

    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mDropListener:Lbbc/mobile/news/view/SortableListView$DropListener;

    if-eqz v7, :cond_2

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 204
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_1
    return v7

    .line 167
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 168
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 169
    .local v6, y:I
    invoke-virtual {p0, v5, v6}, Lbbc/mobile/news/view/SortableListView;->pointToPosition(II)I

    move-result v3

    .line 170
    .local v3, itemnum:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_2

    .line 173
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    .line 174
    .local v2, itemEnabled:Z
    if-eqz v2, :cond_2

    .line 177
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v3, v7

    invoke-virtual {p0, v7}, Lbbc/mobile/news/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 178
    .local v1, item:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    sub-int v7, v5, v7

    iput v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragPointX:I

    .line 179
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    sub-int v7, v6, v7

    iput v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragPointY:I

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v7, v5

    iput v7, p0, Lbbc/mobile/news/view/SortableListView;->mXOffset:I

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v7, v6

    iput v7, p0, Lbbc/mobile/news/view/SortableListView;->mYOffset:I

    .line 183
    iget v7, p0, Lbbc/mobile/news/view/SortableListView;->mItemGrabberWidth:I

    if-ge v5, v7, :cond_3

    .line 186
    invoke-virtual {v1}, Landroid/view/ViewGroup;->buildDrawingCache()V

    .line 187
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 189
    invoke-direct {p0, v0, v5, v6}, Lbbc/mobile/news/view/SortableListView;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 190
    iput v3, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    .line 191
    iget v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    iput v7, p0, Lbbc/mobile/news/view/SortableListView;->mSrcDragPos:I

    .line 192
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getHeight()I

    move-result v7

    iput v7, p0, Lbbc/mobile/news/view/SortableListView;->mHeight:I

    .line 193
    iget v4, p0, Lbbc/mobile/news/view/SortableListView;->mTouchSlop:I

    .line 194
    .local v4, touchSlop:I
    sub-int v7, v6, v4

    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mHeight:I

    div-int/lit8 v8, v8, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lbbc/mobile/news/view/SortableListView;->mUpperBound:I

    .line 195
    add-int v7, v6, v4

    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mHeight:I

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v8, v8, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lbbc/mobile/news/view/SortableListView;->mLowerBound:I

    .line 198
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 200
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #touchSlop:I
    :cond_3
    invoke-direct {p0}, Lbbc/mobile/news/view/SortableListView;->stopDragging()V

    goto/16 :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 372
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v7, :cond_0

    .line 373
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 376
    :cond_0
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragListener:Lbbc/mobile/news/view/SortableListView$DragListener;

    if-nez v7, :cond_1

    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mDropListener:Lbbc/mobile/news/view/SortableListView$DropListener;

    if-eqz v7, :cond_f

    :cond_1
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v7, :cond_f

    .line 377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 378
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 455
    .end local v0           #action:I
    :cond_2
    :goto_0
    return v6

    .line 381
    .restart local v0       #action:I
    :pswitch_0
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView;->mTempRect:Landroid/graphics/Rect;

    .line 382
    .local v2, r:Landroid/graphics/Rect;
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 383
    invoke-direct {p0}, Lbbc/mobile/news/view/SortableListView;->stopDragging()V

    .line 384
    iget v7, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveMode:I

    if-ne v7, v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v2, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    .line 385
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveListener:Lbbc/mobile/news/view/SortableListView$RemoveListener;

    if-eqz v7, :cond_3

    .line 386
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveListener:Lbbc/mobile/news/view/SortableListView$RemoveListener;

    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mSrcDragPos:I

    invoke-interface {v7, v8}, Lbbc/mobile/news/view/SortableListView$RemoveListener;->remove(I)V

    .line 388
    :cond_3
    invoke-direct {p0, v6}, Lbbc/mobile/news/view/SortableListView;->unExpandViews(Z)V

    goto :goto_0

    .line 391
    :cond_4
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mDropListener:Lbbc/mobile/news/view/SortableListView$DropListener;

    if-eqz v7, :cond_5

    iget v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    if-ltz v7, :cond_5

    iget v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 393
    iget-boolean v7, p0, Lbbc/mobile/news/view/SortableListView;->disabledItemsCannotBeMoved:Z

    if-eqz v7, :cond_6

    .line 395
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mSrcDragPos:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 396
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mDropListener:Lbbc/mobile/news/view/SortableListView$DropListener;

    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mSrcDragPos:I

    iget v9, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    invoke-interface {v7, v8, v9}, Lbbc/mobile/news/view/SortableListView$DropListener;->drop(II)V

    .line 403
    :cond_5
    :goto_1
    invoke-direct {p0, v10}, Lbbc/mobile/news/view/SortableListView;->unExpandViews(Z)V

    goto :goto_0

    .line 400
    :cond_6
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mDropListener:Lbbc/mobile/news/view/SortableListView$DropListener;

    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mSrcDragPos:I

    iget v9, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    invoke-interface {v7, v8, v9}, Lbbc/mobile/news/view/SortableListView$DropListener;->drop(II)V

    goto :goto_1

    .line 409
    .end local v2           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 410
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    .line 411
    .local v5, y:I
    invoke-direct {p0, v4, v5}, Lbbc/mobile/news/view/SortableListView;->dragView(II)V

    .line 412
    invoke-direct {p0, v5}, Lbbc/mobile/news/view/SortableListView;->getItemForPosition(I)I

    move-result v1

    .line 413
    .local v1, itemnum:I
    if-ltz v1, :cond_2

    .line 414
    if-eqz v0, :cond_7

    iget v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    if-eq v1, v7, :cond_9

    .line 415
    :cond_7
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragListener:Lbbc/mobile/news/view/SortableListView$DragListener;

    if-eqz v7, :cond_8

    .line 416
    iget-object v7, p0, Lbbc/mobile/news/view/SortableListView;->mDragListener:Lbbc/mobile/news/view/SortableListView$DragListener;

    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    invoke-interface {v7, v8, v1}, Lbbc/mobile/news/view/SortableListView$DragListener;->drag(II)V

    .line 418
    :cond_8
    iput v1, p0, Lbbc/mobile/news/view/SortableListView;->mDragPos:I

    .line 419
    invoke-direct {p0}, Lbbc/mobile/news/view/SortableListView;->doExpansion()V

    .line 421
    :cond_9
    sget-object v3, Lbbc/mobile/news/view/SortableListView;->ZERO_SCROLL_SPEED:Ljava/lang/Integer;

    .line 422
    .local v3, speed:Ljava/lang/Integer;
    invoke-direct {p0, v5}, Lbbc/mobile/news/view/SortableListView;->adjustScrollBounds(I)V

    .line 424
    iget v7, p0, Lbbc/mobile/news/view/SortableListView;->mLowerBound:I

    if-le v5, v7, :cond_d

    .line 428
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_c

    .line 429
    iget v7, p0, Lbbc/mobile/news/view/SortableListView;->mHeight:I

    iget v8, p0, Lbbc/mobile/news/view/SortableListView;->mLowerBound:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    if-le v5, v7, :cond_b

    sget-object v3, Lbbc/mobile/news/view/SortableListView;->FAST_SCROLL_SPEED:Ljava/lang/Integer;

    .line 446
    :cond_a
    :goto_2
    sget-object v7, Lbbc/mobile/news/view/SortableListView;->ZERO_SCROLL_SPEED:Ljava/lang/Integer;

    invoke-virtual {v3, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 448
    sget-object v7, Lbbc/mobile/news/view/SortableListView;->SCROLL_TIME:Ljava/lang/Integer;

    invoke-direct {p0, v3, v7}, Lbbc/mobile/news/view/SortableListView;->platformSpecificScrollBy(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 429
    :cond_b
    sget-object v3, Lbbc/mobile/news/view/SortableListView;->NORMAL_SCROLL_SPEED:Ljava/lang/Integer;

    goto :goto_2

    .line 432
    :cond_c
    sget-object v3, Lbbc/mobile/news/view/SortableListView;->SLOW_SCROLL_SPEED:Ljava/lang/Integer;

    .line 434
    goto :goto_2

    .line 435
    :cond_d
    iget v7, p0, Lbbc/mobile/news/view/SortableListView;->mUpperBound:I

    if-ge v5, v7, :cond_a

    .line 437
    iget v7, p0, Lbbc/mobile/news/view/SortableListView;->mUpperBound:I

    div-int/lit8 v7, v7, 0x2

    if-ge v5, v7, :cond_e

    sget-object v3, Lbbc/mobile/news/view/SortableListView;->FAST_NEGATIVE_SCROLL_SPEED:Ljava/lang/Integer;

    .line 438
    :goto_3
    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getFirstVisiblePosition()I

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {p0, v10}, Lbbc/mobile/news/view/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lbbc/mobile/news/view/SortableListView;->getPaddingTop()I

    move-result v8

    if-lt v7, v8, :cond_a

    .line 442
    sget-object v3, Lbbc/mobile/news/view/SortableListView;->ZERO_SCROLL_SPEED:Ljava/lang/Integer;

    goto :goto_2

    .line 437
    :cond_e
    sget-object v3, Lbbc/mobile/news/view/SortableListView;->NORMAL_NEGATIVE_SCROLL_SPEED:Ljava/lang/Integer;

    goto :goto_3

    .line 455
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v3           #speed:Ljava/lang/Integer;
    .end local v4           #x:I
    .end local v5           #y:I
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDisabledItemsCannotBeMoved(Z)V
    .locals 0
    .parameter "disabledItemsCannotBeMoved"

    .prologue
    .line 131
    iput-boolean p1, p0, Lbbc/mobile/news/view/SortableListView;->disabledItemsCannotBeMoved:Z

    .line 132
    return-void
.end method

.method public setDragListener(Lbbc/mobile/news/view/SortableListView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 586
    iput-object p1, p0, Lbbc/mobile/news/view/SortableListView;->mDragListener:Lbbc/mobile/news/view/SortableListView$DragListener;

    .line 587
    return-void
.end method

.method public setDropListener(Lbbc/mobile/news/view/SortableListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 591
    iput-object p1, p0, Lbbc/mobile/news/view/SortableListView;->mDropListener:Lbbc/mobile/news/view/SortableListView$DropListener;

    .line 592
    return-void
.end method

.method public setRemoveListener(Lbbc/mobile/news/view/SortableListView$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 596
    iput-object p1, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveListener:Lbbc/mobile/news/view/SortableListView$RemoveListener;

    .line 597
    return-void
.end method

.method public setTrashcan(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "trash"

    .prologue
    .line 580
    iput-object p1, p0, Lbbc/mobile/news/view/SortableListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    .line 581
    const/4 v0, 0x2

    iput v0, p0, Lbbc/mobile/news/view/SortableListView;->mRemoveMode:I

    .line 582
    return-void
.end method

.class public Lbbc/mobile/news/view/LeftAlignedGallery;
.super Lbbc/mobile/news/view/AbsSpinner;
.source "LeftAlignedGallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationDuration:I

.field private mContextMenuInfo:Lbbc/mobile/news/view/AdapterView$AdapterContextMenuInfo;

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field private mFlingRunnable:Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mIsFirstScroll:Z

.field private mLeftMost:I

.field private mReceivedInvokeKeyDown:Z

.field private mRightMost:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lbbc/mobile/news/view/LeftAlignedGallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/LeftAlignedGallery;->TAG:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 177
    invoke-direct {p0, p1, p2, p3}, Lbbc/mobile/news/view/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput v10, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpacing:I

    .line 79
    const/16 v8, 0x190

    iput v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mAnimationDuration:I

    .line 115
    new-instance v8, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;

    invoke-direct {v8, p0}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;-><init>(Lbbc/mobile/news/view/LeftAlignedGallery;)V

    iput-object v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFlingRunnable:Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;

    .line 121
    new-instance v8, Lbbc/mobile/news/view/LeftAlignedGallery$1;

    invoke-direct {v8, p0}, Lbbc/mobile/news/view/LeftAlignedGallery$1;-><init>(Lbbc/mobile/news/view/LeftAlignedGallery;)V

    iput-object v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 145
    iput-boolean v9, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldCallbackDuringFling:Z

    .line 150
    iput-boolean v9, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 179
    new-instance v8, Landroid/view/GestureDetector;

    invoke-direct {v8, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 180
    iget-object v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, v9}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 183
    sget-object v8, Lbbc/mobile/news/R$styleable;->LeftAlignedGallery:[I

    .line 182
    invoke-virtual {p1, p2, v8, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 185
    .local v2, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x5

    iput v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpacing:I

    .line 188
    sget v8, Lbbc/mobile/news/R$styleable;->LeftAlignedGallery_spacing:I

    iget v9, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpacing:I

    .line 187
    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {p0, v8}, Lbbc/mobile/news/view/LeftAlignedGallery;->setSpacing(I)V

    .line 190
    const/high16 v8, 0x3f80

    invoke-virtual {p0, v8}, Lbbc/mobile/news/view/LeftAlignedGallery;->setUnselectedAlpha(F)V

    .line 192
    invoke-virtual {p0, v10}, Lbbc/mobile/news/view/LeftAlignedGallery;->setHorizontalFadingEdgeEnabled(Z)V

    .line 194
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    const/16 v1, 0x400

    .line 200
    .local v1, FLAG_USE_CHILD_DRAWING_ORDER:I
    const/16 v0, 0x800

    .line 203
    .local v0, FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I
    :try_start_0
    const-class v8, Landroid/view/ViewGroup;

    .line 204
    const-string v9, "FLAG_USE_CHILD_DRAWING_ORDER"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 205
    .local v3, childDrawingOrder:Ljava/lang/reflect/Field;
    const-class v8, Landroid/view/ViewGroup;

    .line 206
    const-string v9, "FLAG_SUPPORT_STATIC_TRANSFORMATIONS"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 208
    .local v7, supportStaticTrans:Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 209
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 211
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 212
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 222
    .end local v3           #childDrawingOrder:Ljava/lang/reflect/Field;
    .end local v7           #supportStaticTrans:Ljava/lang/reflect/Field;
    :goto_0
    :try_start_1
    const-class v8, Landroid/view/ViewGroup;

    const-string v9, "mGroupFlags"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 223
    .local v5, groupFlags:Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 224
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 226
    .local v6, groupFlagsValue:I
    or-int/2addr v6, v1

    .line 227
    or-int/2addr v6, v0

    .line 229
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, p0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 237
    .end local v5           #groupFlags:Ljava/lang/reflect/Field;
    .end local v6           #groupFlagsValue:I
    :goto_1
    return-void

    .line 213
    :catch_0
    move-exception v4

    .line 214
    .local v4, e:Ljava/lang/NoSuchFieldException;
    sget-object v8, Lbbc/mobile/news/view/LeftAlignedGallery;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    .end local v4           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v4

    .line 216
    .local v4, e:Ljava/lang/IllegalAccessException;
    sget-object v8, Lbbc/mobile/news/view/LeftAlignedGallery;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 231
    .end local v4           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 232
    .local v4, e:Ljava/lang/NoSuchFieldException;
    sget-object v8, Lbbc/mobile/news/view/LeftAlignedGallery;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 233
    .end local v4           #e:Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v4

    .line 234
    .local v4, e:Ljava/lang/IllegalAccessException;
    sget-object v8, Lbbc/mobile/news/view/LeftAlignedGallery;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lbbc/mobile/news/view/LeftAlignedGallery;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    iput-boolean p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSuppressSelectionChanged:Z

    return-void
.end method

.method static synthetic access$1(Lbbc/mobile/news/view/LeftAlignedGallery;)I
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$2(Lbbc/mobile/news/view/LeftAlignedGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->scrollIntoSlots()V

    return-void
.end method

.method static synthetic access$3(Lbbc/mobile/news/view/LeftAlignedGallery;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-boolean p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldStopFling:Z

    return-void
.end method

.method static synthetic access$4(Lbbc/mobile/news/view/LeftAlignedGallery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    return-void
.end method

.method static synthetic access$5(Lbbc/mobile/news/view/LeftAlignedGallery;)Z
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$6(Lbbc/mobile/news/view/LeftAlignedGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 1135
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->dispatchUnpress()V

    return-void
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 948
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getMeasuredHeight()I

    move-result v3

    .line 949
    .local v3, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 951
    .local v1, childHeight:I
    :goto_1
    const/4 v2, 0x0

    .line 953
    .local v2, childTop:I
    iget v4, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mGravity:I

    sparse-switch v4, :sswitch_data_0

    .line 966
    :goto_2
    return v2

    .line 948
    .end local v1           #childHeight:I
    .end local v2           #childTop:I
    .end local v3           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getHeight()I

    move-result v3

    goto :goto_0

    .line 949
    .restart local v3       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 955
    .restart local v1       #childHeight:I
    .restart local v2       #childTop:I
    :sswitch_0
    iget-object v4, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 956
    goto :goto_2

    .line 958
    :sswitch_1
    iget-object v4, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    .line 959
    iget-object v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 958
    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 960
    .local v0, availableSpace:I
    iget-object v4, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v0, 0x2

    add-int v2, v4, v5

    .line 961
    goto :goto_2

    .line 963
    .end local v0           #availableSpace:I
    :sswitch_2
    iget-object v4, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v3, v4

    sub-int v2, v4, v1

    goto :goto_2

    .line 953
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toLeft"

    .prologue
    .line 487
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildCount()I

    move-result v6

    .line 488
    .local v6, numChildren:I
    iget v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    .line 489
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 490
    .local v7, start:I
    const/4 v1, 0x0

    .line 492
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 493
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPaddingLeft()I

    move-result v3

    .line 494
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-lt v5, v6, :cond_2

    .line 517
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v7, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->detachViewsFromParent(II)V

    .line 519
    if-eqz p1, :cond_1

    .line 520
    iget v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    .line 522
    :cond_1
    return-void

    .line 495
    .restart local v3       #galleryLeft:I
    :cond_2
    invoke-virtual {p0, v5}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 499
    add-int/lit8 v1, v1, 0x1

    .line 500
    iget-object v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mRecycler:Lbbc/mobile/news/view/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 494
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 504
    .end local v0           #child:Landroid/view/View;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPaddingRight()I

    move-result v9

    sub-int v4, v8, v9

    .line 505
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 506
    invoke-virtual {p0, v5}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 507
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 510
    move v7, v5

    .line 511
    add-int/lit8 v1, v1, 0x1

    .line 512
    iget-object v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mRecycler:Lbbc/mobile/news/view/AbsSpinner$RecycleBin;

    add-int v9, v2, v5

    invoke-virtual {v8, v9, v0}, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 505
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1192
    const/4 v6, 0x0

    .line 1194
    .local v6, handled:Z
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mOnItemLongClickListener:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mOnItemLongClickListener:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchView:Landroid/view/View;

    .line 1196
    iget v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    .line 1195
    invoke-interface/range {v0 .. v5}, Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;->onItemLongClick(Lbbc/mobile/news/view/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1199
    :cond_0
    if-nez v6, :cond_1

    .line 1200
    new-instance v0, Lbbc/mobile/news/view/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lbbc/mobile/news/view/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mContextMenuInfo:Lbbc/mobile/news/view/AdapterView$AdapterContextMenuInfo;

    .line 1201
    invoke-super {p0, p0}, Lbbc/mobile/news/view/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1204
    :cond_1
    if-eqz v6, :cond_2

    .line 1205
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->performHapticFeedback(I)Z

    .line 1208
    :cond_2
    return v6
.end method

.method private dispatchPress(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    const/4 v0, 0x1

    .line 1128
    if-eqz p1, :cond_0

    .line 1129
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1132
    :cond_0
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->setPressed(Z)V

    .line 1133
    return-void
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1137
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 1141
    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/LeftAlignedGallery;->setPressed(Z)V

    .line 1142
    return-void

    .line 1138
    :cond_0
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1137
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fillToGalleryLeft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 687
    iget v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpacing:I

    .line 688
    .local v3, itemSpacing:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPaddingLeft()I

    move-result v2

    .line 691
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 695
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 698
    iget v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 699
    .local v0, curPosition:I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 713
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_0

    if-gez v0, :cond_2

    .line 731
    :cond_0
    return-void

    .line 703
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_1
    const/4 v0, 0x0

    .line 704
    .restart local v0       #curPosition:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPaddingRight()I

    move-result v6

    sub-int v1, v5, v6

    .line 706
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 716
    :cond_2
    iget v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lbbc/mobile/news/view/LeftAlignedGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 719
    iput v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    .line 722
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 723
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 737
    iget v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpacing:I

    .line 738
    .local v3, itemSpacing:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPaddingRight()I

    move-result v8

    sub-int v2, v7, v8

    .line 739
    .local v2, galleryRight:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildCount()I

    move-result v4

    .line 740
    .local v4, numChildren:I
    iget v5, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mItemCount:I

    .line 743
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 747
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 750
    iget v7, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    add-int v1, v7, v4

    .line 751
    .local v1, curPosition:I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 763
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_0

    if-lt v1, v5, :cond_2

    .line 777
    :cond_0
    return-void

    .line 754
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_1
    iget v7, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    .line 755
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPaddingLeft()I

    move-result v0

    .line 756
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldStopFling:Z

    goto :goto_0

    .line 766
    :cond_2
    iget v7, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lbbc/mobile/news/view/LeftAlignedGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 769
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 477
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 802
    iget-object v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mRecycler:Lbbc/mobile/news/view/AbsSpinner$RecycleBin;

    invoke-virtual {v1}, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->get()Landroid/view/View;

    move-result-object v0

    .line 804
    .local v0, child:Landroid/view/View;
    iget-object v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1, p1, v0, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 807
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mRightMost:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mRightMost:I

    .line 808
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mLeftMost:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mLeftMost:I

    .line 811
    invoke-direct {p0, v0, p2, p3, p4}, Lbbc/mobile/news/view/LeftAlignedGallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 813
    return-object v0
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 460
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 464
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 460
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSuppressSelectionChanged:Z

    .line 550
    invoke-super {p0}, Lbbc/mobile/news/view/AbsSpinner;->selectionChanged()V

    .line 552
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->invalidate()V

    .line 553
    return-void
.end method

.method private scrollIntoSlots()V
    .locals 5

    .prologue
    .line 530
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    if-nez v3, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    invoke-static {v3}, Lbbc/mobile/news/view/LeftAlignedGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v1

    .line 534
    .local v1, selectedCenter:I
    iget-object v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPaddingLeft()I

    move-result v4

    add-int v2, v3, v4

    .line 536
    .local v2, targetCenter:I
    sub-int v0, v2, v1

    .line 537
    .local v0, scrollAmount:I
    if-eqz v0, :cond_2

    .line 538
    iget-object v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFlingRunnable:Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;

    invoke-virtual {v3, v0}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->startUsingDistance(I)V

    goto :goto_0

    .line 540
    :cond_2
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->onFinishedMovement()V

    goto :goto_0
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 568
    iget-object v7, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    .line 569
    .local v7, selView:Landroid/view/View;
    iget-object v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    if-nez v8, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 574
    .local v3, galleryCenter:I
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 578
    :cond_2
    const v2, 0x7fffffff

    .line 579
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 580
    .local v6, newSelectedChildIndex:I
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildCount()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-gez v4, :cond_3

    .line 598
    :goto_2
    iget v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    add-int v5, v8, v6

    .line 600
    .local v5, newPos:I
    iget v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 601
    invoke-virtual {p0, v5}, Lbbc/mobile/news/view/LeftAlignedGallery;->setSelectedPositionInt(I)V

    .line 602
    invoke-virtual {p0, v5}, Lbbc/mobile/news/view/LeftAlignedGallery;->setNextSelectedPositionInt(I)V

    .line 603
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->checkSelectionChanged()V

    goto :goto_0

    .line 582
    .end local v5           #newPos:I
    :cond_3
    invoke-virtual {p0, v4}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 584
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 586
    move v6, v4

    .line 587
    goto :goto_2

    .line 590
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 591
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 590
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 592
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 593
    move v2, v1

    .line 594
    move v6, v4

    .line 580
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 871
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 872
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 873
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 876
    :cond_0
    if-eqz p4, :cond_1

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {p0, p1, v8, v6}, Lbbc/mobile/news/view/LeftAlignedGallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 881
    iget v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mHeightMeasureSpec:I

    .line 882
    iget-object v9, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 881
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 883
    .local v1, childHeightSpec:I
    iget v8, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mWidthMeasureSpec:I

    .line 884
    iget-object v9, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 883
    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 920
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 926
    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lbbc/mobile/news/view/LeftAlignedGallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 927
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 929
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 930
    .local v7, width:I
    if-eqz p4, :cond_2

    .line 931
    move v2, p3

    .line 932
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 938
    .local v3, childRight:I
    :goto_1
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 939
    return-void

    .line 876
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v7           #width:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 934
    .restart local v0       #childBottom:I
    .restart local v1       #childHeightSpec:I
    .restart local v4       #childTop:I
    .restart local v5       #childWidthSpec:I
    .restart local v7       #width:I
    :cond_2
    sub-int v2, p3, v7

    .line 935
    .restart local v2       #childLeft:I
    move v3, p3

    .restart local v3       #childRight:I
    goto :goto_1
.end method

.method private updateSelectedItemMetadata()V
    .locals 4

    .prologue
    .line 1335
    iget-object v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    .line 1336
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    iget v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    .line 1337
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1341
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1342
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1343
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1347
    :cond_2
    if-eqz v1, :cond_0

    .line 1354
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 329
    instance-of v0, p1, Landroid/view/ViewGroup$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 324
    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mItemCount:I

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 1214
    invoke-virtual {p1, p0, v0, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1157
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1160
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1151
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 347
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 339
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 334
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1374
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    iget v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1377
    .local v0, selectedIndex:I
    if-gez v0, :cond_1

    .line 1387
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 1379
    .restart local p2
    :cond_1
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_2

    move p2, v0

    .line 1381
    goto :goto_0

    .line 1382
    :cond_2
    if-lt p2, v0, :cond_0

    .line 1384
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 303
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 304
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 306
    const/4 v0, 0x1

    return v0

    .line 304
    :cond_0
    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mContextMenuInfo:Lbbc/mobile/news/view/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v6, 0x0

    .line 409
    iget v7, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mItemCount:I

    if-nez v7, :cond_1

    move v6, p2

    .line 447
    :cond_0
    :goto_0
    return v6

    .line 415
    :cond_1
    const/4 v1, 0x0

    .line 417
    .local v1, completeItemsOnScreen:I
    if-nez v1, :cond_2

    .line 418
    const/4 v1, 0x1

    .line 420
    :cond_2
    if-eqz p1, :cond_3

    iget v7, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mItemCount:I

    sub-int v4, v7, v1

    .line 422
    .local v4, extremeItemPosition:I
    :goto_1
    iget v7, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {p0, v7}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 424
    .local v2, extremeChild:Landroid/view/View;
    if-nez v2, :cond_4

    move v6, p2

    .line 425
    goto :goto_0

    .end local v2           #extremeChild:Landroid/view/View;
    .end local v4           #extremeItemPosition:I
    :cond_3
    move v4, v6

    .line 420
    goto :goto_1

    .line 428
    .restart local v2       #extremeChild:Landroid/view/View;
    .restart local v4       #extremeItemPosition:I
    :cond_4
    invoke-static {v2}, Lbbc/mobile/news/view/LeftAlignedGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    .line 429
    .local v3, extremeChildCenter:I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v5, v7, 0x2

    .line 431
    .local v5, galleryCenter:I
    if-eqz p1, :cond_6

    .line 432
    if-le v3, v5, :cond_0

    .line 445
    :cond_5
    sub-int v0, v5, v3

    .line 447
    .local v0, centerDifference:I
    if-eqz p1, :cond_7

    .line 448
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    .line 438
    .end local v0           #centerDifference:I
    :cond_6
    if-lt v3, v5, :cond_5

    goto :goto_0

    .line 449
    .restart local v0       #centerDifference:I
    :cond_7
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 4
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v3, 0x0

    .line 620
    sget-object v1, Lbbc/mobile/news/view/LeftAlignedGallery;->TAG:Ljava/lang/String;

    const-string v2, "layout()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-boolean v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDataChanged:Z

    if-eqz v1, :cond_0

    .line 626
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->handleDataChanged()V

    .line 630
    :cond_0
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mItemCount:I

    if-nez v1, :cond_1

    .line 631
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->resetList()V

    .line 681
    :goto_0
    return-void

    .line 636
    :cond_1
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mNextSelectedPosition:I

    if-ltz v1, :cond_2

    .line 637
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setSelectedPositionInt(I)V

    .line 641
    :cond_2
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->recycleAllViews()V

    .line 645
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->detachAllViewsFromParent()V

    .line 651
    iput v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mRightMost:I

    .line 652
    iput v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mLeftMost:I

    .line 660
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    iput v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    .line 661
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v3, v3, v2}, Lbbc/mobile/news/view/LeftAlignedGallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v0

    .line 665
    .local v0, sel:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 667
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->fillToGalleryRight()V

    .line 668
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->fillToGalleryLeft()V

    .line 673
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->invalidate()V

    .line 674
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->checkSelectionChanged()V

    .line 676
    iput-boolean v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDataChanged:Z

    .line 677
    iput-boolean v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mNeedSync:Z

    .line 678
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->setNextSelectedPositionInt(I)V

    .line 680
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->updateSelectedItemMetadata()V

    goto :goto_0
.end method

.method moveNext()Z
    .locals 2

    .prologue
    .line 1294
    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1295
    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->scrollToChild(I)Z

    .line 1296
    const/4 v0, 0x1

    .line 1298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method movePrevious()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1279
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mItemCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    if-lez v1, :cond_0

    .line 1281
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->offsetChildrenLeftAndRight(I)V

    .line 1282
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->fillToGalleryLeft()V

    .line 1283
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->scrollToChild(I)Z

    .line 1287
    const/4 v0, 0x1

    .line 1289
    :cond_0
    return v0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1099
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->onUp()V

    .line 1100
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1066
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFlingRunnable:Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->stop(Z)V

    .line 1069
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    .line 1071
    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 1072
    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchView:Landroid/view/View;

    .line 1073
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1077
    :cond_0
    iput-boolean v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mIsFirstScroll:Z

    .line 1080
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 1014
    iget-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1021
    iget-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSuppressSelectionChanged:Z

    .line 1025
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFlingRunnable:Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1027
    return v2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1393
    invoke-super {p0, p1, p2, p3}, Lbbc/mobile/news/view/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1400
    if-eqz p1, :cond_1

    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1402
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1403
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1405
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2, p3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 1409
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1223
    sparse-switch p1, :sswitch_data_0

    .line 1243
    :goto_0
    invoke-super {p0, p1, p2}, Lbbc/mobile/news/view/AbsSpinner;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 1226
    :sswitch_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->movePrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1227
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1232
    :sswitch_1
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->moveNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1233
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->playSoundEffect(I)V

    goto :goto_1

    .line 1239
    :sswitch_2
    iput-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mReceivedInvokeKeyDown:Z

    goto :goto_0

    .line 1223
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1248
    sparse-switch p1, :sswitch_data_0

    .line 1275
    invoke-super {p0, p1, p2}, Lbbc/mobile/news/view/AbsSpinner;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1252
    :sswitch_0
    iget-boolean v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mReceivedInvokeKeyDown:Z

    if-eqz v1, :cond_0

    .line 1253
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mItemCount:I

    if-lez v1, :cond_0

    .line 1255
    iget-object v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedChild:Landroid/view/View;

    invoke-direct {p0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->dispatchPress(Landroid/view/View;)V

    .line 1256
    new-instance v1, Lbbc/mobile/news/view/LeftAlignedGallery$2;

    invoke-direct {v1, p0}, Lbbc/mobile/news/view/LeftAlignedGallery$2;-><init>(Lbbc/mobile/news/view/LeftAlignedGallery;)V

    .line 1260
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    .line 1256
    invoke-virtual {p0, v1, v2, v3}, Lbbc/mobile/news/view/LeftAlignedGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1262
    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    iget v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    sub-int v0, v1, v2

    .line 1263
    .local v0, selectedIndex:I
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    iget-object v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 1264
    iget v4, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1263
    invoke-virtual {p0, v1, v2, v4, v5}, Lbbc/mobile/news/view/LeftAlignedGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1269
    .end local v0           #selectedIndex:I
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mReceivedInvokeKeyDown:Z

    .line 1271
    const/4 v1, 0x1

    goto :goto_0

    .line 1248
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 352
    invoke-super/range {p0 .. p5}, Lbbc/mobile/news/view/AbsSpinner;->onLayout(ZIIII)V

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mInLayout:Z

    .line 359
    invoke-virtual {p0, v1, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->layout(IZ)V

    .line 360
    iput-boolean v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mInLayout:Z

    .line 361
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    .line 1107
    iget v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1111
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/LeftAlignedGallery;->performHapticFeedback(I)Z

    .line 1112
    iget v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/LeftAlignedGallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1113
    .local v0, id:J
    iget-object v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1035
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1039
    iget-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1040
    iget-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1046
    iget-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSuppressSelectionChanged:Z

    .line 1047
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Lbbc/mobile/news/view/LeftAlignedGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1054
    :cond_1
    :goto_0
    float-to-int v0, p3

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->trackMotionScroll(I)V

    .line 1056
    iput-boolean v4, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mIsFirstScroll:Z

    .line 1057
    return v1

    .line 1050
    :cond_2
    iget-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSuppressSelectionChanged:Z

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1122
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 992
    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 998
    iget-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 999
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    iget-object v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 1000
    iget v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    .line 999
    invoke-virtual {p0, v0, v1, v2, v3}, Lbbc/mobile/news/view/LeftAlignedGallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1003
    :cond_1
    const/4 v0, 0x1

    .line 1006
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 974
    iget-object v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 976
    .local v1, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 977
    .local v0, action:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 979
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->onUp()V

    .line 984
    :cond_0
    :goto_0
    return v1

    .line 980
    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 981
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFlingRunnable:Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;

    #getter for: Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->access$1(Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->scrollIntoSlots()V

    .line 1092
    :cond_0
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->dispatchUnpress()V

    .line 1093
    return-void
.end method

.method public scrollToChild(I)Z
    .locals 4
    .parameter "childPosition"

    .prologue
    .line 1304
    invoke-virtual {p0, p1}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1315
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getCenterOfView(Landroid/view/View;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1318
    .local v1, distance:I
    iget-object v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFlingRunnable:Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;

    invoke-virtual {v2, v1}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->startUsingDistance(I)V

    .line 1319
    const/4 v2, 0x1

    .line 1322
    .end local v1           #distance:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 558
    invoke-super {p0}, Lbbc/mobile/news/view/AbsSpinner;->selectionChanged()V

    .line 560
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 275
    iput p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mAnimationDuration:I

    .line 276
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 249
    iput-boolean p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldCallbackDuringFling:Z

    .line 250
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 262
    iput-boolean p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 263
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1366
    iget v0, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1367
    iput p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mGravity:I

    .line 1368
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->requestLayout()V

    .line 1370
    :cond_0
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1327
    invoke-super {p0, p1}, Lbbc/mobile/news/view/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1330
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->updateSelectedItemMetadata()V

    .line 1331
    return-void
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 286
    iput p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSpacing:I

    .line 287
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 297
    iput p1, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mUnselectedAlpha:F

    .line 298
    return-void
.end method

.method public showContextMenu()Z
    .locals 6

    .prologue
    .line 1182
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1183
    iget v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    iget v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1184
    .local v0, index:I
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1185
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedPosition:I

    iget-wide v4, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v4, v5}, Lbbc/mobile/news/view/LeftAlignedGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1188
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1170
    invoke-virtual {p0, p1}, Lbbc/mobile/news/view/LeftAlignedGallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1171
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1172
    const/4 v3, 0x0

    .line 1176
    :goto_0
    return v3

    .line 1175
    :cond_0
    iget-object v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1176
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "deltaX"

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 405
    :goto_0
    return-void

    .line 380
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 382
    .local v1, toLeft:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lbbc/mobile/news/view/LeftAlignedGallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 384
    .local v0, limitedDeltaX:I
    if-eq v0, p1, :cond_1

    .line 386
    iget-object v3, p0, Lbbc/mobile/news/view/LeftAlignedGallery;->mFlingRunnable:Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;

    #calls: Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;->access$0(Lbbc/mobile/news/view/LeftAlignedGallery$FlingRunnable;Z)V

    .line 387
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->onFinishedMovement()V

    .line 390
    :cond_1
    invoke-direct {p0, v0}, Lbbc/mobile/news/view/LeftAlignedGallery;->offsetChildrenLeftAndRight(I)V

    .line 392
    invoke-direct {p0, v1}, Lbbc/mobile/news/view/LeftAlignedGallery;->detachOffScreenChildren(Z)V

    .line 394
    if-eqz v1, :cond_3

    .line 396
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->fillToGalleryRight()V

    .line 402
    :goto_2
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->setSelectionToCenterChild()V

    .line 404
    invoke-virtual {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDeltaX:I
    .end local v1           #toLeft:Z
    :cond_2
    move v1, v2

    .line 380
    goto :goto_1

    .line 399
    .restart local v0       #limitedDeltaX:I
    .restart local v1       #toLeft:Z
    :cond_3
    invoke-direct {p0}, Lbbc/mobile/news/view/LeftAlignedGallery;->fillToGalleryLeft()V

    goto :goto_2
.end method

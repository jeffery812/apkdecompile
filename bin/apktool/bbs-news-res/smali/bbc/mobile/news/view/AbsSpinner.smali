.class public abstract Lbbc/mobile/news/view/AbsSpinner;
.super Lbbc/mobile/news/view/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/view/AbsSpinner$RecycleBin;,
        Lbbc/mobile/news/view/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbbc/mobile/news/view/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mBlockLayoutRequests:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Lbbc/mobile/news/view/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/AdapterView;-><init>(Landroid/content/Context;)V

    .line 44
    iput v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSelectionLeftPadding:I

    .line 45
    iput v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSelectionTopPadding:I

    .line 46
    iput v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSelectionRightPadding:I

    .line 47
    iput v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSelectionBottomPadding:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;-><init>(Lbbc/mobile/news/view/AbsSpinner;)V

    iput-object v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mRecycler:Lbbc/mobile/news/view/AbsSpinner$RecycleBin;

    .line 58
    invoke-direct {p0}, Lbbc/mobile/news/view/AbsSpinner;->initAbsSpinner()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lbbc/mobile/news/view/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSelectionLeftPadding:I

    .line 45
    iput v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSelectionTopPadding:I

    .line 46
    iput v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSelectionRightPadding:I

    .line 47
    iput v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSelectionBottomPadding:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;-><init>(Lbbc/mobile/news/view/AbsSpinner;)V

    iput-object v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mRecycler:Lbbc/mobile/news/view/AbsSpinner$RecycleBin;

    .line 67
    invoke-direct {p0}, Lbbc/mobile/news/view/AbsSpinner;->initAbsSpinner()V

    .line 82
    return-void
.end method

.method static synthetic access$2(Lbbc/mobile/news/view/AbsSpinner;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lbbc/mobile/news/view/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AbsSpinner;->setFocusable(Z)V

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AbsSpinner;->setWillNotDraw(Z)V

    .line 90
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 239
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 240
    const/4 v1, -0x1

    .line 241
    const/4 v2, -0x2

    .line 239
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 298
    iget v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 299
    iget v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 301
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x0

    .line 164
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 168
    .local v6, widthMode:I
    iget-object v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iput v10, v8, Landroid/graphics/Rect;->left:I

    .line 169
    iget-object v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iput v10, v8, Landroid/graphics/Rect;->top:I

    .line 170
    iget-object v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 171
    iget-object v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 173
    iget-boolean v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 174
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->handleDataChanged()V

    .line 177
    :cond_0
    const/4 v2, 0x0

    .line 178
    .local v2, preferredHeight:I
    const/4 v3, 0x0

    .line 179
    .local v3, preferredWidth:I
    const/4 v1, 0x1

    .line 181
    .local v1, needsMeasuring:Z
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 182
    .local v4, selectedPosition:I
    if-ltz v4, :cond_4

    iget-object v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 184
    iget-object v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mRecycler:Lbbc/mobile/news/view/AbsSpinner$RecycleBin;

    invoke-virtual {v8}, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->get()Landroid/view/View;

    move-result-object v5

    .line 185
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_1

    .line 187
    iget-object v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 190
    :cond_1
    if-eqz v5, :cond_2

    .line 192
    iget-object v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mRecycler:Lbbc/mobile/news/view/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->add(ILandroid/view/View;)V

    .line 195
    :cond_2
    if-eqz v5, :cond_4

    .line 196
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 197
    const/4 v8, 0x1

    iput-boolean v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mBlockLayoutRequests:Z

    .line 198
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iput-boolean v10, p0, Lbbc/mobile/news/view/AbsSpinner;->mBlockLayoutRequests:Z

    .line 201
    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lbbc/mobile/news/view/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 203
    invoke-virtual {p0, v5}, Lbbc/mobile/news/view/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 204
    invoke-virtual {p0, v5}, Lbbc/mobile/news/view/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 206
    const/4 v1, 0x0

    .line 210
    .end local v5           #view:Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    .line 212
    iget-object v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 213
    if-nez v6, :cond_5

    .line 214
    iget-object v8, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lbbc/mobile/news/view/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 218
    :cond_5
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 219
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 221
    invoke-static {v2, p2}, Lbbc/mobile/news/view/AbsSpinner;->resolveSize(II)I

    move-result v0

    .line 222
    .local v0, heightSize:I
    invoke-static {v3, p1}, Lbbc/mobile/news/view/AbsSpinner;->resolveSize(II)I

    move-result v7

    .line 224
    .local v7, widthSize:I
    invoke-virtual {p0, v7, v0}, Lbbc/mobile/news/view/AbsSpinner;->setMeasuredDimension(II)V

    .line 225
    iput p2, p0, Lbbc/mobile/news/view/AbsSpinner;->mHeightMeasureSpec:I

    .line 226
    iput p1, p0, Lbbc/mobile/news/view/AbsSpinner;->mWidthMeasureSpec:I

    .line 227
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    .line 418
    move-object v0, p1

    check-cast v0, Lbbc/mobile/news/view/AbsSpinner$SavedState;

    .line 420
    .local v0, ss:Lbbc/mobile/news/view/AbsSpinner$SavedState;
    invoke-virtual {v0}, Lbbc/mobile/news/view/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lbbc/mobile/news/view/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 422
    iget-wide v2, v0, Lbbc/mobile/news/view/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 423
    iput-boolean v6, p0, Lbbc/mobile/news/view/AbsSpinner;->mDataChanged:Z

    .line 424
    iput-boolean v6, p0, Lbbc/mobile/news/view/AbsSpinner;->mNeedSync:Z

    .line 425
    iget-wide v2, v0, Lbbc/mobile/news/view/AbsSpinner$SavedState;->selectedId:J

    iput-wide v2, p0, Lbbc/mobile/news/view/AbsSpinner;->mSyncRowId:J

    .line 426
    iget v1, v0, Lbbc/mobile/news/view/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mSyncPosition:I

    .line 427
    const/4 v1, 0x0

    iput v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mSyncMode:I

    .line 428
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->requestLayout()V

    .line 430
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 405
    invoke-super {p0}, Lbbc/mobile/news/view/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 406
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lbbc/mobile/news/view/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lbbc/mobile/news/view/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 407
    .local v0, ss:Lbbc/mobile/news/view/AbsSpinner$SavedState;
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lbbc/mobile/news/view/AbsSpinner$SavedState;->selectedId:J

    .line 408
    iget-wide v2, v0, Lbbc/mobile/news/view/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 409
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lbbc/mobile/news/view/AbsSpinner$SavedState;->position:I

    .line 413
    :goto_0
    return-object v0

    .line 411
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lbbc/mobile/news/view/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 337
    iget-object v2, p0, Lbbc/mobile/news/view/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 338
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 339
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lbbc/mobile/news/view/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 340
    iget-object v2, p0, Lbbc/mobile/news/view/AbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 343
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->getChildCount()I

    move-result v1

    .line 344
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-gez v3, :cond_1

    .line 353
    const/4 v4, -0x1

    :goto_1
    return v4

    .line 345
    :cond_1
    invoke-virtual {p0, v3}, Lbbc/mobile/news/view/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 346
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 347
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 348
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 349
    iget v4, p0, Lbbc/mobile/news/view/AbsSpinner;->mFirstPosition:I

    add-int/2addr v4, v3

    goto :goto_1

    .line 344
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method recycleAllViews()V
    .locals 8

    .prologue
    .line 246
    const-string v6, "Gallery"

    const-string v7, "recycleAllViews()"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->getChildCount()I

    move-result v0

    .line 248
    .local v0, childCount:I
    iget-object v4, p0, Lbbc/mobile/news/view/AbsSpinner;->mRecycler:Lbbc/mobile/news/view/AbsSpinner$RecycleBin;

    .line 249
    .local v4, recycleBin:Lbbc/mobile/news/view/AbsSpinner$RecycleBin;
    iget v3, p0, Lbbc/mobile/news/view/AbsSpinner;->mFirstPosition:I

    .line 252
    .local v3, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 257
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 254
    .local v5, v:Landroid/view/View;
    add-int v2, v3, v1

    .line 255
    .local v2, index:I
    invoke-virtual {v4, v2, v5}, Lbbc/mobile/news/view/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 314
    invoke-super {p0}, Lbbc/mobile/news/view/AdapterView;->requestLayout()V

    .line 316
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 142
    iput-boolean v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mDataChanged:Z

    .line 143
    iput-boolean v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mNeedSync:Z

    .line 145
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->removeAllViewsInLayout()V

    .line 146
    iput v2, p0, Lbbc/mobile/news/view/AbsSpinner;->mOldSelectedPosition:I

    .line 147
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mOldSelectedRowId:J

    .line 149
    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/AbsSpinner;->setSelectedPositionInt(I)V

    .line 150
    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 151
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->invalidate()V

    .line 152
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lbbc/mobile/news/view/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    const/4 v0, -0x1

    .line 100
    iget-object v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lbbc/mobile/news/view/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 102
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->resetList()V

    .line 105
    :cond_0
    iput-object p1, p0, Lbbc/mobile/news/view/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 107
    iput v0, p0, Lbbc/mobile/news/view/AbsSpinner;->mOldSelectedPosition:I

    .line 108
    const-wide/high16 v2, -0x8000

    iput-wide v2, p0, Lbbc/mobile/news/view/AbsSpinner;->mOldSelectedRowId:J

    .line 110
    iget-object v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_3

    .line 111
    iget v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mItemCount:I

    iput v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mOldItemCount:I

    .line 112
    iget-object v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mItemCount:I

    .line 113
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->checkFocus()V

    .line 115
    new-instance v1, Lbbc/mobile/news/view/AdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lbbc/mobile/news/view/AdapterView$AdapterDataSetObserver;-><init>(Lbbc/mobile/news/view/AdapterView;)V

    iput-object v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 116
    iget-object v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lbbc/mobile/news/view/AbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 118
    iget v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mItemCount:I

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 120
    .local v0, position:I
    :cond_1
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AbsSpinner;->setSelectedPositionInt(I)V

    .line 121
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 123
    iget v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mItemCount:I

    if-nez v1, :cond_2

    .line 125
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->checkSelectionChanged()V

    .line 135
    .end local v0           #position:I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->requestLayout()V

    .line 136
    return-void

    .line 129
    :cond_3
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->checkFocus()V

    .line 130
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->resetList()V

    .line 132
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->checkSelectionChanged()V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lbbc/mobile/news/view/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 272
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->requestLayout()V

    .line 273
    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->invalidate()V

    .line 274
    return-void
.end method

.method public setSelection(IZ)V
    .locals 3
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 264
    if-eqz p2, :cond_0

    iget v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mFirstPosition:I

    if-gt v1, p1, :cond_0

    .line 265
    iget v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mFirstPosition:I

    invoke-virtual {p0}, Lbbc/mobile/news/view/AbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    .line 264
    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 266
    .local v0, shouldAnimate:Z
    :goto_0
    invoke-virtual {p0, p1, v0}, Lbbc/mobile/news/view/AbsSpinner;->setSelectionInt(IZ)V

    .line 267
    return-void

    .line 264
    .end local v0           #shouldAnimate:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setSelectionInt(IZ)V
    .locals 2
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 285
    iget v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_0

    .line 286
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mBlockLayoutRequests:Z

    .line 287
    iget v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 288
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lbbc/mobile/news/view/AbsSpinner;->setNextSelectedPositionInt(I)V

    .line 289
    invoke-virtual {p0, v0, p2}, Lbbc/mobile/news/view/AbsSpinner;->layout(IZ)V

    .line 290
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbbc/mobile/news/view/AbsSpinner;->mBlockLayoutRequests:Z

    .line 292
    .end local v0           #delta:I
    :cond_0
    return-void
.end method

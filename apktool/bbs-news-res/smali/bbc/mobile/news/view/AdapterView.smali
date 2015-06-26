.class public abstract Lbbc/mobile/news/view/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/view/AdapterView$AdapterContextMenuInfo;,
        Lbbc/mobile/news/view/AdapterView$AdapterDataSetObserver;,
        Lbbc/mobile/news/view/AdapterView$OnItemClickListener;,
        Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;,
        Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;,
        Lbbc/mobile/news/view/AdapterView$SelectionNotifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I

.field mInLayout:Z

.field mItemCount:I

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I

.field mSelectedRowId:J

.field private mSelectionNotifier:Lbbc/mobile/news/view/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbbc/mobile/news/view/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 63
    iput v0, p0, Lbbc/mobile/news/view/AdapterView;->mFirstPosition:I

    .line 79
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mSyncRowId:J

    .line 89
    iput-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mNeedSync:Z

    .line 121
    iput-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mInLayout:Z

    .line 148
    iput v1, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedPosition:I

    .line 153
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedRowId:J

    .line 159
    iput v1, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedPosition:I

    .line 164
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedRowId:J

    .line 196
    iput v1, p0, Lbbc/mobile/news/view/AdapterView;->mOldSelectedPosition:I

    .line 201
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mOldSelectedRowId:J

    .line 220
    iput-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mBlockLayoutRequests:Z

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v0, p0, Lbbc/mobile/news/view/AdapterView;->mFirstPosition:I

    .line 79
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mSyncRowId:J

    .line 89
    iput-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mNeedSync:Z

    .line 121
    iput-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mInLayout:Z

    .line 148
    iput v1, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedPosition:I

    .line 153
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedRowId:J

    .line 159
    iput v1, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedPosition:I

    .line 164
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedRowId:J

    .line 196
    iput v1, p0, Lbbc/mobile/news/view/AdapterView;->mOldSelectedPosition:I

    .line 201
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mOldSelectedRowId:J

    .line 220
    iput-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mBlockLayoutRequests:Z

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000

    const/4 v0, 0x0

    .line 231
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput v0, p0, Lbbc/mobile/news/view/AdapterView;->mFirstPosition:I

    .line 79
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mSyncRowId:J

    .line 89
    iput-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mNeedSync:Z

    .line 121
    iput-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mInLayout:Z

    .line 148
    iput v1, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedPosition:I

    .line 153
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedRowId:J

    .line 159
    iput v1, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedPosition:I

    .line 164
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedRowId:J

    .line 196
    iput v1, p0, Lbbc/mobile/news/view/AdapterView;->mOldSelectedPosition:I

    .line 201
    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mOldSelectedRowId:J

    .line 220
    iput-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mBlockLayoutRequests:Z

    .line 232
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/view/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lbbc/mobile/news/view/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$1(Lbbc/mobile/news/view/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lbbc/mobile/news/view/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 875
    invoke-direct {p0}, Lbbc/mobile/news/view/AdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 876
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemSelectedListener:Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 879
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 880
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 881
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 882
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemSelectedListener:Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;

    .line 883
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    .line 882
    invoke-interface/range {v0 .. v5}, Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;->onItemSelected(Lbbc/mobile/news/view/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 885
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemSelectedListener:Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;->onNothingSelected(Lbbc/mobile/news/view/AdapterView;)V

    goto :goto_0
.end method

.method private updateEmptyStatus(Z)V
    .locals 3
    .parameter "empty"

    .prologue
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 710
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    const/4 p1, 0x0

    .line 714
    :cond_0
    if-eqz p1, :cond_2

    .line 716
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/AdapterView;->setVisibility(I)V

    .line 741
    :goto_0
    return-void

    .line 724
    :cond_1
    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 738
    :cond_2
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 739
    :cond_3
    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/AdapterView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 438
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 451
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 479
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 464
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 920
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lbbc/mobile/news/view/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkFocus()V
    .locals 6

    .prologue
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 691
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 692
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v5

    .line 693
    .local v1, empty:Z
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->isInFilterMode()Z

    move-result v3

    if-nez v3, :cond_2

    move v2, v5

    .line 697
    .local v2, focusable:Z
    :goto_1
    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lbbc/mobile/news/view/AdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 698
    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lbbc/mobile/news/view/AdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_3
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 699
    iget-object v3, p0, Lbbc/mobile/news/view/AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 700
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_4
    invoke-direct {p0, v5}, Lbbc/mobile/news/view/AdapterView;->updateEmptyStatus(Z)V

    .line 702
    :cond_0
    return-void

    .end local v1           #empty:Z
    .end local v2           #focusable:Z
    :cond_1
    move v1, v4

    .line 692
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_2
    move v2, v4

    .line 693
    goto :goto_1

    .restart local v2       #focusable:Z
    :cond_3
    move v3, v5

    .line 697
    goto :goto_2

    :cond_4
    move v3, v5

    .line 698
    goto :goto_3

    :cond_5
    move v5, v4

    .line 700
    goto :goto_4
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 987
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget v0, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lbbc/mobile/news/view/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 988
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->selectionChanged()V

    .line 989
    iget v0, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lbbc/mobile/news/view/AdapterView;->mOldSelectedPosition:I

    .line 990
    iget-wide v0, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lbbc/mobile/news/view/AdapterView;->mOldSelectedRowId:J

    .line 992
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 891
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 896
    .local v0, populated:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 897
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 902
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 903
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 904
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 907
    :cond_1
    if-nez v0, :cond_3

    .line 908
    if-eqz v1, :cond_2

    .line 909
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 911
    :cond_2
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 912
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 915
    :cond_3
    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 778
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lbbc/mobile/news/view/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 779
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 770
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lbbc/mobile/news/view/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 771
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .line 1003
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lbbc/mobile/news/view/AdapterView;->mItemCount:I

    .line 1005
    .local v3, count:I
    if-nez v3, :cond_1

    .line 1006
    const/4 v13, -0x1

    .line 1078
    :cond_0
    :goto_0
    return v13

    .line 1009
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lbbc/mobile/news/view/AdapterView;->mSyncRowId:J

    .line 1010
    .local v10, idToMatch:J
    move-object/from16 v0, p0

    iget v13, v0, Lbbc/mobile/news/view/AdapterView;->mSyncPosition:I

    .line 1013
    .local v13, seed:I
    const-wide/high16 v16, -0x8000

    cmp-long v16, v10, v16

    if-nez v16, :cond_2

    .line 1014
    const/4 v13, -0x1

    goto :goto_0

    .line 1018
    :cond_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1019
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1021
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1026
    .local v4, endTime:J
    move v6, v13

    .line 1029
    .local v6, first:I
    move v9, v13

    .line 1032
    .local v9, last:I
    const/4 v12, 0x0

    .line 1042
    .local v12, next:Z
    invoke-virtual/range {p0 .. p0}, Lbbc/mobile/news/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1043
    .local v2, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v2, :cond_8

    .line 1044
    const/4 v13, -0x1

    goto :goto_0

    .line 1048
    :cond_3
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .line 1049
    .local v14, rowId:J
    cmp-long v16, v14, v10

    if-eqz v16, :cond_0

    .line 1054
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_4

    const/4 v8, 0x1

    .line 1055
    .local v8, hitLast:Z
    :goto_1
    if-nez v6, :cond_5

    const/4 v7, 0x1

    .line 1057
    .local v7, hitFirst:Z
    :goto_2
    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    .line 1078
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v14           #rowId:J
    :goto_3
    const/4 v13, -0x1

    goto :goto_0

    .line 1054
    .restart local v14       #rowId:J
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 1055
    .restart local v8       #hitLast:Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 1062
    .restart local v7       #hitFirst:Z
    :cond_6
    if-nez v7, :cond_7

    if-eqz v12, :cond_9

    if-nez v8, :cond_9

    .line 1064
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 1065
    move v13, v9

    .line 1067
    const/4 v12, 0x0

    .line 1047
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v14           #rowId:J
    :cond_8
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-lez v16, :cond_3

    goto :goto_3

    .line 1068
    .restart local v7       #hitFirst:Z
    .restart local v8       #hitLast:Z
    .restart local v14       #rowId:J
    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_8

    if-nez v7, :cond_8

    .line 1070
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 1071
    move v13, v6

    .line 1073
    const/4 v12, 0x1

    goto :goto_4
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 568
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget v0, p0, Lbbc/mobile/news/view/AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 651
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 611
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget v0, p0, Lbbc/mobile/news/view/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 750
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 751
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4
    .parameter "position"

    .prologue
    .line 755
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 756
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000

    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 621
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget v0, p0, Lbbc/mobile/news/view/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lbbc/mobile/news/view/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 272
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemClickListener:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 335
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemLongClickListener:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 379
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemSelectedListener:Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/4 v5, -0x1

    .line 581
    move-object v3, p1

    .line 584
    .local v3, listItem:Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 593
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getChildCount()I

    move-result v0

    .line 594
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v0, :cond_1

    .line 601
    .end local v0           #childCount:I
    .end local v2           #i:I
    .end local v4           #v:Landroid/view/View;
    :goto_2
    return v5

    .line 585
    .restart local v4       #v:Landroid/view/View;
    :cond_0
    move-object v3, v4

    goto :goto_0

    .line 587
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 589
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_2

    .line 595
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v0       #childCount:I
    .restart local v2       #i:I
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 596
    iget v5, p0, Lbbc/mobile/news/view/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_2

    .line 594
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 552
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 553
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 554
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 555
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 557
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 538
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget-wide v0, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 529
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget v0, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 924
    iget v0, p0, Lbbc/mobile/news/view/AdapterView;->mItemCount:I

    .line 925
    .local v0, count:I
    const/4 v1, 0x0

    .line 927
    .local v1, found:Z
    if-lez v0, :cond_4

    .line 932
    iget-boolean v4, p0, Lbbc/mobile/news/view/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 935
    iput-boolean v5, p0, Lbbc/mobile/news/view/AdapterView;->mNeedSync:Z

    .line 939
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->findSyncPosition()I

    move-result v2

    .line 940
    .local v2, newPos:I
    if-ltz v2, :cond_0

    .line 942
    invoke-virtual {p0, v2, v7}, Lbbc/mobile/news/view/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 943
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_0

    .line 945
    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/AdapterView;->setNextSelectedPositionInt(I)V

    .line 946
    const/4 v1, 0x1

    .line 950
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_0
    if-nez v1, :cond_4

    .line 952
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 955
    .restart local v2       #newPos:I
    if-lt v2, v0, :cond_1

    .line 956
    add-int/lit8 v2, v0, -0x1

    .line 958
    :cond_1
    if-gez v2, :cond_2

    .line 959
    const/4 v2, 0x0

    .line 963
    :cond_2
    invoke-virtual {p0, v2, v7}, Lbbc/mobile/news/view/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 964
    .restart local v3       #selectablePos:I
    if-gez v3, :cond_3

    .line 966
    invoke-virtual {p0, v2, v5}, Lbbc/mobile/news/view/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 968
    :cond_3
    if-ltz v3, :cond_4

    .line 969
    invoke-virtual {p0, v3}, Lbbc/mobile/news/view/AdapterView;->setNextSelectedPositionInt(I)V

    .line 970
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->checkSelectionChanged()V

    .line 971
    const/4 v1, 0x1

    .line 975
    .end local v2           #newPos:I
    .end local v3           #selectablePos:I
    :cond_4
    if-nez v1, :cond_5

    .line 977
    iput v6, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedPosition:I

    .line 978
    iput-wide v8, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedRowId:J

    .line 979
    iput v6, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedPosition:I

    .line 980
    iput-wide v8, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedRowId:J

    .line 981
    iput-boolean v5, p0, Lbbc/mobile/news/view/AdapterView;->mNeedSync:Z

    .line 982
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->checkSelectionChanged()V

    .line 984
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 661
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1090
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 834
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 835
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mSelectionNotifier:Lbbc/mobile/news/view/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 836
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 519
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lbbc/mobile/news/view/AdapterView;->mLayoutHeight:I

    .line 520
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemClickListener:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AdapterView;->playSoundEffect(I)V

    .line 287
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemClickListener:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lbbc/mobile/news/view/AdapterView$OnItemClickListener;->onItemClick(Lbbc/mobile/news/view/AdapterView;Landroid/view/View;IJ)V

    .line 288
    const/4 v0, 0x1

    .line 291
    :cond_0
    return v0
.end method

.method rememberSyncState()V
    .locals 6

    .prologue
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1123
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1124
    iput-boolean v5, p0, Lbbc/mobile/news/view/AdapterView;->mNeedSync:Z

    .line 1125
    iget v2, p0, Lbbc/mobile/news/view/AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mSyncHeight:J

    .line 1126
    iget v2, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_2

    .line 1128
    iget v2, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedPosition:I

    iget v3, p0, Lbbc/mobile/news/view/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1129
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mSyncRowId:J

    .line 1130
    iget v2, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lbbc/mobile/news/view/AdapterView;->mSyncPosition:I

    .line 1131
    if-eqz v1, :cond_0

    .line 1132
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lbbc/mobile/news/view/AdapterView;->mSpecificTop:I

    .line 1134
    :cond_0
    iput v4, p0, Lbbc/mobile/news/view/AdapterView;->mSyncMode:I

    .line 1151
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1137
    :cond_2
    invoke-virtual {p0, v4}, Lbbc/mobile/news/view/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1138
    .restart local v1       #v:Landroid/view/View;
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1139
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lbbc/mobile/news/view/AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_4

    iget v2, p0, Lbbc/mobile/news/view/AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1140
    iget v2, p0, Lbbc/mobile/news/view/AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mSyncRowId:J

    .line 1144
    :goto_1
    iget v2, p0, Lbbc/mobile/news/view/AdapterView;->mFirstPosition:I

    iput v2, p0, Lbbc/mobile/news/view/AdapterView;->mSyncPosition:I

    .line 1145
    if-eqz v1, :cond_3

    .line 1146
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lbbc/mobile/news/view/AdapterView;->mSpecificTop:I

    .line 1148
    :cond_3
    iput v5, p0, Lbbc/mobile/news/view/AdapterView;->mSyncMode:I

    goto :goto_0

    .line 1142
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lbbc/mobile/news/view/AdapterView;->mSyncRowId:J

    goto :goto_1
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 514
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 492
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 504
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 854
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemSelectedListener:Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 855
    iget-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_4

    .line 860
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mSelectionNotifier:Lbbc/mobile/news/view/AdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 861
    new-instance v0, Lbbc/mobile/news/view/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbbc/mobile/news/view/AdapterView$SelectionNotifier;-><init>(Lbbc/mobile/news/view/AdapterView;Lbbc/mobile/news/view/AdapterView$SelectionNotifier;)V

    iput-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mSelectionNotifier:Lbbc/mobile/news/view/AdapterView$SelectionNotifier;

    .line 863
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/AdapterView;->mSelectionNotifier:Lbbc/mobile/news/view/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 870
    :cond_2
    :goto_0
    iget v0, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 871
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AdapterView;->sendAccessibilityEvent(I)V

    .line 873
    :cond_3
    return-void

    .line 865
    :cond_4
    invoke-direct {p0}, Lbbc/mobile/news/view/AdapterView;->fireOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .parameter "emptyView"

    .prologue
    .line 636
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iput-object p1, p0, Lbbc/mobile/news/view/AdapterView;->mEmptyView:Landroid/view/View;

    .line 638
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 639
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 640
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Lbbc/mobile/news/view/AdapterView;->updateEmptyStatus(Z)V

    .line 641
    return-void

    .line 639
    .end local v1           #empty:Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 666
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 667
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 669
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lbbc/mobile/news/view/AdapterView;->mDesiredFocusableState:Z

    .line 670
    if-nez p1, :cond_0

    .line 671
    iput-boolean v2, p0, Lbbc/mobile/news/view/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 674
    :cond_0
    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 675
    return-void

    .end local v1           #empty:Z
    :cond_2
    move v1, v3

    .line 667
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_3
    move v3, v2

    .line 674
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .parameter "focusable"

    .prologue
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 679
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 680
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 682
    .local v1, empty:Z
    :goto_0
    iput-boolean p1, p0, Lbbc/mobile/news/view/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 683
    if-eqz p1, :cond_0

    .line 684
    iput-boolean v3, p0, Lbbc/mobile/news/view/AdapterView;->mDesiredFocusableState:Z

    .line 687
    :cond_0
    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 688
    return-void

    .end local v1           #empty:Z
    :cond_2
    move v1, v3

    .line 680
    goto :goto_0

    .restart local v1       #empty:Z
    :cond_3
    move v3, v2

    .line 687
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1108
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iput p1, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedPosition:I

    .line 1109
    invoke-virtual {p0, p1}, Lbbc/mobile/news/view/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedRowId:J

    .line 1111
    iget-boolean v0, p0, Lbbc/mobile/news/view/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lbbc/mobile/news/view/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1112
    iput p1, p0, Lbbc/mobile/news/view/AdapterView;->mSyncPosition:I

    .line 1113
    iget-wide v0, p0, Lbbc/mobile/news/view/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lbbc/mobile/news/view/AdapterView;->mSyncRowId:J

    .line 1115
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 761
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lbbc/mobile/news/view/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    .local p1, listener:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;,"Lbbc/mobile/news/view/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemClickListener:Lbbc/mobile/news/view/AdapterView$OnItemClickListener;

    .line 265
    return-void
.end method

.method public setOnItemLongClickListener(Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 324
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    .local p1, listener:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;,"Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;"
    invoke-virtual {p0}, Lbbc/mobile/news/view/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AdapterView;->setLongClickable(Z)V

    .line 327
    :cond_0
    iput-object p1, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemLongClickListener:Lbbc/mobile/news/view/AdapterView$OnItemLongClickListener;

    .line 328
    return-void
.end method

.method public setOnItemSelectedListener(Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    .local p1, listener:Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;,"Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;"
    iput-object p1, p0, Lbbc/mobile/news/view/AdapterView;->mOnItemSelectedListener:Lbbc/mobile/news/view/AdapterView$OnItemSelectedListener;

    .line 376
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1098
    .local p0, this:Lbbc/mobile/news/view/AdapterView;,"Lbbc/mobile/news/view/AdapterView<TT;>;"
    iput p1, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedPosition:I

    .line 1099
    invoke-virtual {p0, p1}, Lbbc/mobile/news/view/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lbbc/mobile/news/view/AdapterView;->mSelectedRowId:J

    .line 1100
    return-void
.end method

.method public abstract setSelection(I)V
.end method

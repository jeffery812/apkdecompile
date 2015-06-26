.class Lbbc/mobile/news/view/SortableListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SortableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/view/SortableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/view/SortableListView;


# direct methods
.method constructor <init>(Lbbc/mobile/news/view/SortableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/view/SortableListView$1;->this$0:Lbbc/mobile/news/view/SortableListView;

    .line 140
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x1

    .line 145
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView$1;->this$0:Lbbc/mobile/news/view/SortableListView;

    #getter for: Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;
    invoke-static {v2}, Lbbc/mobile/news/view/SortableListView;->access$0(Lbbc/mobile/news/view/SortableListView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 146
    const/high16 v2, 0x447a

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    .line 147
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView$1;->this$0:Lbbc/mobile/news/view/SortableListView;

    #getter for: Lbbc/mobile/news/view/SortableListView;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lbbc/mobile/news/view/SortableListView;->access$1(Lbbc/mobile/news/view/SortableListView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 148
    .local v0, r:Landroid/graphics/Rect;
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView$1;->this$0:Lbbc/mobile/news/view/SortableListView;

    #getter for: Lbbc/mobile/news/view/SortableListView;->mDragView:Landroid/widget/ImageView;
    invoke-static {v2}, Lbbc/mobile/news/view/SortableListView;->access$0(Lbbc/mobile/news/view/SortableListView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 149
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 151
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView$1;->this$0:Lbbc/mobile/news/view/SortableListView;

    #calls: Lbbc/mobile/news/view/SortableListView;->stopDragging()V
    invoke-static {v2}, Lbbc/mobile/news/view/SortableListView;->access$2(Lbbc/mobile/news/view/SortableListView;)V

    .line 152
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView$1;->this$0:Lbbc/mobile/news/view/SortableListView;

    #getter for: Lbbc/mobile/news/view/SortableListView;->mRemoveListener:Lbbc/mobile/news/view/SortableListView$RemoveListener;
    invoke-static {v2}, Lbbc/mobile/news/view/SortableListView;->access$3(Lbbc/mobile/news/view/SortableListView;)Lbbc/mobile/news/view/SortableListView$RemoveListener;

    move-result-object v2

    iget-object v3, p0, Lbbc/mobile/news/view/SortableListView$1;->this$0:Lbbc/mobile/news/view/SortableListView;

    #getter for: Lbbc/mobile/news/view/SortableListView;->mSrcDragPos:I
    invoke-static {v3}, Lbbc/mobile/news/view/SortableListView;->access$4(Lbbc/mobile/news/view/SortableListView;)I

    move-result v3

    invoke-interface {v2, v3}, Lbbc/mobile/news/view/SortableListView$RemoveListener;->remove(I)V

    .line 153
    iget-object v2, p0, Lbbc/mobile/news/view/SortableListView$1;->this$0:Lbbc/mobile/news/view/SortableListView;

    #calls: Lbbc/mobile/news/view/SortableListView;->unExpandViews(Z)V
    invoke-static {v2, v1}, Lbbc/mobile/news/view/SortableListView;->access$5(Lbbc/mobile/news/view/SortableListView;Z)V

    .line 159
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

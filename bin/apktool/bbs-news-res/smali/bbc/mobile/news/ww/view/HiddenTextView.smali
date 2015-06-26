.class public Lbbc/mobile/news/ww/view/HiddenTextView;
.super Landroid/widget/TextView;
.source "HiddenTextView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private madeVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lbbc/mobile/news/ww/view/HiddenTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/ww/view/HiddenTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lbbc/mobile/news/ww/view/HiddenTextView;->gestureDetector:Landroid/view/GestureDetector;

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/ww/view/HiddenTextView;->setWillNotDraw(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 31
    iget-boolean v0, p0, Lbbc/mobile/news/ww/view/HiddenTextView;->madeVisible:Z

    if-eqz v0, :cond_0

    .line 32
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v0, 0x1

    .line 55
    const/high16 v1, 0x4396

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    .line 56
    iput-boolean v0, p0, Lbbc/mobile/news/ww/view/HiddenTextView;->madeVisible:Z

    .line 57
    invoke-virtual {p0}, Lbbc/mobile/news/ww/view/HiddenTextView;->invalidate()V

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 65
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 75
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 39
    iget-object v1, p0, Lbbc/mobile/news/ww/view/HiddenTextView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 40
    .local v0, retGestureValue:Z
    if-eqz v0, :cond_0

    .line 41
    const/4 v1, 0x1

    .line 43
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

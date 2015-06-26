.class public Lbbc/mobile/news/view/ToolbarView;
.super Landroid/widget/RelativeLayout;
.source "ToolbarView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final ANIM_AUTO_HIDE_DELAY:I = 0xbb8

.field private static final ANIM_STATE_DEFAULT:I = 0x1

.field private static final ANIM_STATE_HIDDEN:I = 0x1

.field private static final ANIM_STATE_VISIBLE:I = 0x0

.field private static final ENTER_DOWN_ANIM:I = 0x0

.field private static final ENTER_UP_ANIM:I = 0x1

.field private static final EXIT_DOWN_ANIM:I = 0x2

.field private static final EXIT_UP_ANIM:I = 0x3

.field private static final MSG_AUTO_HIDE_TOOLBAR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ToolbarView"

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mAnimState:I

.field private final mAnnimationDuration:I

.field private mAutoHideEnabled:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lbbc/mobile/news/view/ToolbarView$1;

    invoke-direct {v0}, Lbbc/mobile/news/view/ToolbarView$1;-><init>()V

    sput-object v0, Lbbc/mobile/news/view/ToolbarView;->mHandler:Landroid/os/Handler;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/ToolbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/view/ToolbarView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 36
    const/16 v0, 0xfa

    iput v0, p0, Lbbc/mobile/news/view/ToolbarView;->mAnnimationDuration:I

    .line 37
    iput v1, p0, Lbbc/mobile/news/view/ToolbarView;->mAnimState:I

    .line 38
    iput-boolean v1, p0, Lbbc/mobile/news/view/ToolbarView;->mAutoHideEnabled:Z

    .line 46
    invoke-direct {p0}, Lbbc/mobile/news/view/ToolbarView;->initView()V

    .line 49
    return-void
.end method

.method private animate(I)V
    .locals 13
    .parameter "direction"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    const/4 v6, 0x0

    .line 122
    .local v6, fromYValue:F
    const/4 v8, 0x0

    .line 123
    .local v8, toYValue:F
    const/4 v11, 0x0

    .line 124
    .local v11, fromAlpha:F
    const/4 v12, 0x0

    .line 126
    .local v12, toAlpha:F
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 139
    .local v0, translateAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 141
    .local v9, alphaAnimation:Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 142
    .local v10, animationSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 143
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v1, p0, Lbbc/mobile/news/view/ToolbarView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 145
    const-wide/16 v2, 0xfa

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 146
    invoke-virtual {v10, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 147
    invoke-virtual {p0, v10}, Lbbc/mobile/news/view/ToolbarView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 148
    return-void

    .line 127
    .end local v0           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v9           #alphaAnimation:Landroid/view/animation/Animation;
    .end local v10           #animationSet:Landroid/view/animation/AnimationSet;
    :pswitch_0
    const/high16 v6, -0x4080

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    goto :goto_0

    .line 128
    :pswitch_1
    const/high16 v6, 0x3f80

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    goto :goto_0

    .line 129
    :pswitch_2
    const/4 v6, 0x0

    const/high16 v8, 0x3f80

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    goto :goto_0

    .line 130
    :pswitch_3
    const/4 v6, 0x0

    const/high16 v8, -0x4080

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lbbc/mobile/news/view/ToolbarView;->setDefaultVisibility()V

    .line 54
    return-void
.end method

.method private setDefaultVisibility()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x4

    .line 60
    .local v0, visibility:I
    iget v1, p0, Lbbc/mobile/news/view/ToolbarView;->mAnimState:I

    packed-switch v1, :pswitch_data_0

    .line 65
    :goto_0
    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/ToolbarView;->setVisibility(I)V

    .line 66
    return-void

    .line 61
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 62
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 154
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 160
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 166
    return-void
.end method

.method public onTap()V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lbbc/mobile/news/view/ToolbarView;->invalidate()V

    .line 113
    iget v0, p0, Lbbc/mobile/news/view/ToolbarView;->mAnimState:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 114
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/ToolbarView;->showToolbar(Z)V

    goto :goto_0

    .line 115
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/ToolbarView;->showToolbar(Z)V

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 106
    invoke-virtual {p0}, Lbbc/mobile/news/view/ToolbarView;->resetAutoHideTimer()V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public resetAutoHideTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-boolean v0, p0, Lbbc/mobile/news/view/ToolbarView;->mAutoHideEnabled:Z

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lbbc/mobile/news/view/ToolbarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    sget-object v0, Lbbc/mobile/news/view/ToolbarView;->mHandler:Landroid/os/Handler;

    sget-object v1, Lbbc/mobile/news/view/ToolbarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    :cond_0
    return-void
.end method

.method public showToolbar(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 70
    if-eqz p1, :cond_1

    iget v0, p0, Lbbc/mobile/news/view/ToolbarView;->mAnimState:I

    if-ne v0, v1, :cond_1

    .line 71
    iput v2, p0, Lbbc/mobile/news/view/ToolbarView;->mAnimState:I

    .line 72
    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/ToolbarView;->setVisibility(I)V

    .line 73
    invoke-direct {p0, v1}, Lbbc/mobile/news/view/ToolbarView;->animate(I)V

    .line 74
    invoke-virtual {p0}, Lbbc/mobile/news/view/ToolbarView;->resetAutoHideTimer()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    if-nez p1, :cond_0

    iget v0, p0, Lbbc/mobile/news/view/ToolbarView;->mAnimState:I

    if-nez v0, :cond_0

    .line 77
    iput v1, p0, Lbbc/mobile/news/view/ToolbarView;->mAnimState:I

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/ToolbarView;->animate(I)V

    .line 79
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/ToolbarView;->setVisibility(I)V

    goto :goto_0
.end method

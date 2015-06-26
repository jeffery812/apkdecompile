.class public Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;
.super Ljava/lang/Object;
.source "SystemUiHider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/video/SystemUiHider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControlsUiHider"
.end annotation


# instance fields
.field private final mDefaultDelayMillis:I

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lbbc/mobile/news/video/SystemUiHider;


# direct methods
.method private constructor <init>(Lbbc/mobile/news/video/SystemUiHider;I)V
    .locals 1
    .parameter
    .parameter "defaultDelayMillis"

    .prologue
    .line 425
    iput-object p1, p0, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;->this$0:Lbbc/mobile/news/video/SystemUiHider;

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;->mHandler:Landroid/os/Handler;

    .line 426
    iput p2, p0, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;->mDefaultDelayMillis:I

    .line 427
    return-void
.end method

.method synthetic constructor <init>(Lbbc/mobile/news/video/SystemUiHider;ILbbc/mobile/news/video/SystemUiHider$ControlsUiHider;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;-><init>(Lbbc/mobile/news/video/SystemUiHider;I)V

    return-void
.end method


# virtual methods
.method public delayed(I)V
    .locals 4
    .parameter "delayMillis"

    .prologue
    .line 453
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 454
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 432
    iget v0, p0, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;->mDefaultDelayMillis:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;->delayed(I)V

    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lbbc/mobile/news/video/SystemUiHider$ControlsUiHider;->this$0:Lbbc/mobile/news/video/SystemUiHider;

    invoke-virtual {v0}, Lbbc/mobile/news/video/SystemUiHider;->hide()V

    .line 440
    return-void
.end method

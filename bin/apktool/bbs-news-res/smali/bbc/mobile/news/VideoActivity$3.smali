.class Lbbc/mobile/news/VideoActivity$3;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbc/mobile/news/VideoActivity;->setWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbbc/mobile/news/VideoActivity;


# direct methods
.method constructor <init>(Lbbc/mobile/news/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbbc/mobile/news/VideoActivity$3;->this$0:Lbbc/mobile/news/VideoActivity;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "event"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

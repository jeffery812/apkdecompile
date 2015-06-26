.class Lbbc/mobile/news/view/ToolbarView$1;
.super Landroid/os/Handler;
.source "ToolbarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbc/mobile/news/view/ToolbarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lbbc/mobile/news/view/ToolbarView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbbc/mobile/news/view/ToolbarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/ToolbarView;->showToolbar(Z)V

    .line 100
    :cond_0
    return-void
.end method

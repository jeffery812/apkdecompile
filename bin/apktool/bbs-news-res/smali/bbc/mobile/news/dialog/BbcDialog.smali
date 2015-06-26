.class public Lbbc/mobile/news/dialog/BbcDialog;
.super Landroid/app/Dialog;
.source "BbcDialog.java"


# instance fields
.field private mDismissOnLoseFocus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "layout"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 17
    iput-boolean v0, p0, Lbbc/mobile/news/dialog/BbcDialog;->mDismissOnLoseFocus:Z

    .line 23
    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/BbcDialog;->setCanceledOnTouchOutside(Z)V

    .line 25
    invoke-virtual {p0, p2}, Lbbc/mobile/news/dialog/BbcDialog;->setContentView(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 31
    iget-boolean v0, p0, Lbbc/mobile/news/dialog/BbcDialog;->mDismissOnLoseFocus:Z

    if-eqz v0, :cond_1

    .line 32
    if-nez p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/BbcDialog;->dismiss()V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public setDismissOnLoseFocus(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 47
    iput-boolean p1, p0, Lbbc/mobile/news/dialog/BbcDialog;->mDismissOnLoseFocus:Z

    .line 48
    return-void
.end method

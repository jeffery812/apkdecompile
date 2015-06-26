.class public Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;
.super Lbbc/mobile/news/actionbar/ActionBarHelper;
.source "ActionBarHelperHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mOptionsMenu:Landroid/view/Menu;

.field private mRefreshIndeterminateProgressView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lbbc/mobile/news/actionbar/ActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;->mRefreshIndeterminateProgressView:Landroid/view/View;

    .line 41
    return-void
.end method


# virtual methods
.method protected getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 45
    iput-object p1, p0, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;->mOptionsMenu:Landroid/view/Menu;

    .line 46
    invoke-super {p0, p1}, Lbbc/mobile/news/actionbar/ActionBarHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setRefreshActionItemState(Z)V
    .locals 5
    .parameter "refreshing"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v2, p0, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;->mOptionsMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;->mOptionsMenu:Landroid/view/Menu;

    sget v3, Lbbc/mobile/news/R$id;->optMenuRefreshAction:I

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 59
    .local v1, refreshItem:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 60
    if-eqz p1, :cond_3

    .line 61
    iget-object v2, p0, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;->mRefreshIndeterminateProgressView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 63
    invoke-virtual {p0}, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v2

    .line 64
    const-string v3, "layout_inflater"

    .line 63
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Landroid/view/LayoutInflater;

    .line 66
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v2, Lbbc/mobile/news/R$layout;->actionbar_indeterminate_progress:I

    .line 65
    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;->mRefreshIndeterminateProgressView:Landroid/view/View;

    .line 68
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    iget-object v2, p0, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;->mRefreshIndeterminateProgressView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0

    .line 70
    :cond_3
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    goto :goto_0
.end method

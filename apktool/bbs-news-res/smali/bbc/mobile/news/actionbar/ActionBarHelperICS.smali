.class public Lbbc/mobile/news/actionbar/ActionBarHelperICS;
.super Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;
.source "ActionBarHelperICS.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;-><init>(Landroid/app/Activity;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbbc/mobile/news/actionbar/ActionBarHelperICS;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 42
    iget-object v1, p0, Lbbc/mobile/news/actionbar/ActionBarHelperICS;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lbbc/mobile/news/actionbar/ActionBarHelperICS;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 44
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 48
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    invoke-super {p0, p1}, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

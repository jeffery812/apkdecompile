.class public abstract Lbbc/mobile/news/actionbar/ActionBarHelper;
.super Ljava/lang/Object;
.source "ActionBarHelper.java"


# instance fields
.field protected mActivity:Landroid/app/Activity;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lbbc/mobile/news/actionbar/ActionBarHelper;->mActivity:Landroid/app/Activity;

    .line 62
    return-void
.end method

.method public static createInstance(Landroid/app/Activity;)Lbbc/mobile/news/actionbar/ActionBarHelper;
    .locals 2
    .parameter "activity"

    .prologue
    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 49
    new-instance v0, Lbbc/mobile/news/actionbar/ActionBarHelperICS;

    invoke-direct {v0, p0}, Lbbc/mobile/news/actionbar/ActionBarHelperICS;-><init>(Landroid/app/Activity;)V

    .line 55
    :goto_0
    return-object v0

    .line 51
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 52
    new-instance v0, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;

    invoke-direct {v0, p0}, Lbbc/mobile/news/actionbar/ActionBarHelperHoneycomb;-><init>(Landroid/app/Activity;)V

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;

    invoke-direct {v0, p0}, Lbbc/mobile/news/actionbar/ActionBarHelperBase;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public getMenuInflater(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;
    .locals 0
    .parameter "superMenuInflater"

    .prologue
    .line 108
    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lbbc/mobile/news/actionbar/ActionBarHelper;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lbbc/mobile/news/actionbar/ActionBarHelper;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 116
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 76
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "title"
    .parameter "color"

    .prologue
    .line 93
    return-void
.end method

.method public abstract setRefreshActionItemState(Z)V
.end method

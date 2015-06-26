.class public Lbbc/mobile/news/actionbar/SimpleMenuItem;
.super Ljava/lang/Object;
.source "SimpleMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field private mEnabled:Z

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mMenu:Lbbc/mobile/news/actionbar/SimpleMenu;

.field private final mOrder:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mViewVisible:Z

.field private mVisibile:Z


# direct methods
.method public constructor <init>(Lbbc/mobile/news/actionbar/SimpleMenu;IILjava/lang/CharSequence;)V
    .locals 2
    .parameter "menu"
    .parameter "id"
    .parameter "order"
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mIconResId:I

    .line 43
    iput-boolean v1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mEnabled:Z

    .line 44
    iput-boolean v1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mVisibile:Z

    .line 45
    iput-boolean v1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mViewVisible:Z

    .line 48
    iput-object p1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mMenu:Lbbc/mobile/news/actionbar/SimpleMenu;

    .line 49
    iput p2, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mId:I

    .line 50
    iput p3, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mOrder:I

    .line 51
    iput-object p4, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 52
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    :goto_0
    return-object v0

    .line 101
    :cond_0
    iget v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mIconResId:I

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mMenu:Lbbc/mobile/news/actionbar/SimpleMenu;

    invoke-virtual {v0}, Lbbc/mobile/news/actionbar/SimpleMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mOrder:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mEnabled:Z

    return v0
.end method

.method public isViewVisible()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mViewVisible:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mVisibile:Z

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0
    .parameter "actionProvider"

    .prologue
    .line 131
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 0
    .parameter "i"

    .prologue
    .line 270
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0
    .parameter "view"

    .prologue
    .line 265
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .parameter "c"

    .prologue
    .line 187
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 0
    .parameter "b"

    .prologue
    .line 197
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 0
    .parameter "b"

    .prologue
    .line 207
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 0
    .parameter "enabled"

    .prologue
    .line 109
    iput-boolean p1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mEnabled:Z

    .line 110
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "iconResId"

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    iput p1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mIconResId:I

    .line 93
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .parameter "icon"

    .prologue
    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mIconResId:I

    .line 86
    iput-object p1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .parameter "intent"

    .prologue
    .line 162
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 0
    .parameter "c"

    .prologue
    .line 177
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "onActionExpandListener"

    .prologue
    .line 157
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .parameter "onMenuItemClickListener"

    .prologue
    .line 246
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0
    .parameter "c"
    .parameter "c1"

    .prologue
    .line 172
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 256
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "i"

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "titleRes"

    .prologue
    .line 68
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mMenu:Lbbc/mobile/news/actionbar/SimpleMenu;

    invoke-virtual {v0}, Lbbc/mobile/news/actionbar/SimpleMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/actionbar/SimpleMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .parameter "title"

    .prologue
    .line 63
    iput-object p1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 64
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0
    .parameter "title"

    .prologue
    .line 76
    iput-object p1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 77
    return-object p0
.end method

.method public setViewVisible(Z)Landroid/view/MenuItem;
    .locals 0
    .parameter "visible"

    .prologue
    .line 221
    iput-boolean p1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mViewVisible:Z

    .line 222
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0
    .parameter "b"

    .prologue
    .line 216
    iput-boolean p1, p0, Lbbc/mobile/news/actionbar/SimpleMenuItem;->mVisibile:Z

    .line 217
    return-object p0
.end method

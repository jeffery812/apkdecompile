.class public Lbbc/mobile/news/actionbar/SimpleMenu;
.super Ljava/lang/Object;
.source "SimpleMenu.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/actionbar/SimpleMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mResources:Landroid/content/res/Resources;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mItems:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method private addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 77
    new-instance v0, Lbbc/mobile/news/actionbar/SimpleMenuItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lbbc/mobile/news/actionbar/SimpleMenuItem;-><init>(Lbbc/mobile/news/actionbar/SimpleMenu;IILjava/lang/CharSequence;)V

    .line 78
    .local v0, item:Lbbc/mobile/news/actionbar/SimpleMenuItem;
    iget-object v1, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, p2}, Lbbc/mobile/news/actionbar/SimpleMenu;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    return-object v0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .parameter
    .parameter "order"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/view/MenuItem;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/view/MenuItem;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 90
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 84
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 85
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getOrder()I

    move-result v2

    if-gt v2, p1, :cond_1

    .line 86
    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    .line 83
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private removeItemAtInt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 111
    if-ltz p1, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .parameter "titleRes"

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Lbbc/mobile/news/actionbar/SimpleMenu;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 70
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lbbc/mobile/news/actionbar/SimpleMenu;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 66
    invoke-direct {p0, p2, p3, p4}, Lbbc/mobile/news/actionbar/SimpleMenu;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0, v0, p1}, Lbbc/mobile/news/actionbar/SimpleMenu;->addInternal(IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 2
    .parameter "i"
    .parameter "i1"
    .parameter "i2"
    .parameter "componentName"
    .parameter "intents"
    .parameter "intent"
    .parameter "i3"
    .parameter "menuItems"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .parameter "titleRes"

    .prologue
    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 2
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 2
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 2
    .parameter "charSequence"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 4
    .parameter "id"

    .prologue
    .line 122
    invoke-virtual {p0}, Lbbc/mobile/news/actionbar/SimpleMenu;->size()I

    move-result v2

    .line 123
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 130
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 124
    :cond_1
    iget-object v3, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/actionbar/SimpleMenuItem;

    .line 125
    .local v1, item:Lbbc/mobile/news/actionbar/SimpleMenuItem;
    invoke-virtual {v1}, Lbbc/mobile/news/actionbar/SimpleMenuItem;->getItemId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public findItemIndex(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 94
    invoke-virtual {p0}, Lbbc/mobile/news/actionbar/SimpleMenu;->size()I

    move-result v2

    .line 96
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 103
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 97
    .restart local v0       #i:I
    :cond_1
    iget-object v3, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/actionbar/SimpleMenuItem;

    .line 98
    .local v1, item:Lbbc/mobile/news/actionbar/SimpleMenuItem;
    invoke-virtual {v1}, Lbbc/mobile/news/actionbar/SimpleMenuItem;->getItemId()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 138
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "i"
    .parameter "keyEvent"

    .prologue
    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performIdentifierAction(II)Z
    .locals 2
    .parameter "i"
    .parameter "i1"

    .prologue
    .line 197
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 2
    .parameter "i"
    .parameter "keyEvent"
    .parameter "i1"

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeGroup(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lbbc/mobile/news/actionbar/SimpleMenu;->findItemIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/actionbar/SimpleMenu;->removeItemAtInt(I)V

    .line 108
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 2
    .parameter "i"
    .parameter "b"
    .parameter "b1"

    .prologue
    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupEnabled(IZ)V
    .locals 2
    .parameter "i"
    .parameter "b"

    .prologue
    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupVisible(IZ)V
    .locals 2
    .parameter "i"
    .parameter "b"

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setQwertyMode(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 201
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation is not supported for SimpleMenu"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lbbc/mobile/news/actionbar/SimpleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

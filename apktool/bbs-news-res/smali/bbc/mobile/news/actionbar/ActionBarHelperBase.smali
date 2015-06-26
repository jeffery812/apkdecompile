.class public Lbbc/mobile/news/actionbar/ActionBarHelperBase;
.super Lbbc/mobile/news/actionbar/ActionBarHelper;
.source "ActionBarHelperBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/actionbar/ActionBarHelperBase$WrappedMenuInflater;
    }
.end annotation


# static fields
.field public static final HOME_ID:I = 0x102002c
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static final MENU_ATTR_ID:Ljava/lang/String; = "id"

.field private static final MENU_ATTR_SHOW_AS_ACTION:Ljava/lang/String; = "showAsAction"

.field private static final MENU_RES_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mActionItemIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->TAG:Ljava/lang/String;

    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lbbc/mobile/news/actionbar/ActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActionItemIds:Ljava/util/Set;

    .line 65
    return-void
.end method

.method private addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 18
    .parameter "item"

    .prologue
    .line 183
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    .line 186
    .local v8, itemId:I
    invoke-direct/range {p0 .. p0}, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v2

    .line 187
    .local v2, actionBar:Landroid/view/ViewGroup;
    if-nez v2, :cond_1

    .line 188
    const/4 v3, 0x0

    .line 265
    :cond_0
    :goto_0
    return-object v3

    .line 191
    :cond_1
    const/4 v10, 0x0

    .line 194
    .local v10, paddingView:Landroid/view/View;
    new-instance v3, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/16 v16, 0x0

    .line 195
    const v14, 0x102002c

    if-ne v8, v14, :cond_5

    .line 196
    sget v14, Lbbc/mobile/news/R$attr;->actionbarCompatItemHomeStyle:I

    .line 194
    :goto_1
    move-object/from16 v0, v16

    invoke-direct {v3, v15, v0, v14}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    .local v3, actionButton:Landroid/widget/ImageButton;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 201
    const v14, 0x102002c

    if-ne v8, v14, :cond_6

    .line 202
    sget v14, Lbbc/mobile/news/R$dimen;->actionbar_compat_button_home_width:I

    .line 200
    :goto_2
    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    .line 204
    const/4 v15, -0x1

    .line 199
    invoke-direct {v9, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 206
    .local v9, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const v14, 0x102002c

    if-ne v8, v14, :cond_2

    .line 207
    new-instance v10, Landroid/view/View;

    .end local v10           #paddingView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 208
    .restart local v10       #paddingView:Landroid/view/View;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 209
    const/4 v14, -0x1

    const/4 v15, -0x1

    .line 208
    invoke-direct {v11, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 210
    .local v11, paddingViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v14, 0x3f80

    iput v14, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 211
    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    .end local v11           #paddingViewParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    sget v14, Lbbc/mobile/news/R$id;->optMenuRefreshAction:I

    if-ne v8, v14, :cond_3

    .line 216
    sget v14, Lbbc/mobile/news/R$id;->actionbar_compat_item_refresh:I

    invoke-virtual {v3, v14}, Landroid/widget/ImageButton;->setId(I)V

    .line 219
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v14}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 221
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v14, Lbbc/mobile/news/actionbar/ActionBarHelperBase$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lbbc/mobile/news/actionbar/ActionBarHelperBase$1;-><init>(Lbbc/mobile/news/actionbar/ActionBarHelperBase;Landroid/view/MenuItem;)V

    invoke-virtual {v3, v14}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    sget-object v14, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "addActionItemCompatFromMenuItem id:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v13, p1

    .line 230
    check-cast v13, Lbbc/mobile/news/actionbar/SimpleMenuItem;

    .line 231
    .local v13, simpleItem:Lbbc/mobile/news/actionbar/SimpleMenuItem;
    invoke-virtual {v13}, Lbbc/mobile/news/actionbar/SimpleMenuItem;->isViewVisible()Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v3, v14}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 233
    invoke-virtual {v13}, Lbbc/mobile/news/actionbar/SimpleMenuItem;->isEnabled()Z

    move-result v14

    invoke-virtual {v3, v14}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 235
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 237
    const v14, 0x102002c

    if-ne v8, v14, :cond_4

    .line 238
    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 240
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v14

    sget v15, Lbbc/mobile/news/R$id;->optMenuRefreshAction:I

    if-ne v14, v15, :cond_0

    .line 243
    new-instance v6, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v15, 0x0

    .line 244
    sget v16, Lbbc/mobile/news/R$attr;->actionbarCompatProgressIndicatorStyle:I

    .line 243
    move/from16 v0, v16

    invoke-direct {v6, v14, v15, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 246
    .local v6, indicator:Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 247
    sget v15, Lbbc/mobile/news/R$dimen;->actionbar_compat_button_width:I

    .line 246
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 248
    .local v5, buttonWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 249
    sget v15, Lbbc/mobile/news/R$dimen;->actionbar_compat_height:I

    .line 248
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 250
    .local v4, buttonHeight:I
    div-int/lit8 v12, v5, 0x2

    .line 252
    .local v12, progressIndicatorWidth:I
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 255
    .local v7, indicatorLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    sub-int v14, v5, v12

    div-int/lit8 v14, v14, 0x2

    .line 256
    sub-int v15, v4, v12

    div-int/lit8 v15, v15, 0x2

    .line 257
    sub-int v16, v5, v12

    div-int/lit8 v16, v16, 0x2

    .line 258
    const/16 v17, 0x0

    .line 254
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v14, v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 259
    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 261
    sget v14, Lbbc/mobile/news/R$id;->actionbar_compat_item_refresh_progress:I

    invoke-virtual {v6, v14}, Landroid/widget/ProgressBar;->setId(I)V

    .line 262
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 197
    .end local v3           #actionButton:Landroid/widget/ImageButton;
    .end local v4           #buttonHeight:I
    .end local v5           #buttonWidth:I
    .end local v6           #indicator:Landroid/widget/ProgressBar;
    .end local v7           #indicatorLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v9           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v12           #progressIndicatorWidth:I
    .end local v13           #simpleItem:Lbbc/mobile/news/actionbar/SimpleMenuItem;
    :cond_5
    sget v14, Lbbc/mobile/news/R$attr;->actionbarCompatItemStyle:I

    goto/16 :goto_1

    .line 203
    .restart local v3       #actionButton:Landroid/widget/ImageButton;
    :cond_6
    sget v14, Lbbc/mobile/news/R$dimen;->actionbar_compat_button_width:I

    goto/16 :goto_2

    .line 231
    .restart local v9       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13       #simpleItem:Lbbc/mobile/news/actionbar/SimpleMenuItem;
    :cond_7
    const/16 v14, 0x8

    goto :goto_3
.end method

.method private getActionBarCompat()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    sget v1, Lbbc/mobile/news/R$id;->actionbar_compat:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private setupActionBar()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 84
    invoke-direct {p0}, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->getActionBarCompat()Landroid/view/ViewGroup;

    move-result-object v0

    .line 85
    .local v0, actionBarCompat:Landroid/view/ViewGroup;
    if-nez v0, :cond_1

    .line 115
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 91
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v5, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v5, springLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f80

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 95
    new-instance v6, Lbbc/mobile/news/actionbar/SimpleMenu;

    iget-object v7, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lbbc/mobile/news/actionbar/SimpleMenu;-><init>(Landroid/content/Context;)V

    .line 96
    .local v6, tempMenu:Lbbc/mobile/news/actionbar/SimpleMenu;
    new-instance v1, Lbbc/mobile/news/actionbar/SimpleMenuItem;

    const v7, 0x102002c

    iget-object v8, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    sget v9, Lbbc/mobile/news/R$string;->app_name:I

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v6, v7, v10, v8}, Lbbc/mobile/news/actionbar/SimpleMenuItem;-><init>(Lbbc/mobile/news/actionbar/SimpleMenu;IILjava/lang/CharSequence;)V

    .line 97
    .local v1, homeItem:Lbbc/mobile/news/actionbar/SimpleMenuItem;
    sget v7, Lbbc/mobile/news/R$drawable;->icon_news_logo:I

    invoke-virtual {v1, v7}, Lbbc/mobile/news/actionbar/SimpleMenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 98
    invoke-direct {p0, v1}, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)Landroid/view/View;

    .line 100
    new-instance v4, Lbbc/mobile/news/actionbar/SimpleMenu;

    iget-object v7, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v7}, Lbbc/mobile/news/actionbar/SimpleMenu;-><init>(Landroid/content/Context;)V

    .line 101
    .local v4, menu:Lbbc/mobile/news/actionbar/SimpleMenu;
    iget-object v7, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v10, v4}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 102
    iget-object v7, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v8, 0x0

    invoke-virtual {v7, v10, v8, v4}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 103
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lbbc/mobile/news/actionbar/SimpleMenu;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 104
    invoke-virtual {v4, v2}, Lbbc/mobile/news/actionbar/SimpleMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 105
    .local v3, item:Landroid/view/MenuItem;
    iget-object v7, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActionItemIds:Ljava/util/Set;

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 106
    invoke-direct {p0, v3}, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->addActionItemCompatFromMenuItem(Landroid/view/MenuItem;)Landroid/view/View;

    .line 103
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getMenuInflater(Landroid/view/MenuInflater;)Landroid/view/MenuInflater;
    .locals 2
    .parameter "superMenuInflater"

    .prologue
    .line 163
    sget-object v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->TAG:Ljava/lang/String;

    const-string v1, "getMenuInflater"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase$WrappedMenuInflater;

    iget-object v1, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1, p1}, Lbbc/mobile/news/actionbar/ActionBarHelperBase$WrappedMenuInflater;-><init>(Lbbc/mobile/news/actionbar/ActionBarHelperBase;Landroid/content/Context;Landroid/view/MenuInflater;)V

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 346
    sget-object v0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->TAG:Ljava/lang/String;

    const-string v1, "invalidateOptionsMenu()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-super {p0}, Lbbc/mobile/news/actionbar/ActionBarHelper;->invalidateOptionsMenu()V

    .line 350
    invoke-direct {p0}, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->setupActionBar()V

    .line 352
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    iget-object v0, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 71
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 140
    sget-object v1, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->TAG:Ljava/lang/String;

    const-string v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActionItemIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    const/4 v1, 0x1

    return v1

    .line 142
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 143
    .local v0, id:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 76
    iget-object v0, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    sget v2, Lbbc/mobile/news/R$layout;->actionbar_compat:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 77
    invoke-direct {p0}, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->setupActionBar()V

    .line 78
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 3
    .parameter "title"
    .parameter "color"

    .prologue
    .line 151
    iget-object v1, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    sget v2, Lbbc/mobile/news/R$id;->actionbar_compat_title:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    .local v0, titleView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    return-void
.end method

.method public setRefreshActionItemState(Z)V
    .locals 6
    .parameter "refreshing"

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 121
    iget-object v2, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    sget v5, Lbbc/mobile/news/R$id;->actionbar_compat_item_refresh:I

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, refreshButton:Landroid/view/View;
    iget-object v2, p0, Lbbc/mobile/news/actionbar/ActionBarHelperBase;->mActivity:Landroid/app/Activity;

    sget v5, Lbbc/mobile/news/R$id;->actionbar_compat_item_refresh_progress:I

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 124
    .local v1, refreshIndicator:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 125
    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_0
    if-eqz v1, :cond_1

    .line 129
    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 125
    goto :goto_0

    :cond_3
    move v4, v3

    .line 129
    goto :goto_1
.end method

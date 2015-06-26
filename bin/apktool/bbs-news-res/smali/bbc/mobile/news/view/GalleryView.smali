.class public Lbbc/mobile/news/view/GalleryView;
.super Landroid/widget/RelativeLayout;
.source "GalleryView.java"


# static fields
.field private static BG_SELECTED_COLOR:I

.field private static BG_UNSELECTED_COLOR:I

.field private static FADE_IN_ANIMATION:Landroid/view/animation/Animation;

.field private static FADE_OUT_ANIMATION:Landroid/view/animation/Animation;

.field private static INITALISED:Z

.field public static final TAG:Ljava/lang/String;

.field private static TITLE_SELECTED_COLOR:I

.field private static TITLE_UNSELECTED_COLOR:I


# instance fields
.field private mAVIconView:Landroid/widget/ImageView;

.field private mAdjustFontColorOnSelection:Z

.field protected mArticle:Lbbc/mobile/news/model/Article;

.field private mImageView:Lbbc/mobile/news/view/NewsImageView;

.field private mIsPhone:Z

.field private mSelectionBar:Landroid/view/View;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lbbc/mobile/news/view/GalleryView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/GalleryView;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lbbc/mobile/news/view/GalleryView;->INITALISED:Z

    .line 32
    const-string v0, "#666666"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbbc/mobile/news/view/GalleryView;->TITLE_UNSELECTED_COLOR:I

    .line 33
    const-string v0, "#DDDDDD"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbbc/mobile/news/view/GalleryView;->TITLE_SELECTED_COLOR:I

    .line 34
    const-string v0, "#EDEDED"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbbc/mobile/news/view/GalleryView;->BG_UNSELECTED_COLOR:I

    .line 35
    const-string v0, "#3F3F3F"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lbbc/mobile/news/view/GalleryView;->BG_SELECTED_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/GalleryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defaultStyle"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/view/GalleryView;->mAdjustFontColorOnSelection:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/view/GalleryView;->mIsPhone:Z

    .line 57
    invoke-virtual {p0}, Lbbc/mobile/news/view/GalleryView;->isInEditMode()Z

    move-result v0

    invoke-static {p1, v0}, Lbbc/mobile/news/view/GalleryView;->initStaticValues(Landroid/content/Context;Z)V

    .line 58
    return-void
.end method

.method private static initStaticValues(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isInEditMode"

    .prologue
    .line 116
    sget-boolean v1, Lbbc/mobile/news/view/GalleryView;->INITALISED:Z

    if-nez v1, :cond_0

    .line 118
    const/4 v1, 0x1

    sput-boolean v1, Lbbc/mobile/news/view/GalleryView;->INITALISED:Z

    .line 120
    if-nez p1, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 123
    .local v0, resources:Landroid/content/res/Resources;
    sget v1, Lbbc/mobile/news/R$anim;->fade_in:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    sput-object v1, Lbbc/mobile/news/view/GalleryView;->FADE_IN_ANIMATION:Landroid/view/animation/Animation;

    .line 124
    sget v1, Lbbc/mobile/news/R$anim;->fade_out:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    sput-object v1, Lbbc/mobile/news/view/GalleryView;->FADE_OUT_ANIMATION:Landroid/view/animation/Animation;

    .line 125
    sget v1, Lbbc/mobile/news/R$color;->category_view_title_color_unselected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lbbc/mobile/news/view/GalleryView;->TITLE_UNSELECTED_COLOR:I

    .line 126
    sget v1, Lbbc/mobile/news/R$color;->category_view_title_color_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lbbc/mobile/news/view/GalleryView;->TITLE_SELECTED_COLOR:I

    .line 127
    sget v1, Lbbc/mobile/news/R$color;->category_bg_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lbbc/mobile/news/view/GalleryView;->BG_SELECTED_COLOR:I

    .line 128
    sget v1, Lbbc/mobile/news/R$color;->category_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lbbc/mobile/news/view/GalleryView;->BG_UNSELECTED_COLOR:I

    .line 131
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private setAVIconVisibility(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 151
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mAVIconView:Landroid/widget/ImageView;

    sget v1, Lbbc/mobile/news/R$drawable;->icon_playvideo_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mAVIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 155
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mAVIconView:Landroid/widget/ImageView;

    sget v1, Lbbc/mobile/news/R$drawable;->icon_playaudio_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mAVIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mAVIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setFontColor(Z)V
    .locals 2
    .parameter "selectedCategory"

    .prologue
    .line 135
    iget-boolean v0, p0, Lbbc/mobile/news/view/GalleryView;->mAdjustFontColorOnSelection:Z

    if-eqz v0, :cond_1

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mTitleText:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/GalleryView;->TITLE_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mTitleText:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/GalleryView;->BG_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 147
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mTitleText:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/GalleryView;->TITLE_UNSELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mTitleText:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/GalleryView;->BG_UNSELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mTitleText:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/GalleryView;->TITLE_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mTitleText:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/GalleryView;->BG_SELECTED_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setThumbnailImage(Ljava/net/URL;Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 2
    .parameter "thumbnailUrl"
    .parameter "imageHandler"

    .prologue
    .line 100
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 102
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v0}, Lbbc/mobile/news/view/NewsImageView;->getUrl()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v0}, Lbbc/mobile/news/view/NewsImageView;->isShowingPlaceholder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v0, p1, p2}, Lbbc/mobile/news/view/NewsImageView;->setImageURLxx(Ljava/net/URL;Lbbc/mobile/news/feed/ImageHandler;)V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v0}, Lbbc/mobile/news/view/NewsImageView;->getUrl()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v0}, Lbbc/mobile/news/view/NewsImageView;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v0, p1, p2}, Lbbc/mobile/news/view/NewsImageView;->setImageURLxx(Ljava/net/URL;Lbbc/mobile/news/feed/ImageHandler;)V

    goto :goto_0
.end method

.method private showSelectionBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/16 v1, 0x8

    .line 164
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mSelectionBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 165
    if-eqz p1, :cond_1

    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mSelectionBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mSelectionBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mSelectionBar:Landroid/view/View;

    sget-object v1, Lbbc/mobile/news/view/GalleryView;->FADE_IN_ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mSelectionBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mSelectionBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mSelectionBar:Landroid/view/View;

    sget-object v1, Lbbc/mobile/news/view/GalleryView;->FADE_OUT_ANIMATION:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public checkArticle(Lbbc/mobile/news/model/Article;)Z
    .locals 1
    .parameter "article"

    .prologue
    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mArticle:Lbbc/mobile/news/model/Article;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Article;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getArticle()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mArticle:Lbbc/mobile/news/model/Article;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 63
    sget v0, Lbbc/mobile/news/R$id;->galleryItemView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/view/NewsImageView;

    iput-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    .line 64
    sget v0, Lbbc/mobile/news/R$id;->articleTitleId:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mTitleText:Landroid/widget/TextView;

    .line 65
    sget v0, Lbbc/mobile/news/R$id;->gallerySelectionBar:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mSelectionBar:Landroid/view/View;

    .line 66
    sget v0, Lbbc/mobile/news/R$id;->avIconView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/GalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbbc/mobile/news/view/GalleryView;->mAVIconView:Landroid/widget/ImageView;

    .line 67
    return-void
.end method

.method public setActionModeSelection(Z)V
    .locals 0
    .parameter "isSelectedActionArticle"

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lbbc/mobile/news/view/GalleryView;->setSelected(Z)V

    .line 196
    return-void
.end method

.method public setAdjustFontColorOnSelection(Z)V
    .locals 0
    .parameter "adjust"

    .prologue
    .line 176
    iput-boolean p1, p0, Lbbc/mobile/news/view/GalleryView;->mAdjustFontColorOnSelection:Z

    .line 177
    return-void
.end method

.method public setArticle(Lbbc/mobile/news/model/Article;Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 3
    .parameter "article"
    .parameter "imageHandler"

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lbbc/mobile/news/view/GalleryView;->mArticle:Lbbc/mobile/news/model/Article;

    .line 87
    iget-object v1, p0, Lbbc/mobile/news/view/GalleryView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Article;->getThumbnailAsUrl()Ljava/net/URL;

    move-result-object v0

    .line 88
    .local v0, thumbnailUrl:Ljava/net/URL;
    invoke-direct {p0, v0, p2}, Lbbc/mobile/news/view/GalleryView;->setThumbnailImage(Ljava/net/URL;Lbbc/mobile/news/feed/ImageHandler;)V

    .line 89
    iget-object v1, p0, Lbbc/mobile/news/view/GalleryView;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lbbc/mobile/news/view/GalleryView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getAVType()I

    move-result v1

    invoke-direct {p0, v1}, Lbbc/mobile/news/view/GalleryView;->setAVIconVisibility(I)V

    .line 96
    .end local v0           #thumbnailUrl:Ljava/net/URL;
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v1, Lbbc/mobile/news/view/GalleryView;->TAG:Ljava/lang/String;

    const-string v2, "setArticle() :ERROR article is null"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIsPhone(Z)V
    .locals 0
    .parameter "isPhone"

    .prologue
    .line 70
    iput-boolean p1, p0, Lbbc/mobile/news/view/GalleryView;->mIsPhone:Z

    .line 71
    return-void
.end method

.method public setSelection(Lbbc/mobile/news/helper/SelectionProvider;Z)V
    .locals 3
    .parameter "selectionProvider"
    .parameter "isSelectedCategory"

    .prologue
    .line 183
    iget-boolean v1, p0, Lbbc/mobile/news/view/GalleryView;->mIsPhone:Z

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lbbc/mobile/news/view/GalleryView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {p1, v1}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Article;)Z

    move-result v0

    .line 186
    .local v0, isSelectedArticle:Z
    invoke-direct {p0, v0}, Lbbc/mobile/news/view/GalleryView;->showSelectionBar(Z)V

    .line 187
    invoke-direct {p0, p2}, Lbbc/mobile/news/view/GalleryView;->setFontColor(Z)V

    .line 190
    .end local v0           #isSelectedArticle:Z
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/view/GalleryView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/BaseActivity;

    invoke-virtual {v1}, Lbbc/mobile/news/BaseActivity;->getActionModeProvider()Lbbc/mobile/news/helper/ActionModeProvider;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/view/GalleryView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v1, v2}, Lbbc/mobile/news/helper/ActionModeProvider;->isSelected(Lbbc/mobile/news/model/Article;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/GalleryView;->setActionModeSelection(Z)V

    .line 191
    return-void
.end method

.class public Lbbc/mobile/news/view/CategoryTabView;
.super Landroid/widget/RelativeLayout;
.source "CategoryTabView.java"


# static fields
.field private static BACKGROUND_COLOR_SELECTED:I = 0x0

.field private static BACKGROUND_COLOR_UNSELECTED:I = 0x0

.field private static COLORS_INITALISED:Z = false

.field public static final TAG:Ljava/lang/String; = null

.field private static TEXT_COLOR_SELECTED:I = 0x0

.field private static TEXT_COLOR_UNSELECTED:I = 0x0

.field private static final UNINITALISED_COLOR:I = -0x1


# instance fields
.field private mCategory:Lbbc/mobile/news/model/Category;

.field private mIndicatorView:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 16
    const-class v0, Lbbc/mobile/news/view/CategoryTabView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/CategoryTabView;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lbbc/mobile/news/view/CategoryTabView;->COLORS_INITALISED:Z

    .line 22
    sput v1, Lbbc/mobile/news/view/CategoryTabView;->BACKGROUND_COLOR_UNSELECTED:I

    .line 23
    sput v1, Lbbc/mobile/news/view/CategoryTabView;->BACKGROUND_COLOR_SELECTED:I

    .line 24
    sput v1, Lbbc/mobile/news/view/CategoryTabView;->TEXT_COLOR_UNSELECTED:I

    .line 25
    sput v1, Lbbc/mobile/news/view/CategoryTabView;->TEXT_COLOR_SELECTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/CategoryTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    sget-boolean v1, Lbbc/mobile/news/view/CategoryTabView;->COLORS_INITALISED:Z

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    .local v0, resources:Landroid/content/res/Resources;
    sget v1, Lbbc/mobile/news/R$color;->category_tab_view_unselected_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lbbc/mobile/news/view/CategoryTabView;->BACKGROUND_COLOR_UNSELECTED:I

    .line 43
    sget v1, Lbbc/mobile/news/R$color;->category_tab_view_selected_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lbbc/mobile/news/view/CategoryTabView;->BACKGROUND_COLOR_SELECTED:I

    .line 44
    sget v1, Lbbc/mobile/news/R$color;->category_tab_view_unselected_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lbbc/mobile/news/view/CategoryTabView;->TEXT_COLOR_UNSELECTED:I

    .line 45
    sget v1, Lbbc/mobile/news/R$color;->category_tab_view_selected_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lbbc/mobile/news/view/CategoryTabView;->TEXT_COLOR_SELECTED:I

    .line 46
    const/4 v1, 0x1

    sput-boolean v1, Lbbc/mobile/news/view/CategoryTabView;->COLORS_INITALISED:Z

    .line 48
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCategory()Lbbc/mobile/news/model/Category;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryTabView;->mCategory:Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 54
    sget v0, Lbbc/mobile/news/R$id;->category_tab_view_text_view:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/CategoryTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryTabView;->mTextView:Landroid/widget/TextView;

    .line 55
    sget v0, Lbbc/mobile/news/R$id;->category_tab_view_selected_indicator:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/CategoryTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/CategoryTabView;->mIndicatorView:Landroid/view/View;

    .line 56
    return-void
.end method

.method public setCategory(Lbbc/mobile/news/model/Category;)V
    .locals 2
    .parameter "category"

    .prologue
    .line 60
    iput-object p1, p0, Lbbc/mobile/news/view/CategoryTabView;->mCategory:Lbbc/mobile/news/model/Category;

    .line 62
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryTabView;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryTabView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryTabView;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-static {}, Lbbc/mobile/news/helper/SelectionProvider;->getInstance()Lbbc/mobile/news/helper/SelectionProvider;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/view/CategoryTabView;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/helper/SelectionProvider;->isSelected(Lbbc/mobile/news/model/Category;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryTabView;->mTextView:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/CategoryTabView;->TEXT_COLOR_SELECTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryTabView;->mTextView:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/CategoryTabView;->BACKGROUND_COLOR_SELECTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 68
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryTabView;->mIndicatorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryTabView;->mTextView:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/CategoryTabView;->TEXT_COLOR_UNSELECTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryTabView;->mTextView:Landroid/widget/TextView;

    sget v1, Lbbc/mobile/news/view/CategoryTabView;->BACKGROUND_COLOR_UNSELECTED:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 72
    iget-object v0, p0, Lbbc/mobile/news/view/CategoryTabView;->mIndicatorView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

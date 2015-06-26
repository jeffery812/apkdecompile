.class public Lbbc/mobile/news/view/ShareItemView;
.super Landroid/widget/LinearLayout;
.source "ShareItemView.java"


# instance fields
.field private mIconView:Landroid/widget/ImageView;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lbbc/mobile/news/view/ShareItemView;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 25
    sget v0, Lbbc/mobile/news/R$id;->shareItemText:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/ShareItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/ShareItemView;->mTextView:Landroid/widget/TextView;

    .line 26
    sget v0, Lbbc/mobile/news/R$id;->shareItemIcon:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/ShareItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbbc/mobile/news/view/ShareItemView;->mIconView:Landroid/widget/ImageView;

    .line 27
    return-void
.end method

.method public setResolveInfo(Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .parameter "resolveInfo"

    .prologue
    .line 31
    iput-object p1, p0, Lbbc/mobile/news/view/ShareItemView;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 33
    iget-object v3, p0, Lbbc/mobile/news/view/ShareItemView;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_1

    .line 35
    invoke-virtual {p0}, Lbbc/mobile/news/view/ShareItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 36
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lbbc/mobile/news/view/ShareItemView;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 37
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lbbc/mobile/news/view/ShareItemView;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 39
    .local v1, label:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 40
    iget-object v3, p0, Lbbc/mobile/news/view/ShareItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_0
    if-eqz v0, :cond_1

    .line 42
    iget-object v3, p0, Lbbc/mobile/news/view/ShareItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    .end local v1           #label:Ljava/lang/CharSequence;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    return-void
.end method

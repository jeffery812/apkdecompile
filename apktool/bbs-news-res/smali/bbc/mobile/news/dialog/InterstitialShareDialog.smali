.class public Lbbc/mobile/news/dialog/InterstitialShareDialog;
.super Lbbc/mobile/news/dialog/BbcDialog;
.source "InterstitialShareDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mShareButton:Landroid/view/View;

.field private mShareIcon:Landroid/widget/ImageView;

.field private mShareText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lbbc/mobile/news/dialog/InterstitialShareDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/dialog/InterstitialShareDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 25
    sget v0, Lbbc/mobile/news/R$layout;->share_interstitial_dialog_layout:I

    invoke-direct {p0, p1, v0}, Lbbc/mobile/news/dialog/BbcDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    sget v0, Lbbc/mobile/news/R$string;->share_using:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->setTitle(I)V

    .line 27
    invoke-virtual {p0, v1}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->setDismissOnLoseFocus(Z)V

    .line 28
    invoke-virtual {p0, v1}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    sget v0, Lbbc/mobile/news/R$id;->shareIcon:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbbc/mobile/news/dialog/InterstitialShareDialog;->mShareIcon:Landroid/widget/ImageView;

    .line 30
    sget v0, Lbbc/mobile/news/R$id;->shareText:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/dialog/InterstitialShareDialog;->mShareText:Landroid/widget/TextView;

    .line 31
    sget v0, Lbbc/mobile/news/R$id;->shareButton:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/dialog/InterstitialShareDialog;->mShareButton:Landroid/view/View;

    .line 32
    return-void
.end method


# virtual methods
.method public setData(Lbbc/mobile/news/model/Article;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "article"
    .parameter "app"

    .prologue
    .line 41
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/InterstitialShareDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 42
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lbbc/mobile/news/dialog/InterstitialShareDialog;->mShareIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iget-object v1, p0, Lbbc/mobile/news/dialog/InterstitialShareDialog;->mShareText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method

.method public setOnSharedClicked(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "onSharedListener"

    .prologue
    .line 36
    iget-object v0, p0, Lbbc/mobile/news/dialog/InterstitialShareDialog;->mShareButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

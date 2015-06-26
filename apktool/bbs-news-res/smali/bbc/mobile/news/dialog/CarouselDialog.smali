.class public Lbbc/mobile/news/dialog/CarouselDialog;
.super Lbbc/mobile/news/dialog/BbcDialog;
.source "CarouselDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mArticle:Lbbc/mobile/news/model/Article;

.field private mArticlePosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbbc/mobile/news/dialog/CarouselDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/dialog/CarouselDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x1

    .line 20
    sget v0, Lbbc/mobile/news/R$layout;->carousel_dialog:I

    invoke-direct {p0, p1, v0}, Lbbc/mobile/news/dialog/BbcDialog;-><init>(Landroid/content/Context;I)V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lbbc/mobile/news/dialog/CarouselDialog;->mArticlePosition:I

    .line 21
    invoke-virtual {p0, v1}, Lbbc/mobile/news/dialog/CarouselDialog;->setCanceledOnTouchOutside(Z)V

    .line 22
    invoke-virtual {p0, v1}, Lbbc/mobile/news/dialog/CarouselDialog;->setDismissOnLoseFocus(Z)V

    .line 24
    sget v0, Lbbc/mobile/news/R$id;->view:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/CarouselDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    sget v0, Lbbc/mobile/news/R$id;->share:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/CarouselDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {p0, p0}, Lbbc/mobile/news/dialog/CarouselDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 28
    invoke-virtual {p0, p0}, Lbbc/mobile/news/dialog/CarouselDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 29
    return-void
.end method

.method private cleanUp()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/dialog/CarouselDialog;->mArticle:Lbbc/mobile/news/model/Article;

    .line 56
    return-void
.end method


# virtual methods
.method public getArticlePosition()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lbbc/mobile/news/dialog/CarouselDialog;->mArticlePosition:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 46
    invoke-direct {p0}, Lbbc/mobile/news/dialog/CarouselDialog;->cleanUp()V

    .line 47
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 51
    invoke-direct {p0}, Lbbc/mobile/news/dialog/CarouselDialog;->cleanUp()V

    .line 52
    return-void
.end method

.method public setArticle(Lbbc/mobile/news/model/Article;I)V
    .locals 1
    .parameter "article"
    .parameter "articlePosition"

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    iput p2, p0, Lbbc/mobile/news/dialog/CarouselDialog;->mArticlePosition:I

    .line 35
    iput-object p1, p0, Lbbc/mobile/news/dialog/CarouselDialog;->mArticle:Lbbc/mobile/news/model/Article;

    .line 36
    iget-object v0, p0, Lbbc/mobile/news/dialog/CarouselDialog;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/CarouselDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    return-void
.end method

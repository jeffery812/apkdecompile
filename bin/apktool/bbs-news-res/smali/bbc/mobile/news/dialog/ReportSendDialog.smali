.class public Lbbc/mobile/news/dialog/ReportSendDialog;
.super Lbbc/mobile/news/dialog/BbcDialog;
.source "ReportSendDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mEmailButton:Landroid/view/View;

.field private mTextButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lbbc/mobile/news/dialog/ReportSendDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/dialog/ReportSendDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 22
    sget v1, Lbbc/mobile/news/R$layout;->report_send_dialog_layout:I

    invoke-direct {p0, p1, v1}, Lbbc/mobile/news/dialog/BbcDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    const-string v1, "Report..."

    invoke-virtual {p0, v1}, Lbbc/mobile/news/dialog/ReportSendDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/ReportSendDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 25
    .local v0, resources:Landroid/content/res/Resources;
    sget v1, Lbbc/mobile/news/R$id;->reportSendDialogEmail:I

    const-string v2, "Email"

    sget v3, Lbbc/mobile/news/R$drawable;->playvideo_selector:I

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/dialog/ReportSendDialog;->initMenuItem(ILjava/lang/String;ILandroid/content/res/Resources;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/dialog/ReportSendDialog;->mEmailButton:Landroid/view/View;

    .line 26
    sget v1, Lbbc/mobile/news/R$id;->reportSendDialogText:I

    const-string v2, "SMS / MMS"

    sget v3, Lbbc/mobile/news/R$drawable;->playvideo_selector:I

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/dialog/ReportSendDialog;->initMenuItem(ILjava/lang/String;ILandroid/content/res/Resources;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/dialog/ReportSendDialog;->mTextButton:Landroid/view/View;

    .line 27
    return-void
.end method

.method private initMenuItem(ILjava/lang/String;ILandroid/content/res/Resources;)Landroid/view/View;
    .locals 3
    .parameter "viewResourceId"
    .parameter "text"
    .parameter "imageResourceId"
    .parameter "resources"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lbbc/mobile/news/dialog/ReportSendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 33
    .local v1, view:Landroid/view/View;
    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 34
    .local v0, backgroundDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 35
    sget v2, Lbbc/mobile/news/R$id;->reportDialogText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    sget v2, Lbbc/mobile/news/R$id;->reportDialogIcon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    :cond_0
    return-object v1
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 43
    iget-object v0, p0, Lbbc/mobile/news/dialog/ReportSendDialog;->mEmailButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lbbc/mobile/news/dialog/ReportSendDialog;->mTextButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

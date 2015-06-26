.class public Lbbc/mobile/news/dialog/ReportDialog;
.super Lbbc/mobile/news/dialog/BbcDialog;
.source "ReportDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioButton:Landroid/view/View;

.field private mClearButton:Landroid/view/View;

.field private mImageButton:Landroid/view/View;

.field private mVideoButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbbc/mobile/news/dialog/ReportDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/dialog/ReportDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    sget v0, Lbbc/mobile/news/R$layout;->report_dialog_layout:I

    invoke-direct {p0, p1, v0}, Lbbc/mobile/news/dialog/BbcDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    sget v0, Lbbc/mobile/news/R$string;->report_add_attachment:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/ReportDialog;->setTitle(I)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/ReportDialog;->setCanceledOnTouchOutside(Z)V

    .line 25
    invoke-direct {p0}, Lbbc/mobile/news/dialog/ReportDialog;->initViews()V

    .line 26
    return-void
.end method

.method private initMenuItem(ILjava/lang/String;ILandroid/content/res/Resources;)Landroid/view/View;
    .locals 3
    .parameter "viewResourceId"
    .parameter "text"
    .parameter "imageResourceId"
    .parameter "resources"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lbbc/mobile/news/dialog/ReportDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, view:Landroid/view/View;
    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 42
    .local v0, backgroundDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 43
    sget v2, Lbbc/mobile/news/R$id;->reportDialogText:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    sget v2, Lbbc/mobile/news/R$id;->reportDialogIcon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_0
    return-object v1
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/ReportDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    .local v0, resources:Landroid/content/res/Resources;
    sget v1, Lbbc/mobile/news/R$id;->reportDialogClearAttachement:I

    const-string v2, "Clear Attachment"

    sget v3, Lbbc/mobile/news/R$drawable;->clearattachment_selector:I

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/dialog/ReportDialog;->initMenuItem(ILjava/lang/String;ILandroid/content/res/Resources;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/dialog/ReportDialog;->mClearButton:Landroid/view/View;

    .line 32
    sget v1, Lbbc/mobile/news/R$id;->reportDialogVideoButton:I

    const-string v2, "Video"

    sget v3, Lbbc/mobile/news/R$drawable;->playvideo_selector:I

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/dialog/ReportDialog;->initMenuItem(ILjava/lang/String;ILandroid/content/res/Resources;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/dialog/ReportDialog;->mVideoButton:Landroid/view/View;

    .line 33
    sget v1, Lbbc/mobile/news/R$id;->reportDialogAudioButton:I

    const-string v2, "Audio"

    sget v3, Lbbc/mobile/news/R$drawable;->playaudio_selector:I

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/dialog/ReportDialog;->initMenuItem(ILjava/lang/String;ILandroid/content/res/Resources;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/dialog/ReportDialog;->mAudioButton:Landroid/view/View;

    .line 34
    sget v1, Lbbc/mobile/news/R$id;->reportDialogImageButton:I

    const-string v2, "Image"

    sget v3, Lbbc/mobile/news/R$drawable;->imageattachment_selector:I

    invoke-direct {p0, v1, v2, v3, v0}, Lbbc/mobile/news/dialog/ReportDialog;->initMenuItem(ILjava/lang/String;ILandroid/content/res/Resources;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/dialog/ReportDialog;->mImageButton:Landroid/view/View;

    .line 35
    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 51
    iget-object v0, p0, Lbbc/mobile/news/dialog/ReportDialog;->mVideoButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lbbc/mobile/news/dialog/ReportDialog;->mAudioButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lbbc/mobile/news/dialog/ReportDialog;->mImageButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lbbc/mobile/news/dialog/ReportDialog;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.class public Lbbc/mobile/news/view/AVDialogArticleView;
.super Landroid/widget/RelativeLayout;
.source "AVDialogArticleView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArticle:Lbbc/mobile/news/model/Article;

.field private mBufferringSpinner:Landroid/widget/ProgressBar;

.field private mDescriptionView:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mStopButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lbbc/mobile/news/view/AVDialogArticleView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/AVDialogArticleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/AVDialogArticleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private setBufferringState()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mBufferringSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mStopButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    sget-object v0, Lbbc/mobile/news/view/AVDialogArticleView;->TAG:Ljava/lang/String;

    const-string v1, "setBufferringState()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private setPausedState()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mStopButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mBufferringSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    sget-object v0, Lbbc/mobile/news/view/AVDialogArticleView;->TAG:Ljava/lang/String;

    const-string v1, "setPausedState()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private setPlayingState()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mStopButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mBufferringSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    sget-object v0, Lbbc/mobile/news/view/AVDialogArticleView;->TAG:Ljava/lang/String;

    const-string v1, "setPlayingState()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private setState(Lbbc/mobile/news/service/AudioService$AudioStateProvider;)V
    .locals 5
    .parameter "audioState"

    .prologue
    .line 72
    sget-object v2, Lbbc/mobile/news/view/AVDialogArticleView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setState("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getPlayingArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 75
    .local v0, audioArticle:Lbbc/mobile/news/model/Article;
    invoke-virtual {p1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getState()I

    move-result v1

    .line 77
    .local v1, state:I
    iget-object v2, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2}, Lbbc/mobile/news/model/Article;->isAudioArticle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    iget-object v2, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2, v0}, Lbbc/mobile/news/model/Article;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    packed-switch v1, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-direct {p0}, Lbbc/mobile/news/view/AVDialogArticleView;->setBufferringState()V

    goto :goto_0

    .line 84
    :pswitch_1
    invoke-direct {p0}, Lbbc/mobile/news/view/AVDialogArticleView;->setPlayingState()V

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-direct {p0}, Lbbc/mobile/news/view/AVDialogArticleView;->setPausedState()V

    goto :goto_0

    .line 86
    :pswitch_3
    invoke-direct {p0}, Lbbc/mobile/news/view/AVDialogArticleView;->setStoppedState()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lbbc/mobile/news/view/AVDialogArticleView;->setStoppedState()V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mStopButton:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setStoppedState()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 117
    iget-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mStopButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mBufferringSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    sget-object v0, Lbbc/mobile/news/view/AVDialogArticleView;->TAG:Ljava/lang/String;

    const-string v1, "setStoppedState()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method


# virtual methods
.method public getArticle()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    sget v0, Lbbc/mobile/news/R$id;->avDialogBufferringSpinner:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVDialogArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mBufferringSpinner:Landroid/widget/ProgressBar;

    .line 40
    sget v0, Lbbc/mobile/news/R$id;->avDialogIcon:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVDialogArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mImageView:Landroid/widget/ImageView;

    .line 41
    sget v0, Lbbc/mobile/news/R$id;->avDialogDescription:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVDialogArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mDescriptionView:Landroid/widget/TextView;

    .line 42
    sget v0, Lbbc/mobile/news/R$id;->avDialogStopButton:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVDialogArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mStopButton:Landroid/view/View;

    .line 43
    return-void
.end method

.method public setArticle(Lbbc/mobile/news/model/Article;)V
    .locals 3
    .parameter "article"

    .prologue
    .line 47
    iput-object p1, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    .line 49
    iget-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Article;->getAVType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lbbc/mobile/news/view/AVDialogArticleView;->setIconView(Landroid/widget/ImageView;I)V

    .line 50
    iget-object v0, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mDescriptionView:Landroid/widget/TextView;

    iget-object v1, p0, Lbbc/mobile/news/view/AVDialogArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/AVDialogArticleView;->setState(Lbbc/mobile/news/service/AudioService$AudioStateProvider;)V

    .line 53
    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "imageView"
    .parameter "avType"

    .prologue
    .line 62
    invoke-virtual {p0}, Lbbc/mobile/news/view/AVDialogArticleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, resources:Landroid/content/res/Resources;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 64
    sget v1, Lbbc/mobile/news/R$drawable;->playaudio_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    sget v1, Lbbc/mobile/news/R$drawable;->playvideo_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

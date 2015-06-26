.class public Lbbc/mobile/news/dialog/AVDialogNew;
.super Lbbc/mobile/news/dialog/BbcDialog;
.source "AVDialogNew.java"

# interfaces
.implements Lbbc/mobile/news/service/AudioCallback$AudioListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAVArticlesView:Landroid/view/ViewGroup;

.field private mArticles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Article;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

.field private mAudioControl:Lbbc/mobile/news/service/AudioControl;

.field public mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lbbc/mobile/news/dialog/AVDialogNew;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/dialog/AVDialogNew;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Article;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, articles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Article;>;"
    const/4 v1, 0x1

    .line 41
    sget v0, Lbbc/mobile/news/R$layout;->av_dialog_container:I

    invoke-direct {p0, p1, v0}, Lbbc/mobile/news/dialog/BbcDialog;-><init>(Landroid/content/Context;I)V

    .line 223
    new-instance v0, Lbbc/mobile/news/dialog/AVDialogNew$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/dialog/AVDialogNew$1;-><init>(Lbbc/mobile/news/dialog/AVDialogNew;)V

    iput-object v0, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mClickListener:Landroid/view/View$OnClickListener;

    .line 43
    sget v0, Lbbc/mobile/news/R$string;->watchlisten_dialog_title:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/AVDialogNew;->setTitle(I)V

    .line 44
    invoke-virtual {p0, v1}, Lbbc/mobile/news/dialog/AVDialogNew;->setCanceledOnTouchOutside(Z)V

    .line 45
    invoke-virtual {p0, v1}, Lbbc/mobile/news/dialog/AVDialogNew;->setDismissOnLoseFocus(Z)V

    .line 47
    sget v0, Lbbc/mobile/news/R$id;->items:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/AVDialogNew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAVArticlesView:Landroid/view/ViewGroup;

    .line 48
    iput-object p2, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mArticles:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p0, p0}, Lbbc/mobile/news/dialog/AVDialogNew;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    invoke-virtual {p0, p0}, Lbbc/mobile/news/dialog/AVDialogNew;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 52
    invoke-direct {p0}, Lbbc/mobile/news/dialog/AVDialogNew;->populateArticles()V

    .line 53
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/dialog/AVDialogNew;Landroid/content/Context;Lbbc/mobile/news/model/Article;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/dialog/AVDialogNew;->play(Landroid/content/Context;Lbbc/mobile/news/model/Article;)V

    return-void
.end method

.method private createItem(Landroid/content/Context;Lbbc/mobile/news/model/Article;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "article"

    .prologue
    .line 58
    sget v1, Lbbc/mobile/news/R$layout;->av_dialog_article_item:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    check-cast v0, Lbbc/mobile/news/view/AVDialogArticleView;

    .line 59
    .local v0, articleView:Lbbc/mobile/news/view/AVDialogArticleView;
    invoke-virtual {v0, p2}, Lbbc/mobile/news/view/AVDialogArticleView;->setArticle(Lbbc/mobile/news/model/Article;)V

    .line 60
    iget-object v1, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/AVDialogArticleView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v1, Lbbc/mobile/news/R$id;->avDialogStopButton:I

    invoke-virtual {v0, v1}, Lbbc/mobile/news/view/AVDialogArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-object v0
.end method

.method private getIsPlaying()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getPlayingArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    return-object v0
.end method

.method private play(Landroid/content/Context;Lbbc/mobile/news/model/Article;)V
    .locals 2
    .parameter "context"
    .parameter "article"

    .prologue
    .line 67
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getAVType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/dialog/AVDialogNew;->playAudio(Landroid/content/Context;Lbbc/mobile/news/model/Article;)V

    .line 73
    :cond_0
    :goto_0
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/dialog/AVDialogNew;->setState(I)V

    .line 74
    return-void

    .line 69
    :cond_1
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getAVType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 70
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/dialog/AVDialogNew;->playVideo(Landroid/content/Context;Lbbc/mobile/news/model/Article;)V

    goto :goto_0
.end method

.method private playAudio(Landroid/content/Context;Lbbc/mobile/news/model/Article;)V
    .locals 7
    .parameter "context"
    .parameter "article"

    .prologue
    .line 92
    const-string v1, "media_asset"

    invoke-static {p2, v1}, Lbbc/mobile/news/helper/LinkGenerator;->getArticleCounterString(Lbbc/mobile/news/model/Article;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, countername:Ljava/lang/String;
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v6

    .line 94
    .local v6, stats:Lbbc/mobile/news/stats/Stats;
    invoke-virtual {v6}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    .line 96
    .local v0, omniture:Lbbc/mobile/news/stats/Omniture3;
    iget-object v1, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    invoke-interface {v1, p2}, Lbbc/mobile/news/service/AudioControl;->play(Lbbc/mobile/news/model/Article;)V

    .line 99
    :cond_0
    invoke-virtual {v6, p2}, Lbbc/mobile/news/stats/Stats;->logPlayAudioFromAVDialogACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;

    .line 101
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/AVDialogNew;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/stats/Omniture3;->logAudioStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    .line 105
    :cond_1
    return-void
.end method

.method private playVideo(Landroid/content/Context;Lbbc/mobile/news/model/Article;)V
    .locals 7
    .parameter "context"
    .parameter "article"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, videoUrl:Ljava/lang/String;
    const-string v4, "media_asset"

    invoke-static {p2, v4}, Lbbc/mobile/news/helper/LinkGenerator;->getArticleCounterString(Lbbc/mobile/news/model/Article;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, countername:Ljava/lang/String;
    sget-object v4, Lbbc/mobile/news/dialog/AVDialogNew;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onPlayPauseClicked() called article="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p1, p2, v3, v1}, Lbbc/mobile/news/util/IntentFactory;->getVideoActivityIntent(Landroid/content/Context;Lbbc/mobile/news/model/Article;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 116
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 119
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 120
    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 122
    :cond_0
    return-void
.end method

.method private populateArticles()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAVArticlesView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 168
    iget-object v1, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mArticles:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mArticles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 174
    .end local v0           #i:I
    :cond_0
    return-void

    .line 170
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAVArticlesView:Landroid/view/ViewGroup;

    .line 171
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/AVDialogNew;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mArticles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Article;

    invoke-direct {p0, v3, v1}, Lbbc/mobile/news/dialog/AVDialogNew;->createItem(Landroid/content/Context;Lbbc/mobile/news/model/Article;)Landroid/view/View;

    move-result-object v1

    .line 170
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setState(I)V
    .locals 0
    .parameter "audioState"

    .prologue
    .line 178
    invoke-direct {p0}, Lbbc/mobile/news/dialog/AVDialogNew;->populateArticles()V

    .line 179
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

    invoke-virtual {v0, p0}, Lbbc/mobile/news/service/AudioCallback;->unregisterCallback(Lbbc/mobile/news/service/AudioCallback$AudioListener;)V

    .line 219
    :cond_0
    iput-object v1, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

    .line 220
    iput-object v1, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    .line 221
    return-void
.end method

.method public getArticle()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lbbc/mobile/news/dialog/AVDialogNew;->getIsPlaying()Lbbc/mobile/news/model/Article;

    move-result-object v0

    return-object v0
.end method

.method public onBufferingUpdate(Lbbc/mobile/news/model/Article;I)V
    .locals 2
    .parameter "article"
    .parameter "percent"

    .prologue
    .line 160
    sget-object v0, Lbbc/mobile/news/dialog/AVDialogNew;->TAG:Ljava/lang/String;

    const-string v1, "onBufferringUpdate()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lbbc/mobile/news/dialog/AVDialogNew;->setState(I)V

    .line 163
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 206
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/AVDialogNew;->cleanUp()V

    .line 207
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 211
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/AVDialogNew;->cleanUp()V

    .line 212
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"

    .prologue
    .line 141
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/AVDialogNew;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    return-void
.end method

.method public onPause(Lbbc/mobile/news/model/Article;)V
    .locals 1
    .parameter "article"

    .prologue
    .line 154
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbbc/mobile/news/dialog/AVDialogNew;->setState(I)V

    .line 155
    return-void
.end method

.method public onPlay(Lbbc/mobile/news/model/Article;)V
    .locals 2
    .parameter "article"

    .prologue
    .line 147
    sget-object v0, Lbbc/mobile/news/dialog/AVDialogNew;->TAG:Ljava/lang/String;

    const-string v1, "onPlay()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbbc/mobile/news/dialog/AVDialogNew;->setState(I)V

    .line 150
    return-void
.end method

.method public onStop(Lbbc/mobile/news/model/Article;Z)V
    .locals 2
    .parameter "article"
    .parameter "error"

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbbc/mobile/news/dialog/AVDialogNew;->setState(I)V

    .line 134
    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p0}, Lbbc/mobile/news/dialog/AVDialogNew;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbbc/mobile/news/R$string;->av_unknown_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/dialog/AVDialogNew;->onError(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AVDialog can only be shown with: public void show(AudioControl audioControl, AudioCallback audioCallback."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public show(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V
    .locals 2
    .parameter "audioControl"
    .parameter "audioCallback"

    .prologue
    .line 183
    sget-object v0, Lbbc/mobile/news/dialog/AVDialogNew;->TAG:Ljava/lang/String;

    const-string v1, "show()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iput-object p1, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    .line 186
    iput-object p2, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

    .line 188
    iget-object v0, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

    invoke-virtual {v0, p0}, Lbbc/mobile/news/service/AudioCallback;->registerCallback(Lbbc/mobile/news/service/AudioCallback$AudioListener;)V

    .line 190
    invoke-super {p0}, Lbbc/mobile/news/dialog/BbcDialog;->show()V

    .line 192
    sget-object v0, Lbbc/mobile/news/dialog/AVDialogNew;->TAG:Ljava/lang/String;

    const-string v1, "show() registered callback"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/dialog/AVDialogNew;->setState(I)V

    .line 196
    return-void
.end method

.method public stop(Lbbc/mobile/news/model/Article;)V
    .locals 1
    .parameter "article"

    .prologue
    .line 78
    iget-object v0, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lbbc/mobile/news/dialog/AVDialogNew;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    invoke-interface {v0}, Lbbc/mobile/news/service/AudioControl;->stop()V

    .line 81
    :cond_0
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbc/mobile/news/stats/Stats;->logStopAudioFromAVDialogACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;

    .line 83
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/dialog/AVDialogNew;->setState(I)V

    .line 84
    return-void
.end method

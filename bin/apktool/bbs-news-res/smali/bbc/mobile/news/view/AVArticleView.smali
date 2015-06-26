.class public Lbbc/mobile/news/view/AVArticleView;
.super Landroid/widget/ScrollView;
.source "AVArticleView.java"

# interfaces
.implements Lbbc/mobile/news/service/AudioCallback$AudioListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArticle:Lbbc/mobile/news/model/Article;

.field private mAudioControl:Lbbc/mobile/news/service/AudioControl;

.field private mBufferingSpinner:Landroid/widget/ProgressBar;

.field private mBufferingTextView:Landroid/widget/TextView;

.field private mBufferingView:Landroid/view/View;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCopyrightText:Landroid/widget/TextView;

.field private mDateText:Landroid/widget/TextView;

.field private mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

.field private mImageView:Lbbc/mobile/news/view/NewsImageView;

.field private mNowPlayingView:Landroid/widget/TextView;

.field private mPauseButton:Landroid/view/View;

.field private mPlayButton:Landroid/view/View;

.field private mRewindButton:Landroid/view/View;

.field private mStopButton:Landroid/view/View;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mVideoStatsCounterName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lbbc/mobile/news/view/AVArticleView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/AVArticleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/AVArticleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 287
    new-instance v0, Lbbc/mobile/news/view/AVArticleView$1;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/AVArticleView$1;-><init>(Lbbc/mobile/news/view/AVArticleView;)V

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/view/AVArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    invoke-direct {p0}, Lbbc/mobile/news/view/AVArticleView;->onPlayClicked()V

    return-void
.end method

.method static synthetic access$1(Lbbc/mobile/news/view/AVArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    invoke-direct {p0}, Lbbc/mobile/news/view/AVArticleView;->onStopClicked()V

    return-void
.end method

.method private initAvType(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 125
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mStopButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 129
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mStopButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mPlayButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mStopButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private onPlayClicked()V
    .locals 6

    .prologue
    .line 237
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v3

    iget-object v4, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v3, v4}, Lbbc/mobile/news/stats/Stats;->logPlayAVFromWatchAndListenACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;

    .line 239
    iget-object v3, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v3}, Lbbc/mobile/news/model/Article;->getAVType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    if-eqz v3, :cond_2

    .line 241
    invoke-virtual {p0}, Lbbc/mobile/news/view/AVArticleView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/BaseActivity;

    .line 243
    .local v0, activity:Lbbc/mobile/news/BaseActivity;
    invoke-static {v0}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    invoke-static {v0}, Lbbc/mobile/news/dialog/SystemDialog;->showNoConnection(Landroid/app/Activity;)V

    .line 272
    .end local v0           #activity:Lbbc/mobile/news/BaseActivity;
    :cond_0
    :goto_0
    return-void

    .line 247
    .restart local v0       #activity:Lbbc/mobile/news/BaseActivity;
    :cond_1
    iget-object v3, p0, Lbbc/mobile/news/view/AVArticleView;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    if-eqz v3, :cond_0

    .line 249
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v3

    iget-object v4, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    const-string v5, "story"

    invoke-virtual {v3, v4, v5, v0}, Lbbc/mobile/news/stats/Stats;->logArticlePAGEVIEW(Lbbc/mobile/news/model/Article;Ljava/lang/String;Landroid/content/Context;)Lbbc/mobile/news/stats/Stats;

    .line 255
    iget-object v3, p0, Lbbc/mobile/news/view/AVArticleView;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    iget-object v4, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-interface {v3, v4}, Lbbc/mobile/news/service/AudioControl;->play(Lbbc/mobile/news/model/Article;)V

    goto :goto_0

    .line 259
    .end local v0           #activity:Lbbc/mobile/news/BaseActivity;
    :cond_2
    iget-object v3, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v3}, Lbbc/mobile/news/model/Article;->getAVType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    if-eqz v3, :cond_0

    .line 261
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v3

    invoke-virtual {v3}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lbbc/mobile/news/view/AVArticleView;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    if-eqz v3, :cond_3

    .line 262
    iget-object v3, p0, Lbbc/mobile/news/view/AVArticleView;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    invoke-interface {v3}, Lbbc/mobile/news/service/AudioControl;->stop()V

    .line 264
    :cond_3
    iget-object v3, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v3}, Lbbc/mobile/news/model/Article;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, videoUrl:Ljava/lang/String;
    sget-object v3, Lbbc/mobile/news/view/AVArticleView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPlayPauseClicked() called article="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v5}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lbbc/mobile/news/view/AVArticleView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    iget-object v5, p0, Lbbc/mobile/news/view/AVArticleView;->mVideoStatsCounterName:Ljava/lang/String;

    invoke-static {v3, v4, v2, v5}, Lbbc/mobile/news/util/IntentFactory;->getVideoActivityIntent(Landroid/content/Context;Lbbc/mobile/news/model/Article;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 269
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lbbc/mobile/news/view/AVArticleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onStopClicked()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/stats/Stats;->logStopAVFromWatchAndListenACTION(Lbbc/mobile/news/model/Article;)Lbbc/mobile/news/stats/Stats;

    .line 279
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getAVType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    invoke-interface {v0}, Lbbc/mobile/news/service/AudioControl;->stop()V

    .line 285
    :cond_0
    return-void
.end method

.method private setBufferingView(ZLjava/lang/String;Z)V
    .locals 3
    .parameter "show"
    .parameter "message"
    .parameter "showSpinner"

    .prologue
    const/4 v2, 0x0

    .line 139
    if-eqz p1, :cond_2

    .line 141
    if-eqz p2, :cond_0

    .line 142
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mBufferingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    if-eqz p3, :cond_1

    .line 147
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mBufferingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 152
    :goto_1
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mBufferingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :goto_2
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mBufferingTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mBufferingSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 155
    :cond_2
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mBufferingView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private setBufferringState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 327
    invoke-virtual {p0}, Lbbc/mobile/news/view/AVArticleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbbc/mobile/news/R$string;->av_buffering_audio:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0, v2}, Lbbc/mobile/news/view/AVArticleView;->setBufferingView(ZLjava/lang/String;Z)V

    .line 328
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/view/AVArticleView;->setNowPlaying(ZLjava/lang/String;)V

    .line 329
    return-void
.end method

.method private setImage(Ljava/net/URL;Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 4
    .parameter "thumbnailUrl"
    .parameter "imageHandler"

    .prologue
    .line 181
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 183
    invoke-virtual {p0}, Lbbc/mobile/news/view/AVArticleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 184
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, strThumbnailUrl:Ljava/lang/String;
    invoke-static {v1}, Lbbc/mobile/news/model/WSUrlToResource;->hasUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lbbc/mobile/news/view/AVArticleView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-static {v1}, Lbbc/mobile/news/model/WSUrlToResource;->getUrl(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbc/mobile/news/view/NewsImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    iget-object v2, p0, Lbbc/mobile/news/view/AVArticleView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbbc/mobile/news/view/NewsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 190
    iget-object v2, p0, Lbbc/mobile/news/view/AVArticleView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbbc/mobile/news/view/NewsImageView;->setDrawEnabled(Z)V

    .line 202
    .end local v0           #resources:Landroid/content/res/Resources;
    .end local v1           #strThumbnailUrl:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v0       #resources:Landroid/content/res/Resources;
    .restart local v1       #strThumbnailUrl:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lbbc/mobile/news/view/AVArticleView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v2}, Lbbc/mobile/news/view/NewsImageView;->getUrl()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbbc/mobile/news/view/AVArticleView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v2}, Lbbc/mobile/news/view/NewsImageView;->isShowingPlaceholder()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    :cond_2
    iget-object v2, p0, Lbbc/mobile/news/view/AVArticleView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v2, p1, p2}, Lbbc/mobile/news/view/NewsImageView;->setImageURLxx(Ljava/net/URL;Lbbc/mobile/news/feed/ImageHandler;)V

    goto :goto_0

    .line 195
    :cond_3
    iget-object v2, p0, Lbbc/mobile/news/view/AVArticleView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v2}, Lbbc/mobile/news/view/NewsImageView;->getUrl()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbbc/mobile/news/view/AVArticleView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v2}, Lbbc/mobile/news/view/NewsImageView;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    iget-object v2, p0, Lbbc/mobile/news/view/AVArticleView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    invoke-virtual {v2, p1, p2}, Lbbc/mobile/news/view/NewsImageView;->setImageURLxx(Ljava/net/URL;Lbbc/mobile/news/feed/ImageHandler;)V

    goto :goto_0

    .line 200
    .end local v0           #resources:Landroid/content/res/Resources;
    .end local v1           #strThumbnailUrl:Ljava/lang/String;
    :cond_4
    sget-object v2, Lbbc/mobile/news/view/AVArticleView;->TAG:Ljava/lang/String;

    const-string v3, "setImage called with null url or imageHandler"

    invoke-static {v2, v3}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNowPlaying(ZLjava/lang/String;)V
    .locals 2
    .parameter "show"
    .parameter "message"

    .prologue
    .line 161
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mNowPlayingView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 163
    :cond_0
    if-eqz p1, :cond_2

    .line 165
    if-eqz p2, :cond_1

    .line 166
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mNowPlayingView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_1
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mNowPlayingView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mNowPlayingView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 173
    :cond_2
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mNowPlayingView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPausedState()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lbbc/mobile/news/view/AVArticleView;->setBufferingView(ZLjava/lang/String;Z)V

    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0}, Lbbc/mobile/news/view/AVArticleView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$string;->av_paused_audio:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/view/AVArticleView;->setNowPlaying(ZLjava/lang/String;)V

    .line 344
    return-void
.end method

.method private setPlayingState()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1}, Lbbc/mobile/news/view/AVArticleView;->setBufferingView(ZLjava/lang/String;Z)V

    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0}, Lbbc/mobile/news/view/AVArticleView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$string;->av_now_playing_audio:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/view/AVArticleView;->setNowPlaying(ZLjava/lang/String;)V

    .line 336
    return-void
.end method

.method private setState(Lbbc/mobile/news/service/AudioService$AudioStateProvider;)V
    .locals 3
    .parameter "audioState"

    .prologue
    .line 306
    invoke-virtual {p1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getPlayingArticle()Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 307
    .local v0, audioArticle:Lbbc/mobile/news/model/Article;
    invoke-virtual {p1}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getState()I

    move-result v1

    .line 309
    .local v1, state:I
    iget-object v2, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2, v0}, Lbbc/mobile/news/model/Article;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    packed-switch v1, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 313
    :pswitch_0
    invoke-direct {p0}, Lbbc/mobile/news/view/AVArticleView;->setBufferringState()V

    goto :goto_0

    .line 314
    :pswitch_1
    invoke-direct {p0}, Lbbc/mobile/news/view/AVArticleView;->setPlayingState()V

    goto :goto_0

    .line 315
    :pswitch_2
    invoke-direct {p0}, Lbbc/mobile/news/view/AVArticleView;->setPausedState()V

    goto :goto_0

    .line 316
    :pswitch_3
    invoke-direct {p0}, Lbbc/mobile/news/view/AVArticleView;->setStoppedState()V

    goto :goto_0

    .line 321
    :cond_0
    invoke-direct {p0}, Lbbc/mobile/news/view/AVArticleView;->setStoppedState()V

    goto :goto_0

    .line 311
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
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 348
    invoke-direct {p0, v0, v1, v0}, Lbbc/mobile/news/view/AVArticleView;->setBufferingView(ZLjava/lang/String;Z)V

    .line 349
    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/view/AVArticleView;->setNowPlaying(ZLjava/lang/String;)V

    .line 350
    return-void
.end method


# virtual methods
.method public getArticle()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    return-object v0
.end method

.method public onBufferingUpdate(Lbbc/mobile/news/model/Article;I)V
    .locals 4
    .parameter "article"
    .parameter "percent"

    .prologue
    .line 387
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->setState(Lbbc/mobile/news/service/AudioService$AudioStateProvider;)V

    .line 389
    if-lez p2, :cond_0

    .line 390
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mBufferingTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbbc/mobile/news/view/AVArticleView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lbbc/mobile/news/R$string;->av_buffering_audio:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"

    .prologue
    .line 382
    invoke-virtual {p0}, Lbbc/mobile/news/view/AVArticleView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 70
    sget v0, Lbbc/mobile/news/R$id;->avArticleTitleView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mTitleView:Landroid/widget/TextView;

    .line 71
    sget v0, Lbbc/mobile/news/R$id;->avArticleDateText:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mDateText:Landroid/widget/TextView;

    .line 72
    sget v0, Lbbc/mobile/news/R$id;->avArticleImageView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/view/NewsImageView;

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mImageView:Lbbc/mobile/news/view/NewsImageView;

    .line 75
    sget v0, Lbbc/mobile/news/R$id;->avArticlePlayButton:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mPlayButton:Landroid/view/View;

    .line 76
    sget v0, Lbbc/mobile/news/R$id;->avArticleRewindButton:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mRewindButton:Landroid/view/View;

    .line 77
    sget v0, Lbbc/mobile/news/R$id;->avArticlePauseButton:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mPauseButton:Landroid/view/View;

    .line 78
    sget v0, Lbbc/mobile/news/R$id;->avArticleStopButton:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mStopButton:Landroid/view/View;

    .line 80
    sget v0, Lbbc/mobile/news/R$id;->avArticleNowPlayingText:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mNowPlayingView:Landroid/widget/TextView;

    .line 81
    sget v0, Lbbc/mobile/news/R$id;->avArticleSummaryText:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mSummaryText:Landroid/widget/TextView;

    .line 82
    sget v0, Lbbc/mobile/news/R$id;->avBufferringView:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mBufferingView:Landroid/view/View;

    .line 83
    sget v0, Lbbc/mobile/news/R$id;->avBufferingSpinner:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mBufferingSpinner:Landroid/widget/ProgressBar;

    .line 84
    sget v0, Lbbc/mobile/news/R$id;->avBufferringText:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mBufferingTextView:Landroid/widget/TextView;

    .line 85
    sget v0, Lbbc/mobile/news/R$id;->avCopyrightText:I

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mCopyrightText:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mPlayButton:Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/AVArticleView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mRewindButton:Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/AVArticleView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mPauseButton:Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/AVArticleView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mStopButton:Landroid/view/View;

    iget-object v1, p0, Lbbc/mobile/news/view/AVArticleView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mCopyrightText:Landroid/widget/TextView;

    invoke-static {}, Lbbc/mobile/news/util/CopyrightHelper;->getInstance()Lbbc/mobile/news/util/CopyrightHelper;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/CopyrightHelper;->getCopyrightText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public onPause(Lbbc/mobile/news/model/Article;)V
    .locals 1
    .parameter "article"

    .prologue
    .line 377
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->setState(Lbbc/mobile/news/service/AudioService$AudioStateProvider;)V

    .line 378
    return-void
.end method

.method public onPlay(Lbbc/mobile/news/model/Article;)V
    .locals 1
    .parameter "article"

    .prologue
    .line 372
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->setState(Lbbc/mobile/news/service/AudioService$AudioStateProvider;)V

    .line 373
    return-void
.end method

.method public onStop(Lbbc/mobile/news/model/Article;Z)V
    .locals 2
    .parameter "article"
    .parameter "error"

    .prologue
    .line 363
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->setState(Lbbc/mobile/news/service/AudioService$AudioStateProvider;)V

    .line 365
    if-eqz p2, :cond_0

    .line 366
    invoke-virtual {p0}, Lbbc/mobile/news/view/AVArticleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lbbc/mobile/news/R$string;->av_unknown_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->onError(Ljava/lang/String;)V

    .line 368
    :cond_0
    return-void
.end method

.method public setArticle(Lbbc/mobile/news/model/Article;)V
    .locals 4
    .parameter "article"

    .prologue
    .line 102
    if-eqz p1, :cond_1

    .line 104
    iput-object p1, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    .line 105
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mDateText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mDateText:Landroid/widget/TextView;

    iget-object v1, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {p0}, Lbbc/mobile/news/view/AVArticleView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lbbc/mobile/news/model/Article;->getDate(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getThumbnailAsUrl()Ljava/net/URL;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/view/AVArticleView;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    invoke-direct {p0, v0, v1}, Lbbc/mobile/news/view/AVArticleView;->setImage(Ljava/net/URL;Lbbc/mobile/news/feed/ImageHandler;)V

    .line 111
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mSummaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Article;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    const-string v1, "media_asset"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/LinkGenerator;->getArticleCounterString(Lbbc/mobile/news/model/Article;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mVideoStatsCounterName:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lbbc/mobile/news/view/AVArticleView;->mArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getAVType()I

    move-result v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->initAvType(I)V

    .line 116
    invoke-static {}, Lbbc/mobile/news/service/AudioService$AudioStateProvider;->getInstance()Lbbc/mobile/news/service/AudioService$AudioStateProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/AVArticleView;->setState(Lbbc/mobile/news/service/AudioService$AudioStateProvider;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_1
    sget-object v0, Lbbc/mobile/news/view/AVArticleView;->TAG:Ljava/lang/String;

    const-string v1, "setArticle with null article"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioControl(Lbbc/mobile/news/service/AudioControl;)V
    .locals 0
    .parameter "audioControl"

    .prologue
    .line 353
    iput-object p1, p0, Lbbc/mobile/news/view/AVArticleView;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    .line 354
    return-void
.end method

.method public setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 0
    .parameter "imageHandler"

    .prologue
    .line 97
    iput-object p1, p0, Lbbc/mobile/news/view/AVArticleView;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    .line 98
    return-void
.end method

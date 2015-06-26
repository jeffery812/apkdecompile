.class public Lbbc/mobile/news/video/VideoActivity;
.super Lbbc/mobile/news/BaseActivity;
.source "VideoActivity.java"


# static fields
.field private static final EXTRA_REQUEST:Ljava/lang/String; = "extraRequest"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mConfig:Lbbc/mobile/news/model/Config;

.field private mFeedManager:Lbbc/mobile/news/feed/FeedManager;

.field private mIsLive:Z

.field private mIsPlaylistUrl:Z

.field private mPlaylistUrl:Ljava/lang/String;

.field private mVideoFragment:Lbbc/mobile/news/video/VideoFragment;

.field private mVideoRequest:Lbbc/mobile/news/video/VideoRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lbbc/mobile/news/video/VideoActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/video/VideoActivity;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Lbbc/mobile/news/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Lbbc/mobile/news/feed/FeedManager;

    const-string v1, "Video-FeedManager"

    invoke-direct {v0, v1}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbbc/mobile/news/video/VideoActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    .line 50
    iput-boolean v2, p0, Lbbc/mobile/news/video/VideoActivity;->mIsLive:Z

    .line 52
    iput-boolean v2, p0, Lbbc/mobile/news/video/VideoActivity;->mIsPlaylistUrl:Z

    .line 39
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/video/VideoActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lbbc/mobile/news/video/VideoActivity;->requestConfig(I)V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Lbbc/mobile/news/video/VideoRequest;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "videoRequest"

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lbbc/mobile/news/video/VideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    const-string v1, "extraRequest"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    return-object v0
.end method

.method private doStats()V
    .locals 9

    .prologue
    .line 257
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 258
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "counterName"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, counterName:Ljava/lang/String;
    const-string v1, "category"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, categoryName:Ljava/lang/String;
    const-string v1, "headline"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, headline:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const-string v4, "unknown-video-countername"

    .line 264
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    const-string v2, "unknown-category"

    .line 267
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    const-string v3, "unknown-headline"

    .line 270
    :cond_2
    invoke-static {p0}, Lbbc/mobile/news/helper/ConnectivityStatus;->getConnectionTypeAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, connectivity:Ljava/lang/String;
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->get()Lbbc/mobile/news/util/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lbbc/mobile/news/util/GlobalSettings;->getStats()Lbbc/mobile/news/stats/Stats;

    move-result-object v8

    .line 272
    .local v8, stats:Lbbc/mobile/news/stats/Stats;
    if-eqz v8, :cond_3

    .line 273
    iget-boolean v1, p0, Lbbc/mobile/news/video/VideoActivity;->mIsLive:Z

    if-eqz v1, :cond_4

    .line 274
    invoke-virtual {v8, v4, v6}, Lbbc/mobile/news/stats/Stats;->logPlayLiveVideoACTION(Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;

    .line 283
    :cond_3
    :goto_0
    return-void

    .line 276
    :cond_4
    invoke-virtual {v8, v4, v6}, Lbbc/mobile/news/stats/Stats;->logPlayInStoryVideoACTION(Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Stats;

    .line 277
    invoke-virtual {v8}, Lbbc/mobile/news/stats/Stats;->getOmniture()Lbbc/mobile/news/stats/Omniture3;

    move-result-object v0

    .line 278
    .local v0, omniture:Lbbc/mobile/news/stats/Omniture3;
    if-eqz v0, :cond_3

    move-object v1, p0

    move-object v5, v4

    .line 279
    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/stats/Omniture3;->logVideoStarted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lbbc/mobile/news/stats/Omniture3;

    goto :goto_0
.end method

.method private genericRequest(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 190
    iget-object v0, p0, Lbbc/mobile/news/video/VideoActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 191
    iget-object v0, p0, Lbbc/mobile/news/video/VideoActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    new-instance v2, Lbbc/mobile/news/model/Feed;

    const-string v1, "text"

    const/4 v3, -0x7

    invoke-direct {v2, v1, v3, p1}, Lbbc/mobile/news/model/Feed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lbbc/mobile/news/video/VideoActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/FeedManager;->addTextFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 192
    iget-object v0, p0, Lbbc/mobile/news/video/VideoActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 193
    return-void
.end method

.method private requestConfig(I)V
    .locals 3
    .parameter "strategy"

    .prologue
    .line 125
    iget-object v0, p0, Lbbc/mobile/news/video/VideoActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->clear()V

    .line 126
    iget-object v0, p0, Lbbc/mobile/news/video/VideoActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    iget-object v1, p0, Lbbc/mobile/news/video/VideoActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, p1, v2}, Lbbc/mobile/news/feed/FeedManager;->addConfigFeed(Landroid/content/Context;Landroid/os/Handler;II)V

    .line 127
    iget-object v0, p0, Lbbc/mobile/news/video/VideoActivity;->mFeedManager:Lbbc/mobile/news/feed/FeedManager;

    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 128
    return-void
.end method

.method private startNativePlayback(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    const v3, 0x1020002

    .line 242
    sget-object v1, Lbbc/mobile/news/video/VideoActivity;->TAG:Ljava/lang/String;

    const-string v2, "startNativePlayback()"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lbbc/mobile/news/video/VideoActivity;->mVideoRequest:Lbbc/mobile/news/video/VideoRequest;

    invoke-virtual {v1, p1}, Lbbc/mobile/news/video/VideoRequest;->setContentUrl(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 246
    .local v0, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/video/VideoFragment;

    iput-object v1, p0, Lbbc/mobile/news/video/VideoActivity;->mVideoFragment:Lbbc/mobile/news/video/VideoFragment;

    .line 247
    iget-object v1, p0, Lbbc/mobile/news/video/VideoActivity;->mVideoFragment:Lbbc/mobile/news/video/VideoFragment;

    if-nez v1, :cond_0

    .line 248
    sget-object v1, Lbbc/mobile/news/video/VideoActivity;->TAG:Ljava/lang/String;

    const-string v2, "creating new VideoFragment instance"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lbbc/mobile/news/video/VideoActivity;->mVideoRequest:Lbbc/mobile/news/video/VideoRequest;

    invoke-static {v1}, Lbbc/mobile/news/video/VideoFragment;->newInstance(Lbbc/mobile/news/video/VideoRequest;)Lbbc/mobile/news/video/VideoFragment;

    move-result-object v1

    iput-object v1, p0, Lbbc/mobile/news/video/VideoActivity;->mVideoFragment:Lbbc/mobile/news/video/VideoFragment;

    .line 250
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lbbc/mobile/news/video/VideoActivity;->mVideoFragment:Lbbc/mobile/news/video/VideoFragment;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 252
    :cond_0
    invoke-direct {p0}, Lbbc/mobile/news/video/VideoActivity;->doStats()V

    .line 253
    return-void
.end method


# virtual methods
.method public getConfig()Lbbc/mobile/news/model/Config;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lbbc/mobile/news/video/VideoActivity;->mConfig:Lbbc/mobile/news/model/Config;

    return-object v0
.end method

.method protected loadPlaylistUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 173
    if-eqz p1, :cond_1

    .line 174
    sget-object v0, Lbbc/mobile/news/video/VideoActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadPlaylistUrl : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean v0, p0, Lbbc/mobile/news/video/VideoActivity;->mIsLive:Z

    if-nez v0, :cond_0

    .line 177
    const-string v0, "%7Bbandwidth%7D"

    const-string v1, "wifi"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 178
    const-string v0, "%7bbandwidth%7d"

    const-string v1, "wifi"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    const-string v0, "\\{bandwidth\\}"

    const-string v1, "wifi"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lbbc/mobile/news/video/VideoActivity;->genericRequest(Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_1
    sget-object v0, Lbbc/mobile/news/video/VideoActivity;->TAG:Ljava/lang/String;

    const-string v1, "Passed url was null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onConfigFailed(Lbbc/mobile/news/model/Config;II)V
    .locals 3
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 166
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    sget v1, Lbbc/mobile/news/R$string;->toast_no_connection:I

    invoke-virtual {p0, v1}, Lbbc/mobile/news/video/VideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 166
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->finish()V

    .line 169
    return-void
.end method

.method public onConfigSuccess(Lbbc/mobile/news/model/Config;II)V
    .locals 6
    .parameter "config"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    const/16 v4, 0x2f

    const/4 v5, 0x0

    .line 133
    iput-object p1, p0, Lbbc/mobile/news/video/VideoActivity;->mConfig:Lbbc/mobile/news/model/Config;

    .line 134
    iget-object v1, p0, Lbbc/mobile/news/video/VideoActivity;->mConfig:Lbbc/mobile/news/model/Config;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbbc/mobile/news/video/VideoActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Config;->getFeeds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 135
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isWorldWide()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lbbc/mobile/app/NewsApplication;

    .line 137
    .local v0, newsApplication:Lbbc/mobile/app/NewsApplication;
    iget-object v1, p0, Lbbc/mobile/news/video/VideoActivity;->mVideoRequest:Lbbc/mobile/news/video/VideoRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lbbc/mobile/news/video/VideoActivity;->mConfig:Lbbc/mobile/news/model/Config;

    invoke-virtual {v3}, Lbbc/mobile/news/model/Config;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 140
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbbc/mobile/news/R$bool;->isTablet:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 139
    invoke-virtual {v0, v3}, Lbbc/mobile/app/NewsApplication;->getUnitString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Lbbc/mobile/news/video/VideoRequest;->setAdUnitId(Ljava/lang/String;)V

    .line 143
    .end local v0           #newsApplication:Lbbc/mobile/app/NewsApplication;
    :cond_0
    sget-object v1, Lbbc/mobile/news/video/VideoActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "About to read video URL : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbbc/mobile/news/video/VideoActivity;->mPlaylistUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " indirect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lbbc/mobile/news/video/VideoActivity;->mIsPlaylistUrl:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-boolean v1, p0, Lbbc/mobile/news/video/VideoActivity;->mIsPlaylistUrl:Z

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lbbc/mobile/news/video/VideoActivity;->mPlaylistUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lbbc/mobile/news/video/VideoActivity;->loadPlaylistUrl(Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/video/VideoActivity;->mPlaylistUrl:Ljava/lang/String;

    invoke-virtual {p0, v1, v5, v5}, Lbbc/mobile/news/video/VideoActivity;->onTextSuccess(Ljava/lang/String;II)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 152
    sget v2, Lbbc/mobile/news/R$string;->toast_no_connection:I

    invoke-virtual {p0, v2}, Lbbc/mobile/news/video/VideoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 153
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 64
    iput-boolean v2, p0, Lbbc/mobile/news/video/VideoActivity;->mHasActionBar:Z

    .line 65
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget-object v0, Lbbc/mobile/news/video/VideoActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraRequest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lbbc/mobile/news/video/VideoActivity;->TAG:Ljava/lang/String;

    const-string v1, "No VideoRequest has been specified!"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->finish()V

    .line 121
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraRequest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/video/VideoRequest;

    iput-object v0, p0, Lbbc/mobile/news/video/VideoActivity;->mVideoRequest:Lbbc/mobile/news/video/VideoRequest;

    .line 76
    invoke-static {p0}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const-string v0, "No network"

    .line 78
    const-string v1, "This content cannot be played. Please try again later."

    .line 79
    const/4 v2, 0x1

    .line 77
    invoke-static {p0, v0, v1, v2}, Lbbc/mobile/news/dialog/SystemDialog;->showStatic(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isLive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbbc/mobile/news/video/VideoActivity;->mIsLive:Z

    .line 84
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bbc.avplayer.url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/video/VideoActivity;->mPlaylistUrl:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bbc.avplayer.isplaylist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbbc/mobile/news/video/VideoActivity;->mIsPlaylistUrl:Z

    .line 87
    iget-object v0, p0, Lbbc/mobile/news/video/VideoActivity;->mPlaylistUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->finish()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {p0}, Lbbc/mobile/news/util/GlobalSettings;->hasDataWarningBeenShown(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    sget v1, Lbbc/mobile/news/R$string;->video_warning_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 96
    sget v1, Lbbc/mobile/news/R$string;->video_warning_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    sget v1, Lbbc/mobile/news/R$string;->play:I

    new-instance v2, Lbbc/mobile/news/video/VideoActivity$1;

    invoke-direct {v2, p0}, Lbbc/mobile/news/video/VideoActivity$1;-><init>(Lbbc/mobile/news/video/VideoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    sget v1, Lbbc/mobile/news/R$string;->cancel:I

    new-instance v2, Lbbc/mobile/news/video/VideoActivity$2;

    invoke-direct {v2, p0}, Lbbc/mobile/news/video/VideoActivity$2;-><init>(Lbbc/mobile/news/video/VideoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 119
    :cond_3
    invoke-direct {p0, v2}, Lbbc/mobile/news/video/VideoActivity;->requestConfig(I)V

    goto/16 :goto_0
.end method

.method public onTextFailed()V
    .locals 3

    .prologue
    .line 236
    sget v0, Lbbc/mobile/news/R$string;->video_error_title:I

    .line 237
    sget v1, Lbbc/mobile/news/R$string;->video_error_message:I

    const/4 v2, 0x1

    .line 236
    invoke-static {p0, v0, v1, v2}, Lbbc/mobile/news/dialog/SystemDialog;->showStatic(Landroid/app/Activity;IIZ)V

    .line 238
    return-void
.end method

.method public onTextSuccess(Ljava/lang/String;II)V
    .locals 8
    .parameter "text"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    .line 198
    iget-boolean v5, p0, Lbbc/mobile/news/video/VideoActivity;->mIsLive:Z

    if-eqz v5, :cond_0

    .line 200
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    .local v3, json:Lorg/json/JSONObject;
    const-string v5, "media"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 202
    .local v0, array:Lorg/json/JSONObject;
    const-string v5, "connection"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 203
    .local v1, connection:Lorg/json/JSONObject;
    const-string v5, "href"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, url:Ljava/lang/String;
    invoke-direct {p0, v4}, Lbbc/mobile/news/video/VideoActivity;->startNativePlayback(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v0           #array:Lorg/json/JSONObject;
    .end local v1           #connection:Lorg/json/JSONObject;
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v2

    .line 208
    .local v2, e:Lorg/json/JSONException;
    sget-object v5, Lbbc/mobile/news/video/VideoActivity;->TAG:Ljava/lang/String;

    const-string v6, "JSONException when parsing Mediaselector reponse"

    invoke-static {v5, v6, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    sget v5, Lbbc/mobile/news/R$string;->video_error_title:I

    .line 210
    sget v6, Lbbc/mobile/news/R$string;->video_error_message:I

    const/4 v7, 0x1

    .line 209
    invoke-static {p0, v5, v6, v7}, Lbbc/mobile/news/dialog/SystemDialog;->showStatic(Landroid/app/Activity;IIZ)V

    .line 211
    invoke-virtual {p0}, Lbbc/mobile/news/video/VideoActivity;->finish()V

    goto :goto_0

    .line 216
    .end local v2           #e:Lorg/json/JSONException;
    :cond_0
    const-string v5, "\\s+$"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    const-string v5, "^[a-zA-Z0-9]+://.*"

    invoke-virtual {p1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 224
    :cond_1
    const-string v5, "www.bbc.co.uk/worldservice"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 226
    invoke-direct {p0, p1}, Lbbc/mobile/news/video/VideoActivity;->genericRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0, p1}, Lbbc/mobile/news/video/VideoActivity;->startNativePlayback(Ljava/lang/String;)V

    goto :goto_0
.end method

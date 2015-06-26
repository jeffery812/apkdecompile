.class public Lbbc/mobile/news/adapter/ArticlePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ArticlePagerAdapter.java"


# static fields
.field private static final CACHED_ENABLED:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArticleView:[Landroid/view/View;

.field private mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

.field private mAudioControl:Lbbc/mobile/news/service/AudioControl;

.field private mCacheLock:Ljava/lang/Object;

.field private mCategory:Lbbc/mobile/news/model/Category;

.field private mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

.field private mOrientation:Lbbc/mobile/news/model/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mArticleView:[Landroid/view/View;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mCacheLock:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method public clearCached()V
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mArticleView:[Landroid/view/View;

    array-length v0, v1

    .local v0, i:I
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 236
    const-string v1, "SPECIAL"

    const-string v2, "Cleared CACHE"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void

    .line 232
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mArticleView:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mArticleView:[Landroid/view/View;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 139
    instance-of v1, p3, Lbbc/mobile/news/view/AVArticleView;

    if-eqz v1, :cond_0

    move-object v0, p3

    .line 140
    check-cast v0, Lbbc/mobile/news/view/AVArticleView;

    .line 141
    .local v0, articleView:Lbbc/mobile/news/view/AVArticleView;
    iget-object v1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

    invoke-virtual {v1, v0}, Lbbc/mobile/news/service/AudioCallback;->unregisterCallback(Lbbc/mobile/news/service/AudioCallback$AudioListener;)V

    .line 159
    .end local v0           #articleView:Lbbc/mobile/news/view/AVArticleView;
    :cond_0
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lbbc/mobile/news/model/Article;
    .locals 4
    .parameter "position"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, item:Lbbc/mobile/news/model/Article;
    iget-object v1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 85
    iget-object v1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v1, p1}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 87
    :cond_0
    if-eqz v0, :cond_1

    .line 88
    sget-object v1, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getItem("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-object v0

    .line 90
    :cond_1
    sget-object v1, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getItem("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 126
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateAVCategory(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter "layoutInflator"
    .parameter "container"
    .parameter "position"

    .prologue
    .line 164
    .line 165
    sget v2, Lbbc/mobile/news/R$layout;->av_article_view_layout:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 164
    check-cast v1, Lbbc/mobile/news/view/AVArticleView;

    .line 167
    .local v1, articleView:Lbbc/mobile/news/view/AVArticleView;
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {p0, p3}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->getItem(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 170
    .local v0, article:Lbbc/mobile/news/model/Article;
    if-eqz v0, :cond_1

    .line 171
    iget-object v2, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    invoke-virtual {v1, v2}, Lbbc/mobile/news/view/AVArticleView;->setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V

    .line 174
    :cond_0
    invoke-virtual {v1, v0}, Lbbc/mobile/news/view/AVArticleView;->setArticle(Lbbc/mobile/news/model/Article;)V

    .line 175
    iget-object v2, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    invoke-virtual {v1, v2}, Lbbc/mobile/news/view/AVArticleView;->setAudioControl(Lbbc/mobile/news/service/AudioControl;)V

    .line 176
    iget-object v2, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

    invoke-virtual {v2, v1}, Lbbc/mobile/news/service/AudioCallback;->registerCallback(Lbbc/mobile/news/service/AudioCallback$AudioListener;)V

    .line 181
    :cond_1
    return-object v1
.end method

.method public instantiateCategory(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .parameter "layoutInflator"
    .parameter "container"
    .parameter "position"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 201
    .local v1, articleView:Landroid/view/View;
    if-nez v1, :cond_0

    .line 202
    sget v3, Lbbc/mobile/news/R$layout;->article_webview_layout:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 203
    const-string v3, "SPECIAL"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Creating new articleView @ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    invoke-virtual {p0, p3}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->getItem(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 207
    .local v0, article:Lbbc/mobile/news/model/Article;
    if-eqz v0, :cond_1

    .line 208
    sget v3, Lbbc/mobile/news/R$id;->articleWebView:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lbbc/mobile/news/view/ArticleWebView;

    .line 209
    .local v2, webView:Lbbc/mobile/news/view/ArticleWebView;
    const-string v3, "story"

    invoke-static {v0, v3}, Lbbc/mobile/news/helper/LinkGenerator;->getArticleCounterString(Lbbc/mobile/news/model/Article;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbc/mobile/news/view/ArticleWebView;->setVideoStatsCounterName(Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mOrientation:Lbbc/mobile/news/model/Orientation;

    invoke-virtual {v2, v3}, Lbbc/mobile/news/view/ArticleWebView;->setOrientation(Lbbc/mobile/news/model/Orientation;)V

    .line 211
    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getContentHTML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p3}, Lbbc/mobile/news/view/ArticleWebView;->loadContent(Ljava/lang/String;Lbbc/mobile/news/model/Article;I)V

    .line 215
    sget-object v3, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loaded Content: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .end local v2           #webView:Lbbc/mobile/news/view/ArticleWebView;
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    return-object v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .parameter "container"
    .parameter "position"

    .prologue
    .line 106
    invoke-virtual {p0, p2}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->getItem(I)Lbbc/mobile/news/model/Article;

    move-result-object v2

    invoke-virtual {v2}, Lbbc/mobile/news/model/Article;->isAVArticle()Z

    move-result v0

    .line 107
    .local v0, isAVCategory:Z
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 108
    .local v1, layoutInflator:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, v1, p1, p2}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->instantiateAVCategory(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v2

    .line 111
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->instantiateCategory(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 132
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->TAG:Ljava/lang/String;

    const-string v1, "notifyDataSetChanged()"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 79
    return-void
.end method

.method public saveHtmlContentToDisk(Landroid/content/Context;Lbbc/mobile/news/model/Article;)V
    .locals 9
    .parameter "context"
    .parameter "article"

    .prologue
    .line 242
    const/4 v2, 0x0

    .line 243
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 245
    .local v4, osr:Ljava/io/OutputStreamWriter;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "newshtml"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    .local v0, extDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 248
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".html"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    .local v1, extFile:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 253
    .end local v4           #osr:Ljava/io/OutputStreamWriter;
    .local v5, osr:Ljava/io/OutputStreamWriter;
    :try_start_2
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getContentHTML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 255
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 256
    sget-object v6, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "saveHtmlContent: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 262
    if-eqz v5, :cond_0

    .line 263
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 265
    :cond_0
    :goto_0
    if-eqz v3, :cond_5

    .line 266
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v5

    .end local v5           #osr:Ljava/io/OutputStreamWriter;
    .restart local v4       #osr:Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .line 270
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    return-void

    .line 258
    :catch_0
    move-exception v6

    .line 262
    :goto_2
    if-eqz v4, :cond_2

    .line 263
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 265
    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    .line 266
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_1

    .line 261
    :catchall_0
    move-exception v6

    .line 262
    :goto_4
    if-eqz v4, :cond_3

    .line 263
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 265
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 266
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 268
    :cond_4
    :goto_6
    throw v6

    .line 266
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #osr:Ljava/io/OutputStreamWriter;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #osr:Ljava/io/OutputStreamWriter;
    :catch_2
    move-exception v6

    move-object v4, v5

    .end local v5           #osr:Ljava/io/OutputStreamWriter;
    .restart local v4       #osr:Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 263
    :catch_3
    move-exception v6

    goto :goto_3

    :catch_4
    move-exception v7

    goto :goto_5

    .line 266
    :catch_5
    move-exception v7

    goto :goto_6

    .line 263
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #osr:Ljava/io/OutputStreamWriter;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #osr:Ljava/io/OutputStreamWriter;
    :catch_6
    move-exception v6

    goto :goto_0

    .line 261
    .end local v5           #osr:Ljava/io/OutputStreamWriter;
    .restart local v4       #osr:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #osr:Ljava/io/OutputStreamWriter;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #osr:Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #osr:Ljava/io/OutputStreamWriter;
    .restart local v4       #osr:Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 258
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #osr:Ljava/io/OutputStreamWriter;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #osr:Ljava/io/OutputStreamWriter;
    :catch_8
    move-exception v6

    move-object v4, v5

    .end local v5           #osr:Ljava/io/OutputStreamWriter;
    .restart local v4       #osr:Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #osr:Ljava/io/OutputStreamWriter;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #osr:Ljava/io/OutputStreamWriter;
    :cond_5
    move-object v4, v5

    .end local v5           #osr:Ljava/io/OutputStreamWriter;
    .restart local v4       #osr:Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setAudioControl(Lbbc/mobile/news/service/AudioControl;Lbbc/mobile/news/service/AudioCallback;)V
    .locals 0
    .parameter "audioControl"
    .parameter "audioCallback"

    .prologue
    .line 56
    iput-object p1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mAudioControl:Lbbc/mobile/news/service/AudioControl;

    .line 57
    iput-object p2, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mAudioCallback:Lbbc/mobile/news/service/AudioCallback;

    .line 58
    return-void
.end method

.method public setImageHandler(Lbbc/mobile/news/feed/ImageHandler;)V
    .locals 0
    .parameter "imageHandler"

    .prologue
    .line 62
    iput-object p1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mImageHandler:Lbbc/mobile/news/feed/ImageHandler;

    .line 63
    return-void
.end method

.method public setItems(Lbbc/mobile/news/model/Category;)V
    .locals 3
    .parameter "category"

    .prologue
    .line 67
    sget-object v0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setItems("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->hasArticles()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mCategory:Lbbc/mobile/news/model/Category;

    .line 70
    invoke-virtual {p0}, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->notifyDataSetChanged()V

    .line 72
    :cond_0
    return-void
.end method

.method public setOrientation(Lbbc/mobile/news/model/Orientation;)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 225
    iput-object p1, p0, Lbbc/mobile/news/adapter/ArticlePagerAdapter;->mOrientation:Lbbc/mobile/news/model/Orientation;

    .line 226
    const-string v0, "js_alert"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SET ORIENTATION: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

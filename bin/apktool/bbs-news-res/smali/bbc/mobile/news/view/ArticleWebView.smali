.class public Lbbc/mobile/news/view/ArticleWebView;
.super Landroid/webkit/WebView;
.source "ArticleWebView.java"

# interfaces
.implements Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;
    }
.end annotation


# static fields
.field private static final ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final MIME_TYPE:Ljava/lang/String; = "text/html"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mArticle:Lbbc/mobile/news/model/Article;

.field private mContent:Ljava/lang/String;

.field private mContentLoaded:Z

.field private mIndex:I

.field private mOrientation:Lbbc/mobile/news/model/Orientation;

.field private mScrollHeight:I

.field private mUpdateScrollPos:Ljava/lang/Runnable;

.field private mVideoStatsCounterName:Ljava/lang/String;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lbbc/mobile/news/view/ArticleWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/view/ArticleWebView;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbbc/mobile/news/view/ArticleWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v1, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;

    invoke-direct {v1, p1}, Lbbc/mobile/news/view/ContextWrapperEdgeEffect;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const-string v1, ""

    iput-object v1, p0, Lbbc/mobile/news/view/ArticleWebView;->mVideoStatsCounterName:Ljava/lang/String;

    .line 44
    iput-boolean v2, p0, Lbbc/mobile/news/view/ArticleWebView;->mContentLoaded:Z

    .line 236
    new-instance v1, Lbbc/mobile/news/view/ArticleWebView$1;

    invoke-direct {v1, p0}, Lbbc/mobile/news/view/ArticleWebView$1;-><init>(Lbbc/mobile/news/view/ArticleWebView;)V

    iput-object v1, p0, Lbbc/mobile/news/view/ArticleWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 299
    new-instance v1, Lbbc/mobile/news/view/ArticleWebView$2;

    invoke-direct {v1, p0}, Lbbc/mobile/news/view/ArticleWebView$2;-><init>(Lbbc/mobile/news/view/ArticleWebView;)V

    iput-object v1, p0, Lbbc/mobile/news/view/ArticleWebView;->mUpdateScrollPos:Ljava/lang/Runnable;

    .line 61
    invoke-virtual {p0}, Lbbc/mobile/news/view/ArticleWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lbbc/mobile/news/model/Orientation;->parseOrientation(Landroid/content/res/Configuration;)Lbbc/mobile/news/model/Orientation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/ArticleWebView;->setOrientation(Lbbc/mobile/news/model/Orientation;)V

    .line 63
    invoke-virtual {p0, v2}, Lbbc/mobile/news/view/ArticleWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 64
    invoke-virtual {p0, v3}, Lbbc/mobile/news/view/ArticleWebView;->setVerticalScrollBarEnabled(Z)V

    .line 66
    invoke-direct {p0}, Lbbc/mobile/news/view/ArticleWebView;->initJavascriptInterface()V

    .line 67
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/ArticleWebView;->setInitialScale(I)V

    .line 68
    iget-object v1, p0, Lbbc/mobile/news/view/ArticleWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v1}, Lbbc/mobile/news/view/ArticleWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 70
    invoke-virtual {p0}, Lbbc/mobile/news/view/ArticleWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 71
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 75
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 77
    sget-object v1, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 78
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 79
    invoke-direct {p0, v0}, Lbbc/mobile/news/view/ArticleWebView;->enableJellyBeanSettings(Landroid/webkit/WebSettings;)V

    .line 80
    invoke-direct {p0, v0}, Lbbc/mobile/news/view/ArticleWebView;->enableKitKatSettings(Landroid/webkit/WebSettings;)V

    .line 83
    sget-object v1, Lbbc/mobile/news/helper/NewsServiceConstants;->USER_AGENT:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v1}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/helper/UserAgent;

    .line 84
    invoke-virtual {v1, p1}, Lbbc/mobile/news/helper/UserAgent;->readAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method static synthetic access$0(Lbbc/mobile/news/view/ArticleWebView;)Lbbc/mobile/news/model/Article;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mArticle:Lbbc/mobile/news/model/Article;

    return-object v0
.end method

.method static synthetic access$1(Lbbc/mobile/news/view/ArticleWebView;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mIndex:I

    return v0
.end method

.method static synthetic access$2(Lbbc/mobile/news/view/ArticleWebView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lbbc/mobile/news/view/ArticleWebView;->mContentLoaded:Z

    return-void
.end method

.method static synthetic access$3(Lbbc/mobile/news/view/ArticleWebView;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mScrollHeight:I

    return v0
.end method

.method static synthetic access$4(Lbbc/mobile/news/view/ArticleWebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lbbc/mobile/news/view/ArticleWebView;->runJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lbbc/mobile/news/view/ArticleWebView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lbbc/mobile/news/view/ArticleWebView;->mScrollHeight:I

    return-void
.end method

.method static synthetic access$6(Lbbc/mobile/news/view/ArticleWebView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mUpdateScrollPos:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$7(Lbbc/mobile/news/view/ArticleWebView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mVideoStatsCounterName:Ljava/lang/String;

    return-object v0
.end method

.method private clearContent()V
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mContentLoaded:Z

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "newsArticle.clearContent();"

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/ArticleWebView;->runJavascript(Ljava/lang/String;)V

    .line 297
    :cond_0
    return-void
.end method

.method private enableJellyBeanSettings(Landroid/webkit/WebSettings;)V
    .locals 2
    .parameter "webSettings"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method private enableKitKatSettings(Landroid/webkit/WebSettings;)V
    .locals 1
    .parameter "webSettings"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    return-void
.end method

.method private forceSoftwareLayer()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 94
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lbbc/mobile/news/view/ArticleWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 96
    :cond_0
    return-void
.end method

.method private initJavascriptInterface()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lbbc/mobile/news/view/ArticleWebView$3;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/ArticleWebView$3;-><init>(Lbbc/mobile/news/view/ArticleWebView;)V

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/ArticleWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 186
    new-instance v0, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;

    invoke-direct {v0, p0}, Lbbc/mobile/news/view/ArticleWebView$ArticleJavaScriptInterface;-><init>(Lbbc/mobile/news/view/ArticleWebView;)V

    const-string v1, "jsinterface"

    invoke-virtual {p0, v0, v1}, Lbbc/mobile/news/view/ArticleWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method private runJavascript(Ljava/lang/String;)V
    .locals 3
    .parameter "javascript"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lbbc/mobile/news/view/ArticleWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "runJavaScript: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbbc/mobile/news/view/ArticleWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/ArticleWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getArticle()Lbbc/mobile/news/model/Article;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mArticle:Lbbc/mobile/news/model/Article;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public hasArticle()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mArticle:Lbbc/mobile/news/model/Article;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadContent(Ljava/lang/String;Lbbc/mobile/news/model/Article;I)V
    .locals 9
    .parameter "articleContent"
    .parameter "article"
    .parameter "index"

    .prologue
    .line 191
    invoke-virtual {p0}, Lbbc/mobile/news/view/ArticleWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbc/mobile/news/helper/TextSizeHelper;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TextSizeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lbbc/mobile/news/helper/TextSizeHelper;->getTextSize()I

    move-result v8

    .line 193
    .local v8, size:I
    if-lez v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plus"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    .local v6, fontClass:Ljava/lang/String;
    :goto_0
    iput p3, p0, Lbbc/mobile/news/view/ArticleWebView;->mIndex:I

    .line 197
    const-string v0, "SPECIAL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading articleView content with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/view/ArticleWebView;->mOrientation:Lbbc/mobile/news/model/Orientation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mOrientation:Lbbc/mobile/news/model/Orientation;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Orientation;->getName()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {p1, v6, v0}, Lbbc/mobile/news/helper/TemplateHelperV2;->fixActiveContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, htmlContent:Ljava/lang/String;
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mOrientation:Lbbc/mobile/news/model/Orientation;

    sget-object v1, Lbbc/mobile/news/model/Orientation;->LAND:Lbbc/mobile/news/model/Orientation;

    if-ne v0, v1, :cond_3

    .line 203
    const-string v0, "class=\"fullwidth_img\""

    const-string v1, "class=\"fullwidth_img_land\""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 204
    const-string v0, "class=\"inline_img\""

    const-string v1, "class=\"inline_img_land\""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 211
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lbbc/mobile/news/view/ArticleWebView;->stopLoading()V

    .line 212
    invoke-direct {p0}, Lbbc/mobile/news/view/ArticleWebView;->clearContent()V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mContentLoaded:Z

    .line 214
    iput-object p2, p0, Lbbc/mobile/news/view/ArticleWebView;->mArticle:Lbbc/mobile/news/model/Article;

    .line 215
    iput-object v7, p0, Lbbc/mobile/news/view/ArticleWebView;->mContent:Ljava/lang/String;

    .line 216
    const-string v1, "file://"

    iget-object v2, p0, Lbbc/mobile/news/view/ArticleWebView;->mContent:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/view/ArticleWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void

    .line 193
    .end local v6           #fontClass:Ljava/lang/String;
    .end local v7           #htmlContent:Ljava/lang/String;
    :cond_1
    if-gez v8, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "minus"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-string v6, ""

    goto :goto_0

    .line 206
    .restart local v6       #fontClass:Ljava/lang/String;
    .restart local v7       #htmlContent:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mOrientation:Lbbc/mobile/news/model/Orientation;

    sget-object v1, Lbbc/mobile/news/model/Orientation;->PORT:Lbbc/mobile/news/model/Orientation;

    if-ne v0, v1, :cond_0

    .line 207
    const-string v0, "class=\"fullwidth_img_land\""

    const-string v1, "class=\"fullwidth_img\""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 208
    const-string v0, "class=\"inline_img_land\""

    const-string v1, "class=\"inline_img\""

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 127
    sget-object v0, Lbbc/mobile/news/view/ArticleWebView;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lbbc/mobile/news/view/ArticleWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbc/mobile/news/helper/TextSizeHelper;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TextSizeHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbbc/mobile/news/helper/TextSizeHelper;->registerChangeListener(Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;)V

    .line 129
    invoke-virtual {p0}, Lbbc/mobile/news/view/ArticleWebView;->refreshOrientation()V

    .line 130
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 136
    invoke-static {p1}, Lbbc/mobile/news/model/Orientation;->parseOrientation(Landroid/content/res/Configuration;)Lbbc/mobile/news/model/Orientation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbbc/mobile/news/view/ArticleWebView;->setOrientation(Lbbc/mobile/news/model/Orientation;)V

    .line 137
    const-string v0, "SPECIAL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/view/ArticleWebView;->mOrientation:Lbbc/mobile/news/model/Orientation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbbc/mobile/news/view/ArticleWebView;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lbbc/mobile/news/view/ArticleWebView;->refreshOrientation()V

    .line 139
    sget-object v0, Lbbc/mobile/news/view/ArticleWebView;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 146
    sget-object v0, Lbbc/mobile/news/view/ArticleWebView;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lbbc/mobile/news/view/ArticleWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbbc/mobile/news/helper/TextSizeHelper;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TextSizeHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbbc/mobile/news/helper/TextSizeHelper;->unregisterChangeListener(Lbbc/mobile/news/helper/TextSizeHelper$OnSizeChangedListener;)V

    .line 148
    return-void
.end method

.method public onTextSizeChanged(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 276
    iget-boolean v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mContentLoaded:Z

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newsArticle.updateFontSize("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/ArticleWebView;->runJavascript(Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method public refreshOrientation()V
    .locals 3

    .prologue
    .line 284
    iget-boolean v0, p0, Lbbc/mobile/news/view/ArticleWebView;->mContentLoaded:Z

    if-eqz v0, :cond_0

    .line 285
    const-string v0, "SPECIAL"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshOrientation() to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/view/ArticleWebView;->mOrientation:Lbbc/mobile/news/model/Orientation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbbc/mobile/news/view/ArticleWebView;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newsArticle.setOrientation(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbbc/mobile/news/view/ArticleWebView;->mOrientation:Lbbc/mobile/news/model/Orientation;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Orientation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbbc/mobile/news/view/ArticleWebView;->runJavascript(Ljava/lang/String;)V

    .line 289
    :cond_0
    return-void
.end method

.method public setOrientation(Lbbc/mobile/news/model/Orientation;)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    iput-object p1, p0, Lbbc/mobile/news/view/ArticleWebView;->mOrientation:Lbbc/mobile/news/model/Orientation;

    .line 121
    :cond_0
    return-void
.end method

.method public setVideoStatsCounterName(Ljava/lang/String;)V
    .locals 0
    .parameter "videoStatsCounterName"

    .prologue
    .line 162
    iput-object p1, p0, Lbbc/mobile/news/view/ArticleWebView;->mVideoStatsCounterName:Ljava/lang/String;

    .line 163
    return-void
.end method

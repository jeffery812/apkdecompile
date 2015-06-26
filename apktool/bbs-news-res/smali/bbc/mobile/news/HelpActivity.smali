.class public Lbbc/mobile/news/HelpActivity;
.super Lbbc/mobile/news/BaseActivity;
.source "HelpActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# static fields
.field private static final CONTENT_END:Ljava/lang/String; = "</div>"

.field private static final CONTENT_START:Ljava/lang/String; = "<div class=\"body\">"

.field private static final EXTRA_INFO_FMT:Ljava/lang/String; = "<p>&nbsp;</p><font color=\"#999999\"><p>App Version: %s [%d]</p><p>Push Code: %s</p></font>"

.field private static final HELP_END_1:Ljava/lang/String; = "<!--ANDROID_MOBILE_CONTENT_END-->"

.field private static final HELP_END_2:Ljava/lang/String; = "<!--"

.field private static final HELP_FAILED_FMT:Ljava/lang/String; = "<p>%s</p>"

.field private static final HELP_START:Ljava/lang/String; = "<!--ANDROID_MOBILE_CONTENT_START-->"

.field private static final NOT_SET:Ljava/lang/String; = "Not Set"

.field private static final TITLE_END:Ljava/lang/String; = "</h1>"

.field private static final TITLE_START:Ljava/lang/String; = "<h1>"


# instance fields
.field private mArticleWebView:Lbbc/mobile/news/view/ArticleWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lbbc/mobile/news/BaseActivity;-><init>()V

    return-void
.end method

.method private getVersionInfo()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 168
    const-string v3, "Not Set"

    .line 170
    .local v3, pushUDID:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lio/boxcar/push/BXCFacade;->getUDID()Ljava/lang/String;
    :try_end_0
    .catch Lio/boxcar/push/BXCException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 171
    .local v4, udid:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 172
    move-object v3, v4

    .line 179
    .end local v4           #udid:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v1, "Not Set"

    .line 180
    .local v1, appVersionName:Ljava/lang/String;
    const/4 v0, -0x1

    .line 182
    .local v0, appVersionCode:I
    :try_start_1
    invoke-virtual {p0}, Lbbc/mobile/news/HelpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lbbc/mobile/news/HelpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 183
    .local v2, info:Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 184
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 190
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :goto_1
    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "<p>&nbsp;</p><font color=\"#999999\"><p>App Version: %s [%d]</p><p>Push Code: %s</p></font>"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 175
    .end local v0           #appVersionCode:I
    .end local v1           #appVersionName:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 186
    .restart local v0       #appVersionCode:I
    .restart local v1       #appVersionName:Ljava/lang/String;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private loadContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "title"
    .parameter "content"

    .prologue
    .line 148
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    .local v0, context:Landroid/content/Context;
    sget-object v3, Lbbc/mobile/news/helper/NewsServiceConstants;->USER_AGENT:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v3}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbbc/mobile/news/helper/UserAgent;

    invoke-virtual {v3, v0}, Lbbc/mobile/news/helper/UserAgent;->readAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, userAgent:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v1, templateParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "{{font-size}}"

    invoke-static {}, Lbbc/mobile/news/model/Article;->getArticleFontSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v3, "{{categorybar-height}}"

    invoke-static {}, Lbbc/mobile/news/model/Article;->getCategoryBarHeight()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v3, "{{padding-left}}"

    invoke-static {}, Lbbc/mobile/news/model/Article;->getArticlePaddingLeft()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v3, "{{padding-right}}"

    invoke-static {}, Lbbc/mobile/news/model/Article;->getArticlePaddingRight()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v3, "{{user-agent}}"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v3, "{{title}}"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v3, "{{date}}"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v3, "{{content}}"

    invoke-virtual {v1, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v3, "{{footer}}"

    invoke-static {}, Lbbc/mobile/news/util/CopyrightHelper;->getInstance()Lbbc/mobile/news/util/CopyrightHelper;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/util/CopyrightHelper;->getCopyrightText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v3, p0, Lbbc/mobile/news/HelpActivity;->mArticleWebView:Lbbc/mobile/news/view/ArticleWebView;

    invoke-static {v0}, Lbbc/mobile/news/helper/TemplateHelperV2;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TemplateHelperV2;

    move-result-object v4

    .line 163
    invoke-virtual {v4, v1}, Lbbc/mobile/news/helper/TemplateHelperV2;->buildArticleContent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 162
    invoke-virtual {v3, v4, v5, v6}, Lbbc/mobile/news/view/ArticleWebView;->loadContent(Ljava/lang/String;Lbbc/mobile/news/model/Article;I)V

    .line 164
    return-void
.end method


# virtual methods
.method public getHelpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbbc/mobile/news/HelpActivity;->mHasActionBar:Z

    .line 73
    invoke-super {p0, p1}, Lbbc/mobile/news/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lbbc/mobile/news/HelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    sget v1, Lbbc/mobile/news/R$layout;->article_webview_layout:I

    invoke-virtual {p0, v1}, Lbbc/mobile/news/HelpActivity;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lbbc/mobile/news/HelpActivity;->getHelpUrl()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, url:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 82
    invoke-virtual {p0}, Lbbc/mobile/news/HelpActivity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lbbc/mobile/news/feed/FeedManager;

    const-string v1, "RemoteInfo-FeedManager"

    invoke-direct {v0, v1}, Lbbc/mobile/news/feed/FeedManager;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, fm:Lbbc/mobile/news/feed/FeedManager;
    new-instance v2, Lbbc/mobile/news/model/Feed;

    const-string v1, "text"

    const/4 v3, -0x7

    .line 90
    invoke-direct {v2, v1, v3, v6}, Lbbc/mobile/news/model/Feed;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lbbc/mobile/news/HelpActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    .line 89
    invoke-virtual/range {v0 .. v5}, Lbbc/mobile/news/feed/FeedManager;->addTextFeed(Landroid/content/Context;Lbbc/mobile/news/model/Feed;Landroid/os/Handler;II)V

    .line 91
    invoke-virtual {v0}, Lbbc/mobile/news/feed/FeedManager;->fetch()V

    .line 93
    sget v1, Lbbc/mobile/news/R$id;->articleWebView:I

    invoke-virtual {p0, v1}, Lbbc/mobile/news/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/view/ArticleWebView;

    iput-object v1, p0, Lbbc/mobile/news/HelpActivity;->mArticleWebView:Lbbc/mobile/news/view/ArticleWebView;

    .line 96
    iget-object v1, p0, Lbbc/mobile/news/HelpActivity;->mArticleWebView:Lbbc/mobile/news/view/ArticleWebView;

    .line 97
    invoke-virtual {p0}, Lbbc/mobile/news/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lbbc/mobile/news/model/Orientation;->parseOrientation(Landroid/content/res/Configuration;)Lbbc/mobile/news/model/Orientation;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Lbbc/mobile/news/view/ArticleWebView;->setOrientation(Lbbc/mobile/news/model/Orientation;)V

    goto :goto_0
.end method

.method public onTextFailed()V
    .locals 6

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, content:Ljava/lang/StringBuilder;
    const-string v1, "<div class=\"body\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v2, "<p>%s</p>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lbbc/mobile/news/R$string;->help_failed:I

    invoke-virtual {p0, v5}, Lbbc/mobile/news/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {p0}, Lbbc/mobile/news/HelpActivity;->getVersionInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "</div>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "Help"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lbbc/mobile/news/HelpActivity;->loadContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onTextSuccess(Ljava/lang/String;II)V
    .locals 9
    .parameter "text"
    .parameter "strategy"
    .parameter "requestMethod"

    .prologue
    const/4 v8, -0x1

    .line 103
    const-string v6, "<!--ANDROID_MOBILE_CONTENT_START-->"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, contentStartIndex:I
    const-string v6, "<!--ANDROID_MOBILE_CONTENT_END-->"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 107
    .local v1, contentEndIndex:I
    if-eq v2, v8, :cond_0

    if-ne v1, v8, :cond_0

    .line 108
    const-string v6, "<!--"

    const-string v7, "<!--ANDROID_MOBILE_CONTENT_START-->"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 111
    :cond_0
    if-eq v2, v8, :cond_1

    if-ne v1, v8, :cond_2

    .line 112
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lbbc/mobile/news/HelpActivity;->getHelpUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v6}, Lbbc/mobile/news/HelpActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lbbc/mobile/news/HelpActivity;->finish()V

    .line 132
    :goto_0
    return-void

    .line 117
    :cond_2
    const-string v6, "<h1>"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 118
    .local v5, titleStartIndex:I
    const-string v6, "</h1>"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 120
    .local v4, titleEndIndex:I
    const-string v3, ""

    .line 121
    .local v3, title:Ljava/lang/String;
    if-eq v5, v8, :cond_3

    if-eq v4, v8, :cond_3

    .line 122
    const-string v6, "<h1>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 125
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, content:Ljava/lang/StringBuilder;
    const-string v6, "<div class=\"body\">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v6, "<!--ANDROID_MOBILE_CONTENT_START-->"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {p0}, Lbbc/mobile/news/HelpActivity;->getVersionInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v6, "</div>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lbbc/mobile/news/HelpActivity;->loadContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

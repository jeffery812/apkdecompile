.class public final Lbbc/mobile/news/util/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# static fields
.field private static final ARTICLE_ID:Ljava/lang/String; = "ARTICLE_ID"

.field private static final ARTICLE_IDS:Ljava/lang/String; = "ARTICLE_IDS"

.field private static final CATEGORY:Ljava/lang/String; = "CATEGORY"

.field private static final FROM_STATE:Ljava/lang/String; = "FROM"

.field private static final MODE_KEY:Ljava/lang/String; = "NEWS-MODE"

.field private static final NOTIFICATION:Ljava/lang/String; = "NOTIFICATION"

.field private static REQUEST_CODE:I

.field private static REQUEST_CODE_NEW_SEED:I

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lbbc/mobile/news/util/IntentFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/util/IntentFactory;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    sput v0, Lbbc/mobile/news/util/IntentFactory;->REQUEST_CODE_NEW_SEED:I

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clearFromState(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 263
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "FROM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 266
    :cond_0
    return-void
.end method

.method public static final getArticleActivityIntent(Lbbc/mobile/news/model/Article;I)Landroid/content/Intent;
    .locals 3
    .parameter "article"
    .parameter "mode"

    .prologue
    .line 103
    sget-object v2, Lbbc/mobile/news/helper/NewsServiceConstants;->ARTICLE_ACTIVITY:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v2}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 104
    .local v0, articleActivityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 105
    const/4 v1, 0x0

    .line 115
    :cond_0
    :goto_0
    return-object v1

    .line 108
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v2, "NEWS-MODE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    if-eqz p0, :cond_0

    .line 112
    invoke-static {v1, p0}, Lbbc/mobile/news/util/IntentFactory;->setArticle(Landroid/content/Intent;Lbbc/mobile/news/model/Article;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getArticleId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "intent"

    .prologue
    .line 193
    if-eqz p0, :cond_0

    .line 194
    const-string v0, "ARTICLE_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getArticleId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 209
    if-eqz p0, :cond_0

    .line 210
    const-string v0, "ARTICLE_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getArticleIds(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 1
    .parameter "intent"

    .prologue
    .line 185
    if-eqz p0, :cond_0

    .line 186
    const-string v0, "ARTICLE_IDS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getCategory(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "intent"

    .prologue
    .line 177
    if-eqz p0, :cond_0

    .line 178
    const-string v0, "CATEGORY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getCategory(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 201
    if-eqz p0, :cond_0

    .line 202
    const-string v0, "CATEGORY"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getHomeScreenIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 37
    sget-object v2, Lbbc/mobile/news/helper/NewsServiceConstants;->HOME_ACTIVITY_INTENT:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v2}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 38
    .local v0, homeActivityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 39
    const/4 v1, 0x0

    .line 49
    :goto_0
    return-object v1

    .line 42
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static final getHomeScreenIntent(I)Landroid/content/Intent;
    .locals 2
    .parameter "fromState"

    .prologue
    .line 78
    invoke-static {}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FROM"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    return-object v0
.end method

.method public static final getHomeScreenIntent(Lio/boxcar/push/model/BXCNotification;)Landroid/content/Intent;
    .locals 3
    .parameter "bxcNotification"

    .prologue
    .line 63
    invoke-static {}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FROM"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    const-string v1, "NOTIFICATION"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method public static final getHomeScreenIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "categoryName"
    .parameter "articleId"

    .prologue
    .line 54
    invoke-static {}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent()Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, homeScreenIntent:Landroid/content/Intent;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-static {v0, p0, p1}, Lbbc/mobile/news/util/IntentFactory;->setArticle(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    :cond_0
    return-object v0
.end method

.method public static final getHomeScreenIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .parameter "categoryName"
    .parameter "articleId"
    .parameter "fromState"

    .prologue
    .line 71
    invoke-static {p0, p1}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FROM"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    return-object v0
.end method

.method public static final getHomeScreenPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lbbc/mobile/news/util/IntentFactory;->getUniqueRequestCode()I

    move-result v1

    .line 98
    const/4 v2, 0x4

    invoke-static {v2}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent(I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 97
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static final getHomeScreenPendingIntent(Landroid/content/Context;Lio/boxcar/push/model/BXCNotification;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"
    .parameter "bxcNotification"

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lbbc/mobile/news/util/IntentFactory;->getUniqueRequestCode()I

    move-result v1

    .line 86
    invoke-static {p1}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent(Lio/boxcar/push/model/BXCNotification;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 85
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static final getHomeScreenPendingIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"
    .parameter "categoryName"
    .parameter "articleId"

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lbbc/mobile/news/util/IntentFactory;->getUniqueRequestCode()I

    move-result v1

    .line 92
    const/4 v2, 0x4

    invoke-static {p1, p2, v2}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    .line 91
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static final getNotification(Landroid/os/Bundle;)Lio/boxcar/push/model/BXCNotification;
    .locals 1
    .parameter "bundle"

    .prologue
    .line 217
    if-eqz p0, :cond_0

    .line 218
    const-string v0, "NOTIFICATION"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lio/boxcar/push/model/BXCNotification;

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getShareIntent(Lbbc/mobile/news/model/Article;)Landroid/content/Intent;
    .locals 4
    .parameter "article"

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, shareIntent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    return-object v0
.end method

.method public static final declared-synchronized getUniqueRequestCode()I
    .locals 4

    .prologue
    .line 151
    const-class v1, Lbbc/mobile/news/util/IntentFactory;

    monitor-enter v1

    :try_start_0
    sget v0, Lbbc/mobile/news/util/IntentFactory;->REQUEST_CODE:I

    sget v2, Lbbc/mobile/news/util/IntentFactory;->REQUEST_CODE_NEW_SEED:I

    if-ne v0, v2, :cond_0

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v0, v2

    sput v0, Lbbc/mobile/news/util/IntentFactory;->REQUEST_CODE:I

    .line 154
    :cond_0
    sget v0, Lbbc/mobile/news/util/IntentFactory;->REQUEST_CODE:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lbbc/mobile/news/util/IntentFactory;->REQUEST_CODE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final getVideoActivityIntent(Landroid/content/Context;Lbbc/mobile/news/model/Article;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "article"
    .parameter "url"
    .parameter "counterName"

    .prologue
    .line 130
    new-instance v1, Lbbc/mobile/news/video/VideoRequest;

    invoke-direct {v1, p2}, Lbbc/mobile/news/video/VideoRequest;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, videoRequest:Lbbc/mobile/news/video/VideoRequest;
    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/video/VideoRequest;->setStoryId(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/video/VideoRequest;->setCarousel(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getOriginalCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbc/mobile/news/video/VideoRequest;->setSection(Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-static {p0, v1}, Lbbc/mobile/news/video/VideoActivity;->createIntent(Landroid/content/Context;Lbbc/mobile/news/video/VideoRequest;)Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "bbc.avplayer.url"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v2, "bbc.avplayer.isplaylist"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    const-string v2, "counterName"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    if-eqz p1, :cond_1

    .line 142
    const-string v2, "headline"

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v2, "category"

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :cond_1
    return-object v0
.end method

.method public static final isLaunchedFromNotification(Landroid/os/Bundle;)Z
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v0, 0x0

    .line 246
    const-string v1, "PUSH-"

    const-string v2, "isLaunchedFromNotification"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    if-eqz p0, :cond_0

    .line 248
    const-string v1, "FROM"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 250
    :cond_0
    return v0
.end method

.method public static final isLaunchedFromWidget(Landroid/os/Bundle;)Z
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v0, 0x0

    .line 237
    const-string v1, "PUSH-"

    const-string v2, "isLaunchedFromWidget"

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-eqz p0, :cond_0

    .line 239
    const-string v1, "FROM"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 241
    :cond_0
    return v0
.end method

.method private static final setArticle(Landroid/content/Intent;Lbbc/mobile/news/model/Article;)Landroid/content/Intent;
    .locals 2
    .parameter "intent"
    .parameter "article"

    .prologue
    .line 159
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lbbc/mobile/news/util/IntentFactory;->setArticle(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 162
    .end local p0
    :cond_0
    return-object p0
.end method

.method private static final setArticle(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "intent"
    .parameter "category"
    .parameter "articleId"

    .prologue
    .line 167
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 168
    const-string v0, "CATEGORY"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v0, "ARTICLE_ID"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    :cond_0
    return-object p0
.end method

.method public static final toBundle(Landroid/os/Bundle;Lbbc/mobile/news/model/Category;Lbbc/mobile/news/model/Article;)Landroid/os/Bundle;
    .locals 2
    .parameter "bundle"
    .parameter "category"
    .parameter "article"

    .prologue
    .line 225
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 226
    const-string v0, "CATEGORY"

    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    if-eqz p2, :cond_0

    .line 228
    const-string v0, "ARTICLE_ID"

    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    return-object p0
.end method

.method public static final viewSpecificCategory(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "bundle"

    .prologue
    const/4 v0, 0x0

    .line 255
    if-eqz p0, :cond_0

    .line 256
    const-string v1, "CATEGORY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.class public abstract Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;
.super Ljava/lang/Object;
.source "RemoteViewsFactoryV3.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final VIEW_TYPE_COUNT:I = 0x1


# instance fields
.field private mAppWidgetId:I

.field private mCategory:Lbbc/mobile/news/model/Category;

.field private mContext:Landroid/content/Context;

.field private mFeed:Lbbc/mobile/news/model/Feed;

.field private mImageHeight:I

.field private mImageWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 56
    .local v2, resources:Landroid/content/res/Resources;
    iput-object p1, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mContext:Landroid/content/Context;

    .line 57
    const-string v3, "appWidgetId"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mAppWidgetId:I

    .line 59
    iget v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mAppWidgetId:I

    if-eqz v3, :cond_1

    .line 61
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lbbc/mobile/news/webclient/BootstrapManager;->getPersonalised(Landroid/content/Context;I)Lbbc/mobile/news/model/Config;

    move-result-object v1

    .line 62
    .local v1, config:Lbbc/mobile/news/model/Config;
    if-eqz v1, :cond_0

    .line 63
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lbbc/mobile/news/model/Config;->populateFeedCache(Z)Z

    .line 66
    :cond_0
    iget v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mAppWidgetId:I

    invoke-static {p1, v3}, Lbbc/mobile/news/widget/WidgetManager;->getWidgetCategoryName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, categoryName:Ljava/lang/String;
    invoke-static {}, Lbbc/mobile/news/cache/FeedCache;->getInstance()Lbbc/mobile/news/cache/FeedCache;

    move-result-object v3

    invoke-virtual {v3, v0}, Lbbc/mobile/news/cache/FeedCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Feed;

    move-result-object v3

    iput-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mFeed:Lbbc/mobile/news/model/Feed;

    .line 70
    .end local v0           #categoryName:Ljava/lang/String;
    .end local v1           #config:Lbbc/mobile/news/model/Config;
    :cond_1
    sget v3, Lbbc/mobile/news/R$dimen;->thumbnail_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mImageWidth:I

    .line 71
    sget v3, Lbbc/mobile/news/R$dimen;->thumbnail_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mImageHeight:I

    .line 72
    return-void
.end method

.method private static fetchImages(Lbbc/mobile/news/model/Category;)V
    .locals 9
    .parameter "category"

    .prologue
    .line 209
    const-string v4, "fetchImages() "

    .line 211
    .local v4, tagMessage:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 212
    sget-object v6, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    const-string v7, "ERROR: fetchImages() NULL category"

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    return-void

    .line 215
    :cond_1
    sget-object v6, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fetchImages() category: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " articles."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 219
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lbbc/mobile/news/model/Category;->getArticles()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Article;

    .line 221
    .local v0, article:Lbbc/mobile/news/model/Article;
    const/4 v3, 0x0

    .line 222
    .local v3, isCached:Z
    const/4 v5, 0x0

    .line 224
    .local v5, url:Ljava/net/URI;
    if-eqz v0, :cond_2

    .line 228
    :try_start_0
    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getThumbnailAsUrl()Ljava/net/URL;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getThumbnailAsUrl()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    .line 230
    :goto_1
    if-eqz v5, :cond_3

    .line 231
    invoke-static {v5}, Lbbc/mobile/news/webclient/BitmapManager;->isInDiskCache(Ljava/net/URI;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 237
    :cond_3
    :goto_2
    if-nez v3, :cond_6

    if-eqz v5, :cond_6

    .line 241
    :try_start_1
    invoke-static {v1, v5}, Lbbc/mobile/news/webclient/BitmapManager;->downloadBitmapFromNetwork(Landroid/content/Context;Ljava/net/URI;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 242
    sget-object v7, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    const-string v8, "fetchImages()  Cache miss for widget article image, downloaded sucessfully"

    invoke-static {v7, v8}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v2

    .line 248
    .local v2, exception:Ljava/lang/OutOfMemoryError;
    sget-object v7, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    const-string v8, "fetchImages() ERROR: OutOfMemory when downloading article image for widget"

    invoke-static {v7, v8, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 228
    .end local v2           #exception:Ljava/lang/OutOfMemoryError;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 233
    :catch_1
    move-exception v2

    .line 234
    .local v2, exception:Ljava/net/URISyntaxException;
    sget-object v7, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    const-string v8, "fetchImages() ERROR: Exception caught when receiving bitmap from invalid url"

    invoke-static {v7, v8, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 244
    .end local v2           #exception:Ljava/net/URISyntaxException;
    :cond_5
    :try_start_2
    sget-object v7, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    const-string v8, "fetchImages()  Cache miss for widget article image, download failed"

    invoke-static {v7, v8}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 253
    :cond_6
    if-eqz v5, :cond_7

    .line 254
    sget-object v7, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    const-string v8, "fetchImages()  Cache hit for widget article image!"

    invoke-static {v7, v8}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_7
    sget-object v7, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    const-string v8, "fetchImages()  Url null for image thumbnail"

    invoke-static {v7, v8}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final getCategory(ILbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;
    .locals 3
    .parameter "readStrategy"
    .parameter "feed"

    .prologue
    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Lbbc/mobile/news/model/Feed;

    aput-object p1, v1, v2

    invoke-static {v0, p0, v2, v1}, Lbbc/mobile/news/webclient/CategoryManager;->get(Lbbc/mobile/news/webclient/CategoryManager$CategoryCallback;IZ[Lbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, count:I
    iget-object v1, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v0

    .line 101
    :cond_0
    sget-object v1, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCount() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 162
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$layout;->widget_loading_view:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 6
    .parameter "position"

    .prologue
    .line 110
    sget-object v3, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getViewAt("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 113
    const/4 v2, 0x0

    .line 147
    :cond_0
    :goto_0
    return-object v2

    .line 116
    :cond_1
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->hasCategory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    sget-object v3, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getViewAt("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ERROR = NO CATEGORY!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_2
    iget-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    if-nez v3, :cond_3

    iget-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mFeed:Lbbc/mobile/news/model/Feed;

    if-eqz v3, :cond_3

    .line 123
    const/4 v3, 0x0

    iget-object v4, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-static {v3, v4}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->getCategory(ILbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v3

    iput-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    .line 126
    :cond_3
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->getWidgetItemLayoutResource()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 128
    .local v2, rv:Landroid/widget/RemoteViews;
    iget-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v3, p1}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 130
    .local v0, article:Lbbc/mobile/news/model/Article;
    iget-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v3, :cond_0

    .line 133
    if-nez v0, :cond_4

    .line 134
    invoke-static {}, Lbbc/mobile/news/cache/CategoryCache;->getInstance()Lbbc/mobile/news/cache/CategoryCache;

    move-result-object v3

    iget-object v4, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v4}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbbc/mobile/news/cache/CategoryCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Category;

    move-result-object v1

    .line 135
    .local v1, bugFixCategory:Lbbc/mobile/news/model/Category;
    if-eqz v1, :cond_4

    .line 136
    invoke-virtual {v1, p1}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 139
    .end local v1           #bugFixCategory:Lbbc/mobile/news/model/Category;
    :cond_4
    if-eqz v0, :cond_0

    .line 140
    sget v3, Lbbc/mobile/news/R$id;->widgetArticleHeadlineView:I

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 141
    sget v3, Lbbc/mobile/news/R$id;->widgetNewsItemCategory:I

    iget-object v4, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v4}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    sget v4, Lbbc/mobile/news/R$id;->widgetArticleImageView:I

    invoke-virtual {p0, v2, v3, v4}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->setImageBitmap(Landroid/widget/RemoteViews;Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 143
    invoke-virtual {p0, v2, v0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->setViewArticleIntent(Landroid/widget/RemoteViews;Lbbc/mobile/news/model/Article;)Landroid/widget/RemoteViews;

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getWidgetItemLayoutResource()I
.end method

.method public hasCategory()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onDataSetChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 266
    const-string v2, "onDataSetChanged()"

    .line 268
    .local v2, tagMessage:Ljava/lang/String;
    iget v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mAppWidgetId:I

    invoke-static {v3}, Lbbc/mobile/news/widget/WidgetManager;->fetchFromDisk(I)Z

    move-result v1

    .line 270
    .local v1, fetchFromDisk:Z
    const/4 v0, 0x0

    .line 272
    .local v0, category:Lbbc/mobile/news/model/Category;
    iget-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mFeed:Lbbc/mobile/news/model/Feed;

    if-eqz v3, :cond_3

    .line 273
    sget-object v3, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Feed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-virtual {v5}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "onDataSetChanged()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :goto_0
    iget-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mFeed:Lbbc/mobile/news/model/Feed;

    if-eqz v3, :cond_1

    .line 278
    if-nez v1, :cond_0

    iget-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lbbc/mobile/news/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 279
    :cond_0
    iget v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mAppWidgetId:I

    invoke-static {v3, v6}, Lbbc/mobile/news/widget/WidgetManager;->setFetchFromDisk(IZ)V

    .line 280
    iget-object v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-static {v6, v3}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->getCategory(ILbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 286
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 287
    iput-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    .line 288
    sget-object v3, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    const-string v4, "Updating image cache for article images..."

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {v0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->fetchImages(Lbbc/mobile/news/model/Category;)V

    .line 293
    :cond_2
    return-void

    .line 275
    :cond_3
    sget-object v3, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->TAG:Ljava/lang/String;

    const-string v4, "onDataSetChanged()"

    invoke-static {v3, v4}, Lbbc/mobile/news/helper/BBCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_4
    const/4 v3, 0x1

    iget-object v4, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mFeed:Lbbc/mobile/news/model/Feed;

    invoke-static {v3, v4}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->getCategory(ILbbc/mobile/news/model/Feed;)Lbbc/mobile/news/model/Category;

    move-result-object v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    .line 86
    iput-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mFeed:Lbbc/mobile/news/model/Feed;

    .line 87
    iput-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method public setImageBitmap(Landroid/widget/RemoteViews;Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .locals 6
    .parameter "remoteView"
    .parameter "thumbnail"
    .parameter "imageId"

    .prologue
    .line 185
    if-eqz p2, :cond_0

    .line 186
    invoke-static {p2}, Lbbc/mobile/news/helper/StringUtils;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 188
    .local v2, uri:Ljava/net/URI;
    new-instance v3, Lbbc/mobile/news/webclient/WebClient;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 189
    .local v3, webClient:Lbbc/mobile/news/webclient/WebClient;
    invoke-virtual {v3}, Lbbc/mobile/news/webclient/WebClient;->getFile()Ljava/io/File;

    move-result-object v1

    .line 190
    .local v1, imageFile:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    iget v4, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mImageWidth:I

    iget v5, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mImageHeight:I

    invoke-static {v1, v4, v5}, Lbbc/mobile/news/util/ImageUtils;->getSizedBitmapFromDisk(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 203
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #imageFile:Ljava/io/File;
    .end local v2           #uri:Ljava/net/URI;
    .end local v3           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :goto_0
    return-object p1

    .line 201
    :cond_0
    sget v4, Lbbc/mobile/news/R$drawable;->thumbnail_placeholder:I

    invoke-virtual {p1, p3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method public setViewArticleIntent(Landroid/widget/RemoteViews;Lbbc/mobile/news/model/Article;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "remoteViews"
    .parameter "article"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 173
    iget-object v1, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 176
    .local v0, viewArticleIntent:Landroid/content/Intent;
    const-string v1, "appWidgetId"

    iget v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    sget v1, Lbbc/mobile/news/R$id;->widgetNewsItem:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 180
    .end local v0           #viewArticleIntent:Landroid/content/Intent;
    :cond_0
    return-object p1
.end method

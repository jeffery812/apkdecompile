.class public abstract Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;
.super Ljava/lang/Object;
.source "RemoteViewsFactoryV2.java"


# static fields
.field protected static final INVALID_ARTICLE_INDEX:I = -0x1

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final PAGE_RAPPING_ENABELD:Z = true

.field private static REQUEST_CODE:I

.field private static REQUEST_CODE_NEW_SEED:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCategory:Lbbc/mobile/news/model/Category;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mImageHeight:I

.field private mImageWidth:I

.field private mNonSelectedColor:I

.field private mPage:I

.field private mSelectedColour:I

.field private mTileSize:I

.field private mTileSpacing:I

.field private mWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x1

    sput v0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->REQUEST_CODE_NEW_SEED:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v2, 0x3

    iput v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mTileSpacing:I

    .line 48
    iput v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mWidgetId:I

    .line 49
    const/16 v2, 0x8

    iput v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mTileSize:I

    .line 50
    iput v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mPage:I

    .line 51
    iput v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mImageWidth:I

    .line 52
    iput v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mImageHeight:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    .local v1, resources:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 59
    .local v0, metrics:Landroid/util/DisplayMetrics;
    sget v2, Lbbc/mobile/news/R$color;->paging_selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mSelectedColour:I

    .line 60
    sget v2, Lbbc/mobile/news/R$color;->paging_nonselected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mNonSelectedColor:I

    .line 62
    sget v2, Lbbc/mobile/news/R$dimen;->thumbnail_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mImageWidth:I

    .line 63
    sget v2, Lbbc/mobile/news/R$dimen;->thumbnail_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mImageHeight:I

    .line 65
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 68
    iget v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mTileSpacing:I

    int-to-float v2, v2

    invoke-static {v4, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mTileSpacing:I

    .line 69
    iget v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mTileSize:I

    int-to-float v2, v2

    invoke-static {v4, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mTileSize:I

    .line 71
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 72
    return-void
.end method

.method public static final declared-synchronized getUniqueRequestCode()I
    .locals 4

    .prologue
    .line 193
    const-class v1, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;

    monitor-enter v1

    :try_start_0
    sget v0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->REQUEST_CODE:I

    sget v2, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->REQUEST_CODE_NEW_SEED:I

    if-ne v0, v2, :cond_0

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v0, v2

    sput v0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->REQUEST_CODE:I

    .line 197
    :cond_0
    sget v0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->REQUEST_CODE:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->REQUEST_CODE:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract buildRemoteViews()Landroid/widget/RemoteViews;
.end method

.method protected getArticle(I)Lbbc/mobile/news/model/Article;
    .locals 1
    .parameter "index"

    .prologue
    .line 118
    iget-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getArticleActivityIntent(Landroid/content/Context;Lbbc/mobile/news/model/Category;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"
    .parameter "category"
    .parameter "articleId"

    .prologue
    .line 173
    .line 174
    invoke-static {}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getUniqueRequestCode()I

    move-result v0

    .line 175
    invoke-virtual {p2}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, p3, v2}, Lbbc/mobile/news/util/IntentFactory;->getHomeScreenIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 176
    const/high16 v2, 0x1000

    .line 172
    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected getBlackIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    .line 167
    invoke-static {}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getUniqueRequestCode()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x1000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected getCategory()Lbbc/mobile/news/model/Category;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mCategory:Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorRemoteViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .locals 5
    .parameter "message"
    .parameter "widgetId"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 281
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getLayoutId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 283
    .local v0, errorView:Landroid/widget/RemoteViews;
    sget v1, Lbbc/mobile/news/R$id;->widgetErrorView:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 284
    sget v1, Lbbc/mobile/news/R$id;->widgetArticlesContainer:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 285
    sget v1, Lbbc/mobile/news/R$id;->widgetErrorText:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 287
    sget v1, Lbbc/mobile/news/R$id;->widgetContainer:I

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 288
    sget v1, Lbbc/mobile/news/R$id;->widgetRefreshButton:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 290
    sget v1, Lbbc/mobile/news/R$id;->widgetRefreshButton:I

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getRefreshPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 292
    return-object v0
.end method

.method protected getHomeScreenActivityIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .parameter "context"

    .prologue
    const/high16 v4, 0x1000

    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lbbc/mobile/news/util/GlobalSettings;->isUk()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bbc.mobile.news.uk.HomeUkActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :goto_0
    sget v2, Lbbc/mobile/news/R$string;->bundle_key_id_loaded_from_widget:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 156
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    const-string v2, "FROM"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    invoke-static {}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getUniqueRequestCode()I

    move-result v2

    invoke-static {p1, v2, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 162
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    return-object v1

    .line 151
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bbc.mobile.news.ww.HomeWwActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mImageWidth:I

    return v0
.end method

.method protected abstract getLayoutId()I
.end method

.method public abstract getLoadingRemoteViews(I)Landroid/widget/RemoteViews;
.end method

.method protected getPage()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mPage:I

    return v0
.end method

.method protected getPageChangeIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"
    .parameter "nextOrPreviousIndex"
    .parameter "widgetId"

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbbc/mobile/news/widget/LargeWidgetProvider;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bbc.mobile.news.widget.WIDGET_PAGE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    sget v1, Lbbc/mobile/news/R$string;->bundle_key_service_message:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    sget v1, Lbbc/mobile/news/R$string;->bundle_key_widget_page_change:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    sget v1, Lbbc/mobile/news/R$string;->bundle_key_widget_id:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getUniqueRequestCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method protected getPageCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getArticleCount()I

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getPaginationBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 210
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getPage()I

    move-result v0

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getPageCount()I

    move-result v1

    iget v2, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mTileSize:I

    iget v3, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mTileSpacing:I

    iget v4, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mSelectedColour:I

    iget v5, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mNonSelectedColor:I

    invoke-static/range {v0 .. v5}, Lbbc/mobile/news/widget/PaginationBitmap;->create(IIIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getRefreshPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter "context"
    .parameter "widgetId"

    .prologue
    const/4 v3, 0x0

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lbbc/mobile/news/widget/LargeWidgetProvider;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p2, v1, v3

    .line 138
    .local v1, widgetIds:[I
    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v2, "appWidgetIds"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 141
    invoke-static {}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getUniqueRequestCode()I

    move-result v2

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method protected getWidgetId()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mWidgetId:I

    return v0
.end method

.method protected hasCategory()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setArticleView(Landroid/widget/RemoteViews;Lbbc/mobile/news/model/Article;III)Landroid/widget/RemoteViews;
    .locals 5
    .parameter "remoteView"
    .parameter "article"
    .parameter "viewId"
    .parameter "headlineId"
    .parameter "imageId"

    .prologue
    .line 226
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v0

    .line 227
    .local v0, category:Lbbc/mobile/news/model/Category;
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v0, v4}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getArticleActivityIntent(Landroid/content/Context;Lbbc/mobile/news/model/Category;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 228
    .local v1, intent:Landroid/app/PendingIntent;
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getThumbnail()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, thumbnail:Ljava/lang/String;
    invoke-virtual {p0, p1, v2, p5}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->setImageBitmap(Landroid/widget/RemoteViews;Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 231
    invoke-virtual {p2}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p1, p3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 234
    return-object p1
.end method

.method public setCategory(Lbbc/mobile/news/model/Category;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 88
    iput-object p1, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mCategory:Lbbc/mobile/news/model/Category;

    .line 89
    return-void
.end method

.method public setImageBitmap(Landroid/widget/RemoteViews;Ljava/lang/String;I)Landroid/widget/RemoteViews;
    .locals 6
    .parameter "remoteView"
    .parameter "thumbnail"
    .parameter "imageId"

    .prologue
    .line 297
    if-eqz p2, :cond_2

    .line 298
    invoke-static {p2}, Lbbc/mobile/news/helper/StringUtils;->toURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 300
    .local v2, uri:Ljava/net/URI;
    new-instance v3, Lbbc/mobile/news/webclient/WebClient;

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lbbc/mobile/news/webclient/WebClient;-><init>(Ljava/lang/String;I)V

    .line 301
    .local v3, webClient:Lbbc/mobile/news/webclient/WebClient;
    invoke-virtual {v3}, Lbbc/mobile/news/webclient/WebClient;->getFile()Ljava/io/File;

    move-result-object v1

    .line 302
    .local v1, imageFile:Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 305
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getImageWidth()I

    move-result v4

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getImageHeight()I

    move-result v5

    invoke-static {v1, v4, v5}, Lbbc/mobile/news/util/ImageUtils;->getSizedBitmapFromDisk(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 307
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p1, p3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 326
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #imageFile:Ljava/io/File;
    .end local v2           #uri:Ljava/net/URI;
    .end local v3           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :goto_0
    return-object p1

    .line 313
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #imageFile:Ljava/io/File;
    .restart local v2       #uri:Ljava/net/URI;
    .restart local v3       #webClient:Lbbc/mobile/news/webclient/WebClient;
    :cond_0
    sget v4, Lbbc/mobile/news/R$drawable;->thumbnail_placeholder:I

    invoke-virtual {p1, p3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 318
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    sget v4, Lbbc/mobile/news/R$drawable;->thumbnail_placeholder:I

    invoke-virtual {p1, p3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 323
    .end local v1           #imageFile:Ljava/io/File;
    .end local v2           #uri:Ljava/net/URI;
    .end local v3           #webClient:Lbbc/mobile/news/webclient/WebClient;
    :cond_2
    sget v4, Lbbc/mobile/news/R$drawable;->thumbnail_placeholder:I

    invoke-virtual {p1, p3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method public setPage(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 93
    iput p1, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mPage:I

    .line 94
    return-void
.end method

.method protected setPageArrows(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 6
    .parameter "remoteView"

    .prologue
    const/4 v5, -0x1

    .line 239
    const/4 v1, -0x1

    .line 240
    .local v1, previousPageIndex:I
    const/4 v0, -0x1

    .line 242
    .local v0, nextPageIndex:I
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getPage()I

    move-result v3

    if-ltz v3, :cond_0

    .line 243
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getPage()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 245
    :cond_0
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getPage()I

    move-result v3

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 246
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getPage()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 250
    :cond_1
    if-gt v1, v5, :cond_2

    .line 251
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getPageCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 253
    .local v2, rappedPageIndex:I
    if-ltz v2, :cond_4

    .line 254
    move v1, v2

    .line 259
    .end local v2           #rappedPageIndex:I
    :cond_2
    :goto_0
    if-ne v0, v5, :cond_3

    .line 260
    const/4 v0, 0x0

    .line 264
    :cond_3
    sget v3, Lbbc/mobile/news/R$id;->widgetNextButton:I

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 265
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getWidgetId()I

    move-result v5

    .line 264
    invoke-virtual {p0, v4, v0, v5}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getPageChangeIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 267
    sget v3, Lbbc/mobile/news/R$id;->widgetPreviousButton:I

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 268
    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getWidgetId()I

    move-result v5

    .line 267
    invoke-virtual {p0, v4, v1, v5}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getPageChangeIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 275
    return-object p1

    .line 256
    .restart local v2       #rappedPageIndex:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setWidgetHeader(Landroid/widget/RemoteViews;Ljava/lang/String;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "remoteView"
    .parameter "title"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->setPageArrows(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 216
    sget v0, Lbbc/mobile/news/R$id;->title:I

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 217
    sget v0, Lbbc/mobile/news/R$id;->widget_pagination:I

    const-string v1, "setImageBitmap"

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getPaginationBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 218
    sget v0, Lbbc/mobile/news/R$id;->widgetRefreshButton:I

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getWidgetId()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getRefreshPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 219
    sget v0, Lbbc/mobile/news/R$id;->widgetHomeButton:I

    invoke-virtual {p0}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->getHomeScreenActivityIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 221
    return-object p1
.end method

.method public setWidgetId(I)V
    .locals 0
    .parameter "widgetId"

    .prologue
    .line 84
    iput p1, p0, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV2;->mWidgetId:I

    .line 85
    return-void
.end method

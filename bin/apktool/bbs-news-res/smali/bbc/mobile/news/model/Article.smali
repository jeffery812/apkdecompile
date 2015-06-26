.class public Lbbc/mobile/news/model/Article;
.super Ljava/lang/Object;
.source "Article.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ARTICLE_EXTRA:Ljava/lang/String; = "article"

.field public static final AUDIO_AV_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = null

.field public static final TEXT_AV_TYPE:I = 0x0

.field public static final VIDEO_AV_TYPE:I = 0x2

.field private static final serialVersionUID:J = -0x2be77c3c9c091595L


# instance fields
.field private mAVType:I

.field private mCategory:Lbbc/mobile/news/model/Category;

.field private mContent:Ljava/lang/String;

.field private mContentHtml:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mInStoryVideoUrl:Ljava/lang/String;

.field private mIndirectUrl:Z

.field private mLink:Ljava/lang/String;

.field private mLinkURL:Ljava/net/URL;

.field private mOriginalCategory:Ljava/lang/String;

.field private mPosterUrl:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mThumbnail:Ljava/lang/String;

.field private mThumbnailURL:Ljava/net/URL;

.field private mTitle:Ljava/lang/String;

.field private mUpdated:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lbbc/mobile/news/model/Article;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/model/Article;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/model/Article;->mAVType:I

    .line 23
    return-void
.end method

.method public static getArticleFontSize()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 193
    sget v2, Lbbc/mobile/news/R$dimen;->article_body_default_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArticlePaddingLeft()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lbbc/mobile/news/R$dimen;->article_padding_left:I

    invoke-static {v1}, Lbbc/mobile/news/model/Article;->getDimensionAsScalingPixelsForWebView(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArticlePaddingRight()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lbbc/mobile/news/R$dimen;->article_padding_right:I

    invoke-static {v1}, Lbbc/mobile/news/model/Article;->getDimensionAsScalingPixelsForWebView(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAsUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .parameter "url"

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 140
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lbbc/mobile/news/model/Article;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception Caught: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbbc/mobile/news/helper/BBCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCategoryBarHeight()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lbbc/mobile/news/R$dimen;->category_bar_height:I

    invoke-static {v1}, Lbbc/mobile/news/model/Article;->getDimensionAsScalingPixelsForWebView(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "px"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDimensionAsScalingPixelsForWebView(I)I
    .locals 3
    .parameter "dimenResId"

    .prologue
    .line 213
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 214
    .local v0, tv:Landroid/util/TypedValue;
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 215
    iget v1, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 336
    if-nez p1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v1

    .line 340
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 341
    goto :goto_0

    .line 344
    :cond_2
    instance-of v3, p1, Lbbc/mobile/news/model/Article;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 348
    check-cast v0, Lbbc/mobile/news/model/Article;

    .line 349
    .local v0, a:Lbbc/mobile/news/model/Article;
    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_3

    move v1, v2

    .line 350
    goto :goto_0

    .line 353
    :cond_3
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->isAudioArticle()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->isAudioArticle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->hasRealAudioUrl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getRealAudioUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getRealAudioUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 357
    goto :goto_0
.end method

.method public getAVType()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lbbc/mobile/news/model/Article;->mAVType:I

    return v0
.end method

.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Lbbc/mobile/news/model/Category;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mCategory:Lbbc/mobile/news/model/Category;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mOriginalCategory:Ljava/lang/String;

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getContentHTML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mContentHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getDate(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "withZoneOffset"

    .prologue
    .line 225
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mUpdated:Ljava/util/Calendar;

    invoke-static {p1, v0, p2}, Lbbc/mobile/news/helper/DateUtils;->getHumanReadableUpdatedTime(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mUpdated:Ljava/util/Calendar;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getInStoryVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mInStoryVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkAsUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mLinkURL:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mLink:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbbc/mobile/news/model/Article;->getAsUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mLinkURL:Ljava/net/URL;

    .line 85
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mLinkURL:Ljava/net/URL;

    return-object v0
.end method

.method public getOriginalCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mOriginalCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mPosterUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRealAudioUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Lbbc/mobile/news/cache/AudioUrlCache;->getInstance()Lbbc/mobile/news/cache/AudioUrlCache;

    move-result-object v0

    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getAudioUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/cache/AudioUrlCache;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailAsUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mThumbnailURL:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mThumbnail:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbbc/mobile/news/model/Article;->getAsUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mThumbnailURL:Ljava/net/URL;

    .line 107
    :cond_0
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mThumbnailURL:Ljava/net/URL;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mUpdated:Ljava/util/Calendar;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public hasInStoryVideo()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mInStoryVideoUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasParentCategory()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRealAudioUrl()Z
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Lbbc/mobile/news/cache/AudioUrlCache;->getInstance()Lbbc/mobile/news/cache/AudioUrlCache;

    move-result-object v0

    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getAudioUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbc/mobile/news/cache/AudioUrlCache;->hasFeed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 328
    const/16 v0, 0x1f

    .line 329
    .local v0, prime:I
    const/4 v1, 0x1

    .line 330
    .local v1, result:I
    iget-object v2, p0, Lbbc/mobile/news/model/Article;->mId:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 331
    return v1

    .line 330
    :cond_0
    iget-object v2, p0, Lbbc/mobile/news/model/Article;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isAVArticle()Z
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lbbc/mobile/news/model/Article;->mAVType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAudioArticle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 374
    iget v1, p0, Lbbc/mobile/news/model/Article;->mAVType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIndirectUrl()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lbbc/mobile/news/model/Article;->mIndirectUrl:Z

    return v0
.end method

.method public isVideoArticle()Z
    .locals 2

    .prologue
    .line 378
    iget v0, p0, Lbbc/mobile/news/model/Article;->mAVType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAVType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 286
    iput p1, p0, Lbbc/mobile/news/model/Article;->mAVType:I

    .line 287
    return-void
.end method

.method public setAudioUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 239
    const/4 v0, 0x1

    iput v0, p0, Lbbc/mobile/news/model/Article;->mAVType:I

    .line 240
    iput-object p1, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    invoke-static {v0}, Lbbc/mobile/news/helper/LinkGenerator;->fixWSAVMediaLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/LinkGenerator;->setConnectionType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mLink:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setCategory(Lbbc/mobile/news/model/Category;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 111
    iput-object p1, p0, Lbbc/mobile/news/model/Article;->mCategory:Lbbc/mobile/news/model/Category;

    .line 112
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 5
    .parameter "content"

    .prologue
    .line 167
    iget v3, p0, Lbbc/mobile/news/model/Article;->mAVType:I

    if-nez v3, :cond_0

    .line 168
    iput-object p1, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    .line 169
    iget-object v3, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    invoke-static {v3}, Lbbc/mobile/news/helper/LinkGenerator;->fixContentImageLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    .line 170
    iget-object v3, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    invoke-static {v3}, Lbbc/mobile/news/helper/LinkGenerator;->fixContentVideoLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    .line 173
    :cond_0
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 174
    .local v0, context:Landroid/content/Context;
    sget-object v3, Lbbc/mobile/news/helper/NewsServiceConstants;->USER_AGENT:Lbbc/mobile/news/helper/NewsServiceConstants;

    invoke-static {v3}, Lbbc/mobile/news/init/DI;->get(Lbbc/mobile/news/helper/NewsServiceConstants;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbbc/mobile/news/helper/UserAgent;

    invoke-virtual {v3, v0}, Lbbc/mobile/news/helper/UserAgent;->readAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, userAgent:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v1, templateParams:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "{{font-size}}"

    invoke-static {}, Lbbc/mobile/news/model/Article;->getArticleFontSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v3, "{{categorybar-height}}"

    invoke-static {}, Lbbc/mobile/news/model/Article;->getCategoryBarHeight()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v3, "{{padding-left}}"

    invoke-static {}, Lbbc/mobile/news/model/Article;->getArticlePaddingLeft()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v3, "{{padding-right}}"

    invoke-static {}, Lbbc/mobile/news/model/Article;->getArticlePaddingRight()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v3, "{{user-agent}}"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v3, "{{title}}"

    invoke-virtual {p0}, Lbbc/mobile/news/model/Article;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v3, "{{date}}"

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lbbc/mobile/news/model/Article;->getDate(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v3, "{{content}}"

    iget-object v4, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v3, "{{footer}}"

    invoke-static {}, Lbbc/mobile/news/util/CopyrightHelper;->getInstance()Lbbc/mobile/news/util/CopyrightHelper;

    move-result-object v4

    invoke-virtual {v4}, Lbbc/mobile/news/util/CopyrightHelper;->getCopyrightText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v0}, Lbbc/mobile/news/helper/TemplateHelperV2;->getInstance(Landroid/content/Context;)Lbbc/mobile/news/helper/TemplateHelperV2;

    move-result-object v3

    invoke-virtual {v3, v1}, Lbbc/mobile/news/helper/TemplateHelperV2;->buildArticleContent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbbc/mobile/news/model/Article;->mContentHtml:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 57
    invoke-static {p1}, Lbbc/mobile/news/helper/LinkGenerator;->fixArticleIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setIndirectUrl(Z)V
    .locals 0
    .parameter "indirectUrl"

    .prologue
    .line 270
    iput-boolean p1, p0, Lbbc/mobile/news/model/Article;->mIndirectUrl:Z

    .line 271
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 1
    .parameter "link"

    .prologue
    .line 73
    iput-object p1, p0, Lbbc/mobile/news/model/Article;->mLink:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mLinkURL:Ljava/net/URL;

    .line 75
    return-void
.end method

.method public setOriginalCategoryName(Ljava/lang/String;)V
    .locals 0
    .parameter "oridginalCategoryName"

    .prologue
    .line 123
    iput-object p1, p0, Lbbc/mobile/news/model/Article;->mOriginalCategory:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPosterUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "mPosterUrl"

    .prologue
    .line 306
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$string;->device_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, deviceType:Ljava/lang/String;
    const-string v1, "%7bdevice%7d"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    iput-object p1, p0, Lbbc/mobile/news/model/Article;->mPosterUrl:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 159
    iput-object p1, p0, Lbbc/mobile/news/model/Article;->mSummary:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 1
    .parameter "thumbnail"

    .prologue
    .line 90
    const-string v0, "bbcimage://urn-news"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1}, Lbbc/mobile/news/helper/LinkGenerator;->fixWSAVImageLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mThumbnail:Ljava/lang/String;

    .line 95
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mThumbnailURL:Ljava/net/URL;

    .line 96
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lbbc/mobile/news/helper/LinkGenerator;->fixImageScheme(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mThumbnail:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 151
    iput-object p1, p0, Lbbc/mobile/news/model/Article;->mTitle:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setUpdated(Ljava/util/Calendar;)V
    .locals 0
    .parameter "updated"

    .prologue
    .line 69
    iput-object p1, p0, Lbbc/mobile/news/model/Article;->mUpdated:Ljava/util/Calendar;

    .line 70
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 247
    const/4 v0, 0x2

    iput v0, p0, Lbbc/mobile/news/model/Article;->mAVType:I

    .line 248
    invoke-static {p1}, Lbbc/mobile/news/helper/LinkGenerator;->fixWSAVMediaLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mContent:Ljava/lang/String;

    iput-object v0, p0, Lbbc/mobile/news/model/Article;->mLink:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lbbc/mobile/news/model/Article;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.class public Lbbc/mobile/news/model/Category;
.super Lbbc/mobile/news/model/BaseModel;
.source "Category.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CATEGORY_EXTRA:Ljava/lang/String; = "category"

.field public static final TAG:Ljava/lang/String; = null

.field public static final UPDATE_FLAG_FAILED:I = 0x2

.field public static final UPDATE_FLAG_FETCHING:I = 0x3

.field public static final UPDATE_FLAG_OK:I = 0x0

.field public static final UPDATE_FLAG_OLD:I = 0x1

.field private static final serialVersionUID:J = 0x2861710106ffcca4L


# instance fields
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

.field private mAuthor:Ljava/lang/String;

.field private transient mFeed_New:Lbbc/mobile/news/model/Feed;

.field private mId:I

.field private mLastUpdated:Ljava/util/Calendar;

.field private mLogoUrl:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPreviouslyUpdated:Ljava/util/Calendar;

.field private mUpdateFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lbbc/mobile/news/model/Category;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/model/Category;->TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lbbc/mobile/news/model/BaseModel;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lbbc/mobile/news/model/Category;->mUpdateFlag:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/model/Category;->mLogoUrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    invoke-direct {p0}, Lbbc/mobile/news/model/BaseModel;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lbbc/mobile/news/model/Category;->mUpdateFlag:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/model/Category;->mLogoUrl:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Lbbc/mobile/news/model/Category;->setName(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static final updateFlagToString(I)Ljava/lang/String;
    .locals 1
    .parameter "flag"

    .prologue
    .line 263
    packed-switch p0, :pswitch_data_0

    .line 270
    const-string v0, "UPDATE_FLAG_UNKNOWN"

    :goto_0
    return-object v0

    .line 264
    :pswitch_0
    const-string v0, "UPDATE_FLAG_OK"

    goto :goto_0

    .line 265
    :pswitch_1
    const-string v0, "UPDATE_FLAG_OLD"

    goto :goto_0

    .line 266
    :pswitch_2
    const-string v0, "UPDATE_FLAG_FAILED"

    goto :goto_0

    .line 267
    :pswitch_3
    const-string v0, "UPDATE_FLAG_FETCHING"

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public varargs addArticles([Lbbc/mobile/news/model/Article;)V
    .locals 3
    .parameter "articles"

    .prologue
    .line 87
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 93
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v1

    if-nez v1, :cond_1

    .line 90
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lbbc/mobile/news/model/Article;->setCategory(Lbbc/mobile/news/model/Category;)V

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    if-nez p1, :cond_1

    .line 258
    :cond_0
    :goto_0
    return v1

    .line 242
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 243
    goto :goto_0

    .line 246
    :cond_2
    instance-of v3, p1, Lbbc/mobile/news/model/Category;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 249
    check-cast v0, Lbbc/mobile/news/model/Category;

    .line 251
    .local v0, c:Lbbc/mobile/news/model/Category;
    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 255
    invoke-virtual {v0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 256
    goto :goto_0
.end method

.method public getArticle(I)Lbbc/mobile/news/model/Article;
    .locals 1
    .parameter "index"

    .prologue
    .line 128
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Article;

    .line 130
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArticle(Ljava/lang/String;)Lbbc/mobile/news/model/Article;
    .locals 2
    .parameter "articleID"

    .prologue
    const/4 v1, 0x0

    .line 105
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v1

    .line 107
    :cond_1
    invoke-virtual {p0, p1}, Lbbc/mobile/news/model/Category;->getArticleIndex(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lbbc/mobile/news/model/Category;->getArticle(I)Lbbc/mobile/news/model/Article;

    move-result-object v1

    goto :goto_0
.end method

.method public getArticleCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getArticleIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "articleID"

    .prologue
    .line 117
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 123
    const/4 v0, -0x1

    .end local v0           #x:I
    :cond_0
    return v0

    .line 118
    .restart local v0       #x:I
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbbc/mobile/news/model/Article;

    invoke-virtual {v1}, Lbbc/mobile/news/model/Article;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getArticles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Article;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getFeed(Landroid/content/Context;)Lbbc/mobile/news/model/Feed;
    .locals 2
    .parameter "context"

    .prologue
    .line 69
    invoke-static {}, Lbbc/mobile/news/cache/FeedCache;->getInstance()Lbbc/mobile/news/cache/FeedCache;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/cache/FeedCache;->get(Ljava/lang/String;)Lbbc/mobile/news/model/Feed;

    move-result-object v0

    return-object v0
.end method

.method public getFeed_New()Lbbc/mobile/news/model/Feed;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mFeed_New:Lbbc/mobile/news/model/Feed;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lbbc/mobile/news/model/Category;->mId:I

    return v0
.end method

.method public getLastUpdatedDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mLastUpdated:Ljava/util/Calendar;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFlag()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lbbc/mobile/news/model/Category;->mUpdateFlag:I

    return v0
.end method

.method public hasArticles()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFeed(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    invoke-static {}, Lbbc/mobile/news/cache/FeedCache;->getInstance()Lbbc/mobile/news/cache/FeedCache;

    move-result-object v0

    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbbc/mobile/news/cache/FeedCache;->hasFeed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasLastUpdatedDate()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mLastUpdated:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 179
    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mPreviouslyUpdated:Ljava/util/Calendar;

    if-nez v1, :cond_1

    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mLastUpdated:Ljava/util/Calendar;

    if-eqz v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mPreviouslyUpdated:Ljava/util/Calendar;

    if-nez v1, :cond_2

    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mLastUpdated:Ljava/util/Calendar;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :cond_2
    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mPreviouslyUpdated:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mLastUpdated:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 182
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mPreviouslyUpdated:Ljava/util/Calendar;

    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mLastUpdated:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 230
    const/16 v0, 0x1f

    .line 231
    .local v0, prime:I
    const/4 v1, 0x1

    .line 232
    .local v1, result:I
    iget-object v2, p0, Lbbc/mobile/news/model/Category;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 233
    return v1

    .line 232
    :cond_0
    iget-object v2, p0, Lbbc/mobile/news/model/Category;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public setArticles(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbbc/mobile/news/model/Article;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, articles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lbbc/mobile/news/model/Article;>;"
    iput-object p1, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    .line 79
    iget-object v1, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    return-void

    .line 79
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc/mobile/news/model/Article;

    .line 80
    .local v0, article:Lbbc/mobile/news/model/Article;
    invoke-virtual {v0}, Lbbc/mobile/news/model/Article;->getCategory()Lbbc/mobile/news/model/Category;

    move-result-object v2

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {v0, p0}, Lbbc/mobile/news/model/Article;->setCategory(Lbbc/mobile/news/model/Category;)V

    goto :goto_0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .parameter "author"

    .prologue
    .line 138
    iput-object p1, p0, Lbbc/mobile/news/model/Category;->mAuthor:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setFeed_New(Lbbc/mobile/news/model/Feed;)V
    .locals 0
    .parameter "feed"

    .prologue
    .line 53
    iput-object p1, p0, Lbbc/mobile/news/model/Category;->mFeed_New:Lbbc/mobile/news/model/Feed;

    .line 54
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 146
    iput p1, p0, Lbbc/mobile/news/model/Category;->mId:I

    .line 147
    return-void
.end method

.method public setLastUpdatedDate(Ljava/util/Calendar;)V
    .locals 0
    .parameter "lastUpdated"

    .prologue
    .line 154
    iput-object p1, p0, Lbbc/mobile/news/model/Category;->mLastUpdated:Ljava/util/Calendar;

    .line 155
    return-void
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "mLogoUrl"

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-static {}, Lbbc/mobile/news/init/DI;->getAsApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbbc/mobile/news/R$string;->device_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, deviceType:Ljava/lang/String;
    const-string v1, "%7bdevice%7d"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 213
    iput-object p1, p0, Lbbc/mobile/news/model/Category;->mLogoUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "name"

    .prologue
    .line 45
    iput-object p1, p0, Lbbc/mobile/news/model/Category;->mName:Ljava/lang/String;

    return-object p1
.end method

.method public setUpdateFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 189
    iput p1, p0, Lbbc/mobile/news/model/Category;->mUpdateFlag:I

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "name not set"

    goto :goto_0
.end method

.method public update(Lbbc/mobile/news/model/Category;)Lbbc/mobile/news/model/Category;
    .locals 1
    .parameter "category"

    .prologue
    .line 167
    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getAuthor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Category;->mAuthor:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Category;->mName:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getId()I

    move-result v0

    iput v0, p0, Lbbc/mobile/news/model/Category;->mId:I

    .line 170
    iget-object v0, p0, Lbbc/mobile/news/model/Category;->mLastUpdated:Ljava/util/Calendar;

    iput-object v0, p0, Lbbc/mobile/news/model/Category;->mPreviouslyUpdated:Ljava/util/Calendar;

    .line 171
    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getLastUpdatedDate()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Category;->mLastUpdated:Ljava/util/Calendar;

    .line 172
    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getArticles()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Category;->mArticles:Ljava/util/ArrayList;

    .line 173
    invoke-virtual {p1}, Lbbc/mobile/news/model/Category;->getFeed_New()Lbbc/mobile/news/model/Feed;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Category;->mFeed_New:Lbbc/mobile/news/model/Feed;

    .line 174
    return-object p0
.end method

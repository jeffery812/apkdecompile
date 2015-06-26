.class public Lbbc/mobile/news/handler/CategoryHandler;
.super Lbbc/mobile/news/handler/BaseHandler;
.source "CategoryHandler.java"


# static fields
.field private static final AUDIO_TAG:Ljava/lang/String; = "audio"

.field private static final CATEGORY_TAG:Ljava/lang/String; = "category"

.field private static final CONTENT_TAG:Ljava/lang/String; = "content"

.field private static final ENTRY_TAG:Ljava/lang/String; = "entry"

.field private static final FEED_TAG:Ljava/lang/String; = "feed"

.field private static final HREF_ATTRIB:Ljava/lang/String; = "href"

.field private static final ID_TAG:Ljava/lang/String; = "id"

.field private static final LINK_TAG:Ljava/lang/String; = "link"

.field private static final MEDIUM_ATTRIB:Ljava/lang/String; = "medium"

.field private static final POSTER_TAG:Ljava/lang/String; = "poster"

.field private static final SUMMARY_TAG:Ljava/lang/String; = "summary"

.field public static final TAG:Ljava/lang/String; = null

.field private static final TERM_ATTRIB:Ljava/lang/String; = "term"

.field private static final THUMBNAIL_TAG:Ljava/lang/String; = "thumbnail"

.field private static final TITLE_TAG:Ljava/lang/String; = "title"

.field private static final TYPE_TAG:Ljava/lang/String; = "type"

.field private static final UPDATED_TAG:Ljava/lang/String; = "updated"

.field private static final URL_ATTRIB:Ljava/lang/String; = "url"

.field private static final VIDEO_TAG:Ljava/lang/String; = "video"


# instance fields
.field private mCategory:Lbbc/mobile/news/model/Category;

.field private mCurrentArticle:Lbbc/mobile/news/model/Article;

.field private mInCategoryTag:Z

.field private mInContentTag:Z

.field private mInEntryTag:Z

.field private mInFeedTag:Z

.field private mInIdTag:Z

.field private mInLinkTag:Z

.field private mInPosterTag:Z

.field private mInSummaryTag:Z

.field private mInThumnailTag:Z

.field private mInTitleTag:Z

.field private mInTypeTag:Z

.field private mInUpdatedTag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbbc/mobile/news/handler/CategoryHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbbc/mobile/news/handler/CategoryHandler;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lbbc/mobile/news/handler/BaseHandler;-><init>()V

    .line 35
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInThumnailTag:Z

    .line 36
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInCategoryTag:Z

    .line 37
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInSummaryTag:Z

    .line 38
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInUpdatedTag:Z

    .line 39
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInContentTag:Z

    .line 40
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInEntryTag:Z

    .line 41
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInTitleTag:Z

    .line 42
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInTypeTag:Z

    .line 43
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInFeedTag:Z

    .line 44
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInLinkTag:Z

    .line 45
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInIdTag:Z

    .line 46
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInPosterTag:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Lbbc/mobile/news/model/Category;)V
    .locals 1
    .parameter "category"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lbbc/mobile/news/handler/BaseHandler;-><init>()V

    .line 35
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInThumnailTag:Z

    .line 36
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInCategoryTag:Z

    .line 37
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInSummaryTag:Z

    .line 38
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInUpdatedTag:Z

    .line 39
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInContentTag:Z

    .line 40
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInEntryTag:Z

    .line 41
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInTitleTag:Z

    .line 42
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInTypeTag:Z

    .line 43
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInFeedTag:Z

    .line 44
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInLinkTag:Z

    .line 45
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInIdTag:Z

    .line 46
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInPosterTag:Z

    .line 57
    iput-object p1, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCategory:Lbbc/mobile/news/model/Category;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lbbc/mobile/news/handler/BaseHandler;-><init>()V

    .line 35
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInThumnailTag:Z

    .line 36
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInCategoryTag:Z

    .line 37
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInSummaryTag:Z

    .line 38
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInUpdatedTag:Z

    .line 39
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInContentTag:Z

    .line 40
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInEntryTag:Z

    .line 41
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInTitleTag:Z

    .line 42
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInTypeTag:Z

    .line 43
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInFeedTag:Z

    .line 44
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInLinkTag:Z

    .line 45
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInIdTag:Z

    .line 46
    iput-boolean v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInPosterTag:Z

    .line 65
    new-instance v0, Lbbc/mobile/news/model/Category;

    invoke-direct {v0}, Lbbc/mobile/news/model/Category;-><init>()V

    iput-object v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCategory:Lbbc/mobile/news/model/Category;

    .line 66
    iget-object v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v0, p1}, Lbbc/mobile/news/model/Category;->setName(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    return-void
.end method

.method private useNodeText()V
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p0}, Lbbc/mobile/news/handler/CategoryHandler;->getNodeText()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, ch:Ljava/lang/String;
    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInEntryTag:Z

    if-eqz v2, :cond_7

    .line 170
    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInThumnailTag:Z

    if-nez v2, :cond_0

    .line 174
    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInSummaryTag:Z

    if-eqz v2, :cond_1

    .line 175
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2, v0}, Lbbc/mobile/news/model/Article;->setSummary(Ljava/lang/String;)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInUpdatedTag:Z

    if-eqz v2, :cond_2

    .line 178
    invoke-static {v0}, Lbbc/mobile/news/helper/DateUtils;->isoDateToCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 179
    .local v1, updated:Ljava/util/Calendar;
    if-eqz v1, :cond_0

    .line 180
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2, v1}, Lbbc/mobile/news/model/Article;->setUpdated(Ljava/util/Calendar;)V

    goto :goto_0

    .line 182
    .end local v1           #updated:Ljava/util/Calendar;
    :cond_2
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInTitleTag:Z

    if-eqz v2, :cond_3

    .line 183
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2, v0}, Lbbc/mobile/news/model/Article;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_3
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInIdTag:Z

    if-eqz v2, :cond_4

    .line 185
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2, v0}, Lbbc/mobile/news/model/Article;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_4
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInContentTag:Z

    if-eqz v2, :cond_5

    .line 187
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2, v0}, Lbbc/mobile/news/model/Article;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_5
    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInTypeTag:Z

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lbbc/mobile/news/model/Article;->setAVType(I)V

    goto :goto_0

    .line 191
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lbbc/mobile/news/model/Article;->setAVType(I)V

    goto :goto_0

    .line 196
    :cond_7
    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInFeedTag:Z

    if-eqz v2, :cond_0

    .line 197
    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInUpdatedTag:Z

    if-eqz v2, :cond_0

    .line 198
    invoke-static {v0}, Lbbc/mobile/news/helper/DateUtils;->isoDateToCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 199
    .restart local v1       #updated:Ljava/util/Calendar;
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCategory:Lbbc/mobile/news/model/Category;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 200
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {v2, v1}, Lbbc/mobile/news/model/Category;->setLastUpdatedDate(Ljava/util/Calendar;)V

    goto :goto_0
.end method


# virtual methods
.method public endDocument()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCategory:Lbbc/mobile/news/model/Category;

    invoke-virtual {p0, v0}, Lbbc/mobile/news/handler/CategoryHandler;->setResult(Lbbc/mobile/news/model/BaseModel;)V

    .line 208
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "name"
    .parameter "qName"

    .prologue
    .line 77
    invoke-direct {p0}, Lbbc/mobile/news/handler/CategoryHandler;->useNodeText()V

    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, p3}, Lbbc/mobile/news/handler/CategoryHandler;->startOrEndElement(Ljava/lang/String;Lorg/xml/sax/Attributes;ZLjava/lang/String;)V

    .line 79
    return-void
.end method

.method public setCategory(Lbbc/mobile/news/model/Category;)V
    .locals 0
    .parameter "category"

    .prologue
    .line 61
    iput-object p1, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCategory:Lbbc/mobile/news/model/Category;

    .line 62
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .parameter "uri"
    .parameter "name"
    .parameter "tag"
    .parameter "attributes"

    .prologue
    .line 71
    invoke-virtual {p0}, Lbbc/mobile/news/handler/CategoryHandler;->clearNodeText()V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p4, v0, p3}, Lbbc/mobile/news/handler/CategoryHandler;->startOrEndElement(Ljava/lang/String;Lorg/xml/sax/Attributes;ZLjava/lang/String;)V

    .line 73
    return-void
.end method

.method public startOrEndElement(Ljava/lang/String;Lorg/xml/sax/Attributes;ZLjava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "attributes"
    .parameter "inTag"
    .parameter "qName"

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 85
    const-string v2, "thumbnail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInThumnailTag:Z

    .line 87
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInThumnailTag:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 88
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    const-string v3, "url"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbc/mobile/news/model/Article;->setThumbnail(Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const-string v2, "summary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInSummaryTag:Z

    goto :goto_0

    .line 95
    :cond_2
    const-string v2, "category"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInCategoryTag:Z

    .line 98
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInCategoryTag:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInEntryTag:Z

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    const-string v3, "term"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbc/mobile/news/model/Article;->setOriginalCategoryName(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_3
    const-string v2, "updated"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInUpdatedTag:Z

    goto :goto_0

    .line 106
    :cond_4
    const-string v2, "content"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 108
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInContentTag:Z

    .line 110
    if-eqz p2, :cond_0

    .line 112
    const-string v2, "medium"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, type:Ljava/lang/String;
    const-string v2, "url"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 117
    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 118
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2, v1}, Lbbc/mobile/news/model/Article;->setVideoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_5
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    invoke-virtual {v2, v1}, Lbbc/mobile/news/model/Article;->setAudioUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v0           #type:Ljava/lang/String;
    .end local v1           #url:Ljava/lang/String;
    :cond_6
    const-string v2, "entry"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 125
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInEntryTag:Z

    .line 126
    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInEntryTag:Z

    if-eqz v2, :cond_7

    .line 127
    new-instance v2, Lbbc/mobile/news/model/Article;

    invoke-direct {v2}, Lbbc/mobile/news/model/Article;-><init>()V

    iput-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    goto/16 :goto_0

    .line 129
    :cond_7
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCategory:Lbbc/mobile/news/model/Category;

    const/4 v3, 0x1

    new-array v3, v3, [Lbbc/mobile/news/model/Article;

    const/4 v4, 0x0

    iget-object v5, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lbbc/mobile/news/model/Category;->addArticles([Lbbc/mobile/news/model/Article;)V

    goto/16 :goto_0

    .line 132
    :cond_8
    const-string v2, "type"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 134
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInTypeTag:Z

    goto/16 :goto_0

    .line 136
    :cond_9
    const-string v2, "title"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 138
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInTitleTag:Z

    goto/16 :goto_0

    .line 140
    :cond_a
    const-string v2, "link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 142
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInLinkTag:Z

    .line 143
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInLinkTag:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 144
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    const-string v3, "href"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbc/mobile/news/model/Article;->setLink(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_b
    const-string v2, "id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 149
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInIdTag:Z

    goto/16 :goto_0

    .line 151
    :cond_c
    const-string v2, "poster"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 153
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInPosterTag:Z

    .line 154
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInPosterTag:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 155
    iget-object v2, p0, Lbbc/mobile/news/handler/CategoryHandler;->mCurrentArticle:Lbbc/mobile/news/model/Article;

    const-string v3, "url"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbbc/mobile/news/model/Article;->setPosterUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_d
    const-string v2, "feed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iput-boolean p3, p0, Lbbc/mobile/news/handler/CategoryHandler;->mInFeedTag:Z

    goto/16 :goto_0
.end method

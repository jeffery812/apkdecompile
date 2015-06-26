.class public Lbbc/mobile/news/model/Feed;
.super Ljava/lang/Object;
.source "Feed.java"


# static fields
.field public static final AV_DIALOG_FEED_ID:I = -0x9

.field public static final CONFIG_NEWS_FEED_ID:I = -0xb

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DEFAULT_FEED_ID:I = 0x1

.field public static final FEED_ID:Ljava/lang/String; = "id"

.field public static final FEED_URI:Ljava/lang/String; = "feed_url"

.field public static final LOGO_URI:Ljava/lang/String; = "logo_url"

.field public static final MOVABLE:Ljava/lang/String; = "movable"

.field protected static final MOVEABLE_FALSE:I = 0x0

.field protected static final MOVEABLE_TRUE:I = 0x1

.field public static final POLICY_FEED_ID:I = -0x8

.field public static final TEXT_FEED_ID:I = -0x7

.field public static final TICKER_NEWS_FEED_ID:I = -0xa

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final VISIBLE:Ljava/lang/String; = "visible"

.field public static final WATCH_AND_LISTEN_FEED_ID:I = 0x12


# instance fields
.field protected mDefault:Z

.field protected mFeedUrl:Ljava/lang/String;

.field protected mId:I

.field protected mIsInternational:Z

.field protected mLogoUrl:Ljava/lang/String;

.field protected mMoveable:I

.field protected mTitle:Ljava/lang/String;

.field protected mVisible:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "id"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v1, p0, Lbbc/mobile/news/model/Feed;->mIsInternational:Z

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lbbc/mobile/news/model/Feed;->mMoveable:I

    .line 34
    iput-boolean v1, p0, Lbbc/mobile/news/model/Feed;->mDefault:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lbbc/mobile/news/model/Feed;->mLogoUrl:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p1, p3, p2}, Lbbc/mobile/news/model/Feed;->initValues(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    invoke-virtual {p0}, Lbbc/mobile/news/model/Feed;->initDefaultOtherValues()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Z)V
    .locals 4
    .parameter "json"
    .parameter "isInternationalFeed"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v2, p0, Lbbc/mobile/news/model/Feed;->mIsInternational:Z

    .line 32
    const/4 v1, 0x1

    iput v1, p0, Lbbc/mobile/news/model/Feed;->mMoveable:I

    .line 34
    iput-boolean v2, p0, Lbbc/mobile/news/model/Feed;->mDefault:Z

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lbbc/mobile/news/model/Feed;->mLogoUrl:Ljava/lang/String;

    .line 44
    :try_start_0
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "feed_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lbbc/mobile/news/model/Feed;->initValues(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    invoke-virtual {p0, p1, p2}, Lbbc/mobile/news/model/Feed;->initOtherJsonValues(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    if-ne p1, p0, :cond_1

    .line 172
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 168
    .restart local p1
    :cond_1
    instance-of v2, p1, Lbbc/mobile/news/model/Feed;

    if-eqz v2, :cond_2

    .line 169
    check-cast p1, Lbbc/mobile/news/model/Feed;

    .end local p1
    iget v2, p1, Lbbc/mobile/news/model/Feed;->mId:I

    iget v3, p0, Lbbc/mobile/news/model/Feed;->mId:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .restart local p1
    :cond_2
    move v0, v1

    .line 172
    goto :goto_0
.end method

.method public getFeedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lbbc/mobile/news/model/Feed;->mFeedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lbbc/mobile/news/model/Feed;->mId:I

    return v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lbbc/mobile/news/model/Feed;->mLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMoveable()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lbbc/mobile/news/model/Feed;->mMoveable:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lbbc/mobile/news/model/Feed;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 156
    const/16 v0, 0x1f

    .line 157
    .local v0, prime:I
    const/4 v1, 0x1

    .line 158
    .local v1, result:I
    iget v2, p0, Lbbc/mobile/news/model/Feed;->mId:I

    add-int/lit8 v1, v2, 0x1f

    .line 159
    return v1
.end method

.method protected initDefaultOtherValues()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbbc/mobile/news/model/Feed;->mDefault:Z

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/model/Feed;->mMoveable:I

    .line 83
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lbbc/mobile/news/model/Feed;->mVisible:Ljava/lang/Boolean;

    .line 84
    return-void
.end method

.method protected initOtherJsonValues(Lorg/json/JSONObject;Z)V
    .locals 3
    .parameter "json"
    .parameter "isInternationalFeed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "logo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "logo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Feed;->mLogoUrl:Ljava/lang/String;

    .line 61
    const-string v0, "logo_url"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getting logo from JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lbbc/mobile/news/model/Feed;->mLogoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbbc/mobile/news/helper/BBCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    const-string v0, "default"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const-string v0, "default"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbbc/mobile/news/model/Feed;->mDefault:Z

    .line 68
    :cond_1
    const-string v0, "movable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    const-string v0, "movable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lbbc/mobile/news/model/Feed;->mMoveable:I

    .line 72
    :cond_2
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 73
    const-string v0, "visible"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Feed;->mVisible:Ljava/lang/Boolean;

    .line 76
    :cond_3
    invoke-virtual {p0, p2}, Lbbc/mobile/news/model/Feed;->setInternational(Z)V

    .line 77
    return-void
.end method

.method public initValues(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "title"
    .parameter "url"
    .parameter "id"

    .prologue
    .line 92
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Feed;->mTitle:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lbbc/mobile/news/model/Feed;->mFeedUrl:Ljava/lang/String;

    .line 94
    iput p3, p0, Lbbc/mobile/news/model/Feed;->mId:I

    .line 95
    return-void
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lbbc/mobile/news/model/Feed;->mDefault:Z

    return v0
.end method

.method public isInternational()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lbbc/mobile/news/model/Feed;->mIsInternational:Z

    return v0
.end method

.method public isMoveable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 122
    iget v1, p0, Lbbc/mobile/news/model/Feed;->mMoveable:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibilitySet()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lbbc/mobile/news/model/Feed;->mVisible:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lbbc/mobile/news/model/Feed;->isVisibilitySet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lbbc/mobile/news/model/Feed;->mVisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWatchAndListen()Z
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lbbc/mobile/news/model/Feed;->mId:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInternational(Z)V
    .locals 0
    .parameter "isInternational"

    .prologue
    .line 88
    iput-boolean p1, p0, Lbbc/mobile/news/model/Feed;->mIsInternational:Z

    .line 89
    return-void
.end method

.method public setMoveable(Z)V
    .locals 1
    .parameter "moveable"

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lbbc/mobile/news/model/Feed;->mMoveable:I

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lbbc/mobile/news/model/Feed;->mMoveable:I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 98
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Feed;->mTitle:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 176
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Feed;->mVisible:Ljava/lang/Boolean;

    .line 177
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 146
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbbc/mobile/news/model/Feed;->mVisible:Ljava/lang/Boolean;

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lbbc/mobile/news/model/Feed;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Title : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbbc/mobile/news/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
